unit ufrmMDFEencerramento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmDefaultClean, Vcl.StdCtrls,
  ACBrBase, ACBrEnterTab, JvExControls, JvSpeedButton, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, JvgGroupBox, JvDBLookup, JvMaskEdit, Vcl.ComCtrls,
  JvExComCtrls, JvDateTimePicker, JvDBDateTimePicker, JvExStdCtrls, JvCombobox,
  JvDBCombobox, Vcl.Mask, JvExMask, JvToolEdit, JvDBControls, ACBrXmlBase;

type
  TfrmMDFEencerramento = class(TfrmDefaultClean)
    JvgGroupBox3: TJvgGroupBox;
    Label21: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label18: TLabel;
    ID_MODELO: TJvMaskEdit;
    updEncerrado: TFDQuery;
    ID_SERIE: TJvMaskEdit;
    ID_MDFE: TJvMaskEdit;
    DATA_HORA: TJvDateTimePicker;
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
  public
    FXML: String;
    Chave: String;
    NumProtocolo: String;
    class function Encerra(AXML_MDFE, Chave, NumProtocolo: AnsiString): TModalResult;
  end;

var
  frmMDFEencerramento: TfrmMDFEencerramento;

implementation

uses
  udtmDefault, udtmMDFE, uclassEMPRESA, pcnConversao;

{$R *.dfm}

procedure TfrmMDFEencerramento.btnConfirmarClick(Sender: TObject);
var
  vID, vID_SERIE: Integer;
  DataHoraEvento: TDateTime;
  NumeroLote: Int64;
