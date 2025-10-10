unit ufrmMDFEcancela;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmDefaultClean, Vcl.StdCtrls,
  ACBrBase, ACBrEnterTab, JvExControls, JvSpeedButton, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, JvgGroupBox, ACBrXmlBase;

type
  TfrmMDFEcancela = class(TfrmDefaultClean)
    updCancelado: TFDQuery;
    JvgGroupBox7: TJvgGroupBox;
    memJustificativa: TMemo;
    procedure btnConfirmarClick(Sender: TObject);
  private
  public
    FXML: String;
    class function Cancela(AXML_MDFE: AnsiString): TModalResult;
  end;

var
  frmMDFEcancela: TfrmMDFEcancela;

implementation

uses
  udtmDefault, udtmMDFE, uclassEMPRESA, pcnConversao;

{$R *.dfm}

procedure TfrmMDFEcancela.btnConfirmarClick(Sender: TObject);
var
  vID, vID_SERIE: Integer;
  DataHoraEvento: TDateTime;
  NumeroLote: Int64;
begin
  if Length(Trim(memJustificativa.Text)) < 15 then
    raise Exception.Create('A justificativa deve ter ao menos 15 caracteres!');

  if Application.MessageBox('Deseja realmente cancelar o MDF-e ?', 'Cancelamento', MB_YESNO) = mrYes then
  begin
    dtmMDFE.Configurar;

    // numero do lote de envio
    DataHoraEvento := NOW;
    NumeroLote := dtmMDFE.tabMDFEID_MDFE.AsInteger; // StrToInt64(FormatDateTime('yymmddhhmm', NOW));

    // carregar o XML do MDFe-OS
    dtmMDFE.ACBrMDFe.Manifestos.Clear;
    dtmMDFE.ACBrMDFe.Manifestos.LoadFromString(FXML);

    // dados do MDFe-OS
    vID := dtmMDFE.ACBrMDFe.Manifestos.Items[0].MDFe.Ide.nMDF;
    vID_SERIE := dtmMDFE.ACBrMDFe.Manifestos.Items[0].MDFe.Ide.serie;

    // Preenchimento do cancelamento
    dtmMDFE.ACBrMDFe.EventoMDFe.Evento.Clear;
    dtmMDFE.ACBrMDFe.EventoMDFe.idLote := NumeroLote;

    with dtmMDFE.ACBrMDFe.EventoMDFe.Evento.Add do
    begin
      infEvento.CNPJCPF := oEmpresa.CNPJ;
      infEvento.dhEvento := DataHoraEvento;
      infEvento.tpEvento := teCancelamento;
      infEvento.chMDFe := dtmMDFE.ACBrMDFe.Manifestos.Items[0].MDFe.procMDFe.chDFe;
      infEvento.detEvento.nProt := dtmMDFE.ACBrMDFe.Manifestos.Items[0].MDFe.procMDFe.nProt;
      infEvento.detEvento.xJust := memJustificativa.Text;
    end;

    // envio do cancelamento
    if dtmMDFE.ACBrMDFe.EnviarEvento(NumeroLote) then
    begin
      with dtmMDFE.ACBrMDFe.WebServices do
      begin

        if EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat <> 135 then
        begin
          raise Exception.CreateFmt('Ocorreu o seguinte erro ao cancelar o MDF-e:' + sLineBreak + 'Código:%d' + sLineBreak +
            'Motivo: %s', [EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat,
            EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo]);
        end;

        try
          updCancelado.ParamByName('ID_EMPRESA').Value := oEmpresa.ID;
          updCancelado.ParamByName('ID_MDFE').Value := vID;
          updCancelado.ParamByName('ID_SERIE').Value := vID_SERIE;
          updCancelado.ParamByName('XML_CANC_DATAHORA').Value := EnvEvento.EventoRetorno.retEvento.Items[0]
            .RetInfEvento.dhRegEvento;
          updCancelado.ParamByName('XML_CANC_PROTOCOLO').Value := EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nProt;
          updCancelado.ParamByName('XML_CANC_STRING').Value := EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.XML;
          updCancelado.ParamByName('XML_STATUS_CODIGO').Value := EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat;
          updCancelado.ParamByName('XML_XMOTIVO').AsAnsiString := '101 - MDF-e canceladoa';
          updCancelado.Prepare;
          updCancelado.ExecSQL;

          dtmMDFE.SalvarEvento(vID, vID_SERIE, NumeroLote, EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.dhRegEvento,
            memJustificativa.Text, 'CANC');

          dtmDefault.cnx_BD.CommitRetaining;

          Application.MessageBox('Cancelamento efetuado!', 'Cancelamento efetuado com sucesso!', MB_ICONINFORMATION);
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
        raise Exception.Create('Ocorreram erros ao tentar efetuar o cancelamento:' + sLineBreak +
        'Lote: ' +IntToStr(EventoRetorno.idLote) + sLineBreak +
        'Ambiente: ' + TipoAmbienteToStr(EventoRetorno.tpAmb) + sLineBreak +
        'Orgao: ' + IntToStr(EventoRetorno.cOrgao) + sLineBreak +
        'Status: ' + IntToStr(EventoRetorno.cStat) + sLineBreak +
        'Motivo: ' + EventoRetorno.xMotivo);
      end;
    end;
  end;
end;

class function TfrmMDFEcancela.Cancela(AXML_MDFE: AnsiString): TModalResult;
begin
  frmMDFEcancela := TfrmMDFEcancela.Create(Nil);
  try
    frmMDFEcancela.FXML := AXML_MDFE;

    Result := frmMDFEcancela.ShowModal;
  finally
    FreeAndNil(frmMDFEcancela);
  end;
end;

end.
