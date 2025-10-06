unit ufrmMDFEmanutencao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmDefaultConsulta, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  ACBrBase, ACBrEnterTab, Vcl.DBCtrls, JvDBControls, JvLabel, Vcl.Grids,
  Vcl.DBGrids, JvExDBGrids, JvDBGrid, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  JvExMask, JvToolEdit, JvMaskEdit, JvExControls, JvSpeedButton,
  JvExExtCtrls, JvImage, JvExStdCtrls, JvGroupBox,
  Vcl.ComCtrls, JvExComCtrls, JvStatusBar, JvHint, JvCheckBox, Vcl.Buttons;

type
  TfrmMDFEmanutencao = class(TfrmDefaultConsulta)
    btnMDFEenviar: TJvSpeedButton;
    btnMDFEvisualizar: TJvSpeedButton;
    btnMDFEcancelar: TJvSpeedButton;
    btnMDFEimprimir: TJvSpeedButton;
    btnMDFEconsultar: TJvSpeedButton;
    btnMDFEencerrar: TJvSpeedButton;
    btnMDFEpdfEXPORT: TJvSpeedButton;
    btnMDFExmlEXPORT: TJvSpeedButton;
    qryDefaultID_MDFE: TIntegerField;
    qryDefaultID_SERIE: TIntegerField;
    qryDefaultID_SITUACAO: TStringField;
    qryDefaultDATAHORA_EMISSAO: TSQLTimeStampField;
    qryDefaultXML_CHAVE: TStringField;
    qryDefaultXML_STRING: TMemoField;
    qryDefaultXML_STRING_PROTOCOLO: TMemoField;
    qryDefaultXML_CANC_PROTOCOLO: TStringField;
    qryDefaultSITUACAO: TStringField;
    btnSTATUSconsultar: TJvSpeedButton;
    updCancelado: TFDQuery;
    btnNovoDefault: TJvSpeedButton;
    ckInserirDefault: TJvCheckBox;
    btnEmailEnviar: TJvSpeedButton;
    qryDefaultXML_PROTOCOLO: TStringField;
    procedure dtsDefaultDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure btnMDFEenviarClick(Sender: TObject);
    procedure btnMDFEvisualizarClick(Sender: TObject);
    procedure btnMDFEconsultarClick(Sender: TObject);
    procedure btnMDFEcancelarClick(Sender: TObject);
    procedure btnMDFEpdfEXPORTClick(Sender: TObject);
    procedure btnMDFExmlEXPORTClick(Sender: TObject);
    procedure btnSTATUSconsultarClick(Sender: TObject);
    procedure qryDefaultBeforeOpen(DataSet: TDataSet);
    procedure btnMDFEencerrarClick(Sender: TObject);
    procedure btnNovoDefaultClick(Sender: TObject);
    procedure ckInserirDefaultClick(Sender: TObject);
    procedure btnEmailEnviarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
  private
    { Private declarations }
  public

  end;

var
  frmMDFEmanutencao: TfrmMDFEmanutencao;

implementation

uses
  ufrmMDFEcadastro, ufuncoes, uclassEMPRESA, udtmDefault, ufrmMDFEcancela, System.DateUtils,
  uclassMDFE, Vcl.FileCtrl, udtmMDFE, ufrmMDFEencerramento, System.UITypes,
  ufrmDefault, uclassCONFIGini, ufrmENVIARemail, ufrmDefaultCadastro;

{$R *.dfm}

procedure TfrmMDFEmanutencao.btnMDFEconsultarClick(Sender: TObject);
var
  MensagemErro: String;
  MsgMotivoDenegacao: String;
  Status: Integer;
  ChaveMDfe: String;