begin
  if Application.MessageBox('Deseja realmente efetuar o encerramento do MDF-e ?', 'Encerramento', MB_YESNO) = mrYes then
  begin
    dtmMDFE.Configurar;

    // numero do lote de envio
    DataHoraEvento := NOW;
    NumeroLote := dtmMDFE.tabMDFEID_MDFE.AsInteger; // StrToInt64(FormatDateTime('yymmddhhmm', NOW));

    // carregar o XML do MDFe-OS
    dtmMDFE.ACBrMDFe.Manifestos.Clear;
    dtmMDFE.ACBrMDFe.Manifestos.LoadFromString(FXML);

    // dados do MDF-e
    vID := dtmMDFE.ACBrMDFe.Manifestos.Items[0].MDFe.Ide.nMDF;
    vID_SERIE := dtmMDFE.ACBrMDFe.Manifestos.Items[0].MDFe.Ide.serie;

    // Preenchimento do encerramento
    dtmMDFE.ACBrMDFe.EventoMDFe.Evento.Clear;
    dtmMDFE.ACBrMDFe.EventoMDFe.idLote := NumeroLote;

    with dtmMDFE.ACBrMDFe.EventoMDFe.Evento.New do
    begin
      if dtmMDFE.ACBrMDFe.Manifestos.Items[0].MDFe.procMDFe.nProt = '' then
        dtmMDFE.ACBrMDFe.Manifestos.Items[0].MDFe.procMDFe.nProt := NumProtocolo;

      infEvento.CNPJCPF := oEmpresa.CNPJ;
      infEvento.dhEvento := DataHoraEvento;
      infEvento.tpEvento := teEncerramento;
      // infEvento.chMDFe          := dtmMDFE.ACBrMDFe.Manifestos.Items[0].MDFe.procMDFe.chMDFe;
      infEvento.chMDFe := Chave;
      infEvento.detEvento.nProt := dtmMDFE.ACBrMDFe.Manifestos.Items[0].MDFe.procMDFe.nProt;
      infEvento.detEvento.dtEnc := Date;
      infEvento.detEvento.cUF :=
        StrToInt(Copy(IntToStr(dtmMDFE.ACBrMDFe.Manifestos.Items[0].MDFe.infDoc.infMunDescarga.Items[0].cMunDescarga), 1, 2));
      infEvento.detEvento.cMun := dtmMDFE.ACBrMDFe.Manifestos.Items[0].MDFe.infDoc.infMunDescarga.Items[0].cMunDescarga;
    end;

    // envio do encerramento
    if dtmMDFE.ACBrMDFe.EnviarEvento(NumeroLote) then
    begin
      with dtmMDFE.ACBrMDFe.WebServices do
      begin
        if EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat <> 135 then
        begin
          raise Exception.CreateFmt('Ocorreu o seguinte erro ao encerrar o MDF-e:' + sLineBreak + 'Código:%d' + sLineBreak +
            'Motivo: %s', [EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat,
            EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo]);
        end;

        try
          updEncerrado.ParamByName('ID_EMPRESA').Value := oEmpresa.ID;
          updEncerrado.ParamByName('ID_MDFE').Value := vID;
          updEncerrado.ParamByName('ID_SERIE').Value := vID_SERIE;
          updEncerrado.ParamByName('XML_STATUS_CODIGO').Value := '101';
          // EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat;
          updEncerrado.ParamByName('XML_XMOTIVO').AsAnsiString := '101 - MDF-e Encerrada';
          updEncerrado.Prepare;
          updEncerrado.ExecSQL;

          dtmMDFE.SalvarEvento(vID, vID_SERIE, NumeroLote, EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.dhRegEvento,
            'Encerramento', 'ENC');

          dtmDefault.cnx_BD.CommitRetaining;

          Application.MessageBox('Encerramento efetuado!', 'Encerramento efetuado com sucesso!', MB_ICONINFORMATION);
          FFecharOK := True;

          Self.Close;
          Self.ModalResult := mrOk;
        except
          on E: Exception do
          begin
            dtmDefault.cnx_BD.RollbackRetaining;

            raise Exception.Create('Ocorreram erros ao gravar o evento no banco de dados' + sLineBreak + E.Message);
          end;
        end;
      end;
    end
    else
    begin
      with dtmMDFE.ACBrMDFe.WebServices.EnvEvento do
      begin
        raise Exception.Create('Ocorreram erros ao tentar efetuar o encerramento:' + sLineBreak + 'Lote: ' +
          IntToStr(EventoRetorno.idLote) + sLineBreak + 'Ambiente: ' + TipoAmbienteToStr(EventoRetorno.tpAmb) + sLineBreak +
          'Orgao: ' + IntToStr(EventoRetorno.cOrgao) + sLineBreak + 'Status: ' + IntToStr(EventoRetorno.cStat) + sLineBreak +
          'Motivo: ' + EventoRetorno.xMotivo);
      end;
    end;
  end;
end;

class function TfrmMDFEencerramento.Encerra(AXML_MDFE, Chave, NumProtocolo: AnsiString): TModalResult;
begin
  frmMDFEencerramento := TfrmMDFEencerramento.Create(Nil);
  try
    frmMDFEencerramento.FXML := AXML_MDFE;
    frmMDFEencerramento.NumProtocolo := NumProtocolo;
    frmMDFEencerramento.Chave := Chave;

    Result := frmMDFEencerramento.ShowModal;
  finally
    FreeAndNil(frmMDFEencerramento);
  end;
end;

procedure TfrmMDFEencerramento.FormShow(Sender: TObject);
begin
  // carregar o XML do MDFe-OS
  dtmMDFE.ACBrMDFe.Manifestos.Clear;
  dtmMDFE.ACBrMDFe.Manifestos.LoadFromString(FXML);

  // dados do MDF-e
  ID_MDFE.Text := FormatFloat('000000', dtmMDFE.ACBrMDFe.Manifestos.Items[0].MDFe.Ide.nMDF);
  ID_SERIE.Text := FormatFloat('000', dtmMDFE.ACBrMDFe.Manifestos.Items[0].MDFe.Ide.serie);

  DATA_HORA.DateTime := dtmMDFE.ACBrMDFe.Manifestos.Items[0].MDFe.Ide.dhEmi;
end;

end.