begin
  dtmMDFE.Configurar;
  dtmMDFE.ACBrMDFe.Manifestos.Clear;

  if Trim(qryDefaultXML_STRING_PROTOCOLO.AsString) <> '' then
  begin
    dtmMDFE.ACBrMDFe.Manifestos.LoadFromString(qryDefaultXML_STRING_PROTOCOLO.AsString, False)
  end
  else
    raise Exception.Create('XML da Manifesto Eletrônico não foi encontrado.');

  dtmMDFE.ACBrMDFe.Consultar;

  Status   := dtmMDFE.ACBrMDFe.WebServices.Consulta.cStat;
  ChaveMDfe := dtmMDFE.ACBrMDFe.WebServices.Consulta.MDFeChave;
  case Status of
    100:
      begin
        dtmMDFE.updEnviado.ParamByName('ID_MDFE').asInteger := qryDefaultID_MDFE.AsInteger;
        dtmMDFE.updEnviado.ParamByName('ID_SERIE').AsInteger := qryDefaultID_SERIE.AsInteger;
        dtmMDFE.updEnviado.ParamByName('ID_EMPRESA').AsInteger := oEmpresa.ID;
        dtmMDFE.updEnviado.ParamByName('XML_CHAVE').AsAnsiString := dtmMDFE.ACBrMDFe.Manifestos.Items[0].MDFe.procMDFe.chDFe;
        dtmMDFE.updEnviado.ParamByName('XML_PROTOCOLO').AsString := dtmMDFE.ACBrMDFe.Manifestos.Items[0].MDFe.procMDFe.nProt;
        dtmMDFE.updEnviado.ParamByName('XML_STRING_PROTOCOLO').AsString := dtmMDFE.ACBrMDFe.Manifestos.Items[0].XMLAssinado;
        dtmMDFE.updEnviado.ParamByName('XML_PROCOCOLO_DATAHORA').AsDateTime := dtmMDFE.ACBrMDFe.Manifestos.Items[0].MDFe.procMDFe.dhRecbto;
        dtmMDFE.updEnviado.ParamByName('ID_SITUACAO').AsString := 'E';
        dtmMDFE.updEnviado.ParamByName('XML_XMOTIVO').AsAnsiString := '100 - MDF-e autorizado.';
        dtmMDFE.updEnviado.ParamByName('XML_STATUS_CODIGO').AsInteger := dtmMDFE.ACBrMDFe.WebServices.Consulta.cStat;
        dtmMDFE.updEnviado.Prepare;
        dtmMDFE.updEnviado.ExecSQL;

        dtmDefault.cnx_BD.CommitRetaining;

        AtualizarTabela(qryDefault,qryDefaultID_MDFE.FieldName,qryDefaultID_MDFE.AsString);

        Application.Messagebox(
          PWideChar('MDF-e autorizado para uso.'#13#13'Chave de acesso: '#13 + ChaveMDFe),
          'Autorizado',
          MB_ICONINFORMATION + MB_OK
        );
      end;
    101:
      begin
        updCancelado.ParamByName('ID_MDFE').asInteger := qryDefaultID_MDFE.AsInteger;
        updCancelado.ParamByName('ID_SERIE').AsInteger := qryDefaultID_SERIE.AsInteger;
        updCancelado.ParamByName('ID_EMPRESA').AsInteger := oEmpresa.ID;
        updCancelado.ParamByName('XML_CHAVE').AsAnsiString := dtmMDFE.ACBrMDFe.Manifestos.Items[0].MDFe.procMDFe.chDFe;
        updCancelado.ParamByName('XML_PROTOCOLO').AsString := dtmMDFE.ACBrMDFe.Manifestos.Items[0].MDFe.procMDFe.nProt;
        updCancelado.ParamByName('XML_PROCOCOLO_DATAHORA').AsDateTime := dtmMDFE.ACBrMDFe.Manifestos.Items[0].MDFe.procMDFe.dhRecbto;
        updCancelado.ParamByName('XML_XMOTIVO').AsAnsiString := '101 - MDF-e cancelado.';
        updCancelado.ParamByName('XML_CANC_DATAHORA').AsDateTime := dtmMDFE.ACBrMDFe.WebServices.Consulta.DhRecbto;
        updCancelado.ParamByName('XML_CANC_PROTOCOLO').AsAnsiString := dtmMDFE.ACBrMDFe.WebServices.Consulta.Protocolo;
        updCancelado.ParamByName('XML_CANC_STRING').AsAnsiString := dtmMDFE.ACBrMDFe.WebServices.Consulta.RetornoWS;
        updCancelado.ParamByName('XML_STATUS_CODIGO').AsInteger := dtmMDFE.ACBrMDFe.WebServices.Consulta.cStat;
        updCancelado.Prepare;
        updCancelado.ExecSQL;

        dtmDefault.cnx_BD.CommitRetaining;

        AtualizarTabela(qryDefault,qryDefaultID_MDFE.FieldName,qryDefaultID_MDFE.AsString);

        Application.Messagebox(
          PWideChar('MDF-e cancelado.'#13#13'Chave de acesso: ' + ChaveMDFe),  'Cancelado',     MB_ICONINFORMATION + MB_OK);
      end;

    110, 301, 302:
      begin
        case Status of
          110: MsgMotivoDenegacao := '110 - MDF-e denegado';
          301: MsgMotivoDenegacao := '301 - Irregularidade fiscal do emitente';
          302: MsgMotivoDenegacao := '302 - Irregularidade fiscal do destinatário';
        end;

        dtmMDFE.updEnviado.ParamByName('ID_MDFE').asInteger := qryDefaultID_MDFE.AsInteger;
        dtmMDFE.updEnviado.ParamByName('ID_SERIE').AsInteger := qryDefaultID_SERIE.AsInteger;
        dtmMDFE.updEnviado.ParamByName('ID_EMPRESA').AsInteger := oEmpresa.ID;
        dtmMDFE.updEnviado.ParamByName('XML_CHAVE').AsAnsiString := dtmMDFE.ACBrMDFe.Manifestos.Items[0].MDFe.procMDFe.chDFe;
        dtmMDFE.updEnviado.ParamByName('XML_PROTOCOLO').AsString := dtmMDFE.ACBrMDFe.Manifestos.Items[0].MDFe.procMDFe.nProt;
        dtmMDFE.updEnviado.ParamByName('XML_STRING_PROTOCOLO').AsString := dtmMDFE.ACBrMDFe.Manifestos.Items[0].XMLAssinado;
        dtmMDFE.updEnviado.ParamByName('XML_PROCOCOLO_DATAHORA').AsDateTime := dtmMDFE.ACBrMDFe.Manifestos.Items[0].MDFe.procMDFe.dhRecbto;
        dtmMDFE.updEnviado.ParamByName('ID_SITUACAO').AsString := 'D';
        dtmMDFE.updEnviado.ParamByName('XML_XMOTIVO').AsAnsiString := MsgMotivoDenegacao;
        dtmMDFE.updEnviado.ParamByName('XML_STATUS_CODIGO').AsInteger := dtmMDFE.ACBrMDFe.WebServices.Consulta.cStat;
        dtmMDFE.updEnviado.Prepare;
        dtmMDFE.updEnviado.ExecSQL;

        dtmDefault.cnx_BD.CommitRetaining;

        AtualizarTabela(qryDefault,qryDefaultID_MDFE.FieldName,qryDefaultID_MDFE.AsString);

        Application.Messagebox(
          PWideChar('MDF-e denegado.'#13#13'Chave de acesso: '#13 + ChaveMDFe),
          'Denegado',
          MB_ICONINFORMATION + MB_OK
        );
      end;
    132:begin
        dtmMDFE.updEncerrado.ParamByName('ID_EMPRESA').Value := oEmpresa.ID;
        dtmMDFE.updEncerrado.ParamByName('ID_MDFE').Value := qryDefaultID_MDFE.AsInteger;
        dtmMDFE.updEncerrado.ParamByName('ID_SERIE').Value := qryDefaultID_SERIE.AsInteger;
        dtmMDFE.updEncerrado.ParamByName('XML_STATUS_CODIGO').Value := '101';//EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat;
        dtmMDFE.updEncerrado.ParamByName('XML_XMOTIVO').AsAnsiString := '101 - MDF-e Encerrada';
        dtmMDFE.updEncerrado.Prepare;
        dtmMDFE.updEncerrado.ExecSQL;

        dtmDefault.cnx_BD.CommitRetaining;

        AtualizarTabela(qryDefault,qryDefaultID_MDFE.FieldName,qryDefaultID_MDFE.AsString);
        Application.Messagebox(
          PWideChar('MDF-e Encerrado.'#13#13'Chave de acesso: '#13 + ChaveMDFe), 'Denegado', MB_ICONINFORMATION + MB_OK
        );


        {dtmMDFE.SalvarEvento(
            qryDefaultID_MDFE.AsInteger,
            qryDefaultID_SERIE.AsInteger,
            qryDefaultID_MDFE.AsInteger, //Lote
             dtmMDFE.ACBrMDFe.Manifestos.Items[0].MDFe.procMDFe.dhRecbto,
            'Encerramento',
            'ENC'
          );}

    end
  else
    MensagemErro :=
      'Ocorreu o seguinte erro ao consultar MDF-e OS' + sLineBreak + sLineBreak  +
      String(dtmMDFE.ACBrMDFe.WebServices.Consulta.Msg) + sLineBreak + sLineBreak +
      'Chave de acesso: ' + sLineBreak + ChaveMDFe;

    Application.Messagebox(PWideChar(MensagemErro), 'Erro', MB_ICONERROR + MB_OK);
  end;
end;

procedure TfrmMDFEmanutencao.btnMDFEpdfEXPORTClick(Sender: TObject);
begin
  dtmMDFE.SaveDialog.Title := 'Selecione o MDF-e';
  dtmMDFE.SaveDialog.FileName := qryDefaultXML_CHAVE.AsString +  '-mdfe.pdf';
  dtmMDFE.SaveDialog.DefaultExt := '*-mdfe.pdf';
  dtmMDFE.SaveDialog.Filter := 'Arquivos MDF-e (*-mdfe.pdf)|*-mdfe.pdf|Arquivos PDF (*.pdf)|*.pdf|Todos os Arquivos (*.*)|*.*';

  if dtmMDFE.SaveDialog.Execute then
  begin
    dtmMDFE.ACBrMDFe.DAMDFE.PathPDF := ExtractFilePath(dtmMDFE.SaveDialog.FileName);

    dtmMDFE.ACBrMDFe.Manifestos.Clear;
    dtmMDFE.ACBrMDFe.Manifestos.LoadFromString(qryDefaultXML_STRING_PROTOCOLO.AsAnsiString);
    dtmMDFE.ACBrMDFe.Manifestos.ImprimirPDF;
  end;
end;

procedure TfrmMDFEmanutencao.btnMDFEvisualizarClick(Sender: TObject);
begin
  dtmMDFE.Configurar;
  dtmMDFE.ACBrMDFe.Manifestos.Clear;

  dtmMDFE.ACBrMDFe.DAMDFE.MostraPreview := False;

  if TJvSpeedButton(Sender).Caption = 'Visualizar MDF-e' then
    dtmMDFE.ACBrMDFe.DAMDFE.MostraPreview := True;


  dtmMDFE.ACBrMDFeDAMDFeRL.Cancelada := qryDefaultID_SITUACAO.AsString = 'C';
  dtmMDFE.ACBrMDFeDAMDFeRL.Encerrado := qryDefaultID_SITUACAO.AsString = 'F';

  if qryDefaultID_SITUACAO.AsString = 'A' then
  begin
    dtmMDFE.GerarMDFE(qryDefaultID_MDFE.AsInteger,qryDefaultID_SERIE.AsInteger);
    dtmMDFE.ACBrMDFe.Manifestos.Assinar;
  end
  else
  if (qryDefaultID_SITUACAO.AsString = 'E') or (qryDefaultID_SITUACAO.AsString = 'F') then
  begin
    //dtmMDFE.ACBrMDFeDAMDFeRL.ProtocoloMDFe := qryDefaultXML_STRING_PROTOCOLO.AsString;
    dtmMDFE.ACBrMDFe.Manifestos.LoadFromString(qryDefaultXML_STRING_PROTOCOLO.AsString);
  end
  else
  if qryDefaultID_SITUACAO.AsString = 'C' then
  begin
    dtmMDFE.ACBrMDFe.Manifestos.LoadFromString(qryDefaultXML_STRING_PROTOCOLO.AsString);
    dtmMDFE.ACBrMDFe.DAMDFE.Protocolo := qryDefaultXML_CANC_PROTOCOLO.AsString;
  end;

  dtmMDFE.ACBrMDFe.Manifestos.Imprimir;
end;

procedure TfrmMDFEmanutencao.btnMDFExmlEXPORTClick(Sender: TObject);
begin
  dtmMDFE.SaveDialog.Title := 'Selecione o MDF-e';
  dtmMDFE.SaveDialog.FileName := qryDefaultXML_CHAVE.AsString +  '-mdfe.xml';
  dtmMDFE.SaveDialog.DefaultExt := '*-mdfe.xml';
  dtmMDFE.SaveDialog.Filter := 'Arquivos MDF-e (*-mdfe.xml)|*-mdfe.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';

  if dtmMDFE.SaveDialog.Execute then
  begin
    dtmMDFE.ACBrMDFe.Manifestos.Clear;
    dtmMDFE.ACBrMDFe.Manifestos.LoadFromString(qryDefaultXML_STRING_PROTOCOLO.AsAnsiString);
    dtmMDFE.ACBrMDFe.Manifestos.Items[0].GravarXML(dtmMDFE.SaveDialog.FileName,ExtractFilePath(dtmMDFE.SaveDialog.FileName));
    dtmMDFE.ACBrMDFe.Manifestos.Clear;
  end;
end;

procedure TfrmMDFEmanutencao.btnNovoClick(Sender: TObject);
begin
  dtmMDFE.FTOperacao := TIncluir;
  inherited;

end;

procedure TfrmMDFEmanutencao.btnNovoDefaultClick(Sender: TObject);
var
  ARetorno :TRetornoCadastro;
begin
  if not Assigned(dtstabDefault.DataSet) then
    raise Exception.Create('DataSet não foi assinalado no formulário de manutenção, favor corrigir!');

  ARetorno := TfrmMDFEcadastro.RegistroDefault;

  if ARetorno.Alterado then
  begin
    AtualizarTabela(qryDefault);
    qryDefault.Locate(TabelaCpChave,ARetorno.Identificador);
  end;
end;

procedure TfrmMDFEmanutencao.btnSTATUSconsultarClick(Sender: TObject);
var
  Mensagem: string;
  CodigoStatus: Integer;
begin
  // configura componente
  dtmMDFE.Configurar;
  dtmMDFE.ACBrMDFe.WebServices.StatusServico.Executar;

  CodigoStatus := dtmMDFe.ACBrMDFe.WebServices.StatusServico.cStat;
  case CodigoStatus of
    107: // serviço em operação
      begin
        Mensagem := Trim(
          Format('Código:%d'#13'Mensagem: %s'#13'Tempo médio: %d segundo(s)', [
            dtmMDFe.ACBrMDFe.WebServices.StatusServico.cStat,
            dtmMDFe.ACBrMDFe.WebServices.StatusServico.xMotivo,
            dtmMDFe.ACBrMDFe.WebServices.StatusServico.TMed
          ])
        );

        MessageDlg(Mensagem, mtInformation, [mbOK], 0);
      end;

    108, 109: // serviço paralisado temporariamente (108) ou sem previsão (109)
      begin
        Mensagem := Trim(
          Format('Código:%d'#13'Motivo: %s'#13'%s', [
            dtmMDFe.ACBrMDFe.WebServices.StatusServico.cStat,
            dtmMDFe.ACBrMDFe.WebServices.StatusServico.xMotivo,
            dtmMDFe.ACBrMDFe.WebServices.StatusServico.xObs
          ])
        );

        MessageDlg(Mensagem, mtError, [mbOK], 0);
      end;
  else
    // qualquer outro retorno
    if CodigoStatus > 0 then
    begin
      Mensagem := Trim(
        Format('Webservice indisponível:'#13'Código:%d'#13'Motivo: %s'#13'%s', [
          dtmMDFe.ACBrMDFe.WebServices.StatusServico.cStat,
          dtmMDFe.ACBrMDFe.WebServices.StatusServico.xMotivo,
          dtmMDFe.ACBrMDFe.WebServices.StatusServico.xObs
        ])
      );
    end
    else
    begin
      Mensagem := 'Webservice indisponível ou retorno em branco, tente novamente!';
    end;

    MessageDlg(Mensagem, mtInformation, [mbOK], 0);
  end;
end;

procedure TfrmMDFEmanutencao.ckInserirDefaultClick(Sender: TObject);
begin
  oConfigINI.MDFEInserirDefault := ckInserirDefault.Checked;
end;

procedure TfrmMDFEmanutencao.btnAlterarClick(Sender: TObject);
begin
  dtmMDFE.FTOperacao := TEditar;
  inherited;

end;

procedure TfrmMDFEmanutencao.btnEmailEnviarClick(Sender: TObject);
begin
  TfrmENVIARemail.EnviarEMAIL(qryDefaultXML_STRING_PROTOCOLO.AsString,EmptyStr);
end;

procedure TfrmMDFEmanutencao.btnMDFEcancelarClick(Sender: TObject);
begin
  if TfrmMDFEcancela.Cancela(qryDefaultXML_STRING_PROTOCOLO.AsAnsiString) = mrOk then
  begin
    AtualizarTabela(qryDefault,qryDefaultID_MDFE.FieldName,qryDefaultID_MDFE.AsString);

    btnMDFEconsultar.Click;
  end;
end;

procedure TfrmMDFEmanutencao.btnMDFEencerrarClick(Sender: TObject);
begin
  if TfrmMDFEencerramento.Encerra(qryDefaultXML_STRING_PROTOCOLO.AsAnsiString,qryDefaultXML_CHAVE.AsString,
  qryDefaultXML_PROTOCOLO.AsAnsiString) = mrOk then
  begin
    AtualizarTabela(qryDefault,qryDefaultID_MDFE.FieldName,qryDefaultID_MDFE.AsString);

    btnMDFEconsultar.Click;
  end;
end;

procedure TfrmMDFEmanutencao.btnMDFEenviarClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja realmente validar a MDF-e ?','Confirmação',MB_YESNO + MB_ICONQUESTION) = mrYes then
  begin
    dtmMDFE.Configurar;
    dtmMDFE.ACBrMDFe.DAMDFE.MostraPreview := True;
    dtmMDFE.ACBrMDFe.Manifestos.Clear;
    dtmMDFE.GerarMDFE(qryDefaultID_MDFE.AsInteger,qryDefaultID_SERIE.AsInteger);
    dtmMDFE.Enviar;
    AtualizarTabela(qryDefault,qryDefaultID_MDFE.FieldName,qryDefaultID_MDFE.AsString);
  end;
end;

procedure TfrmMDFEmanutencao.dtsDefaultDataChange(Sender: TObject;
  Field: TField);
var
  AStatus: String;
begin
  inherited;

  if Assigned(qryDefault) then
  begin
    AStatus := qryDefaultID_SITUACAO.AsString.Trim;

    btnAlterar.Enabled       := AStatus = 'A';
    btnDeletar.Enabled       := AStatus = 'A';
    btnMDFEencerrar.Enabled  := AStatus = 'E';
    btnMDFEenviar.Enabled    := AStatus = 'A';
    btnMDFEcancelar.Enabled  := AStatus = 'E';
    btnMDFEimprimir.Enabled  := not qryDefault.IsEmpty;
    btnMDFEvisualizar.Enabled  := not qryDefault.IsEmpty;
    btnMDFEconsultar.Enabled := (AStatus = 'E') or (AStatus = 'F') or (AStatus = 'C');
    btnMDFEpdfEXPORT.Enabled := (AStatus = 'E') or (AStatus = 'F') ;
    btnMDFExmlEXPORT.Enabled := (AStatus = 'E') or (AStatus = 'F');

  end;
end;

procedure TfrmMDFEmanutencao.FormCreate(Sender: TObject);
begin
  inherited;

  FormCadastro := TfrmMDFEcadastro;

  TabelaNome := 'MDFE';
  TabelaCpChave := 'ID_MDFE';
  FSQLOrdem := ' ORDER BY ID_MDFE DESC';

  ckInserirDefault.Checked := oConfigINI.MDFEInserirDefault;
end;

procedure TfrmMDFEmanutencao.qryDefaultBeforeOpen(DataSet: TDataSet);
begin
  TFDQuery(DataSet).ParamByName('ID_EMPRESA').AsInteger := oEmpresa.ID;
end;

end.
