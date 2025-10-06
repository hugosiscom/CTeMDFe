unit ufrmXMLgeracao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmDefaultClean, ACBrBase,
  ACBrEnterTab, JvExControls, JvSpeedButton, Vcl.ExtCtrls, Vcl.StdCtrls,
   Vcl.Mask, JvExMask, JvToolEdit, JvMaskEdit,

  pcnConversao, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ComCtrls, RLFilters,
  RLPDFFilter, ACBrDFeReport, ACBrDFeDANFeReport, ACBrNFeDANFeRLClass, ACBrDFe,
  ACBrMDFeDAMDFeClass, ACBrMDFeDAMDFeRLClass, ACBrMDFe;

type
  TfrmXMLgeracao = class(TfrmDefaultClean)
    chkCONFIRMACAO: TCheckBox;
    Label11: TLabel;
    edtEMAILdestinatario: TJvMaskEdit;
    edtDataInicial: TJvDateEdit;
    edtDataFinal: TJvDateEdit;
    Label1: TLabel;
    qryXML_MDFE: TFDQuery;
    OpenDialog: TOpenDialog;
    RLPDFFilter1: TRLPDFFilter;
    chkAnexarPDF: TCheckBox;
    qryXML_MDFEXML_STRING: TMemoField;
    qryXML_MDFEXML_CHAVE: TStringField;
    ACBrMDFe: TACBrMDFe;
    ACBrMDFeDAMDFeRL: TACBrMDFeDAMDFeRL;
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FEMAIL: String;
    FPathArquivoZipTMP: string;
    FPathDirTMP: string;
    FPathArquivoZip: string;
    FPathDirTMP_DFE: string;
    procedure WriteXML_MDFEtoTMP(PathSalvar: String);
  public
    class procedure Gerar(AEMAIL: String);
    property PathArquivoZipTMP: string read FPathArquivoZipTMP write FPathArquivoZipTMP;
    property PathArquivoZip: string Read FPathArquivoZip Write FPathArquivoZip;
    property PathDirTMP: string read FPathDirTMP write FPathDirTMP;
    property PathDirTMP_DFE: string read FPathDirTMP_DFE write FPathDirTMP_DFE;
  end;

var
  frmXMLgeracao: TfrmXMLgeracao;

implementation

{$R *.dfm}

uses udtmMDFe, uclassMDFE, ufrmMENSAGEMespera, ufuncoes, udtmDefault, ACBrUtil,
  uclassEMPRESA, System.Zip, System.DateUtils, uclassCONFIGini;

function GetTempDir: TFileName;
var
  Buffer: array[0..255] of char;
begin
  Buffer := #0;
  GetTempPath(256, Buffer);

  Result := Buffer;
end;

procedure TfrmXMLgeracao.WriteXML_MDFEtoTMP(PathSalvar: String);
var
  PathArquivo: String;
  I: Integer;
  Chave: String;
  Situacao: String;
  XMLStr: String;
begin
  qryXML_MDFE.First;
  try
    while not qryXML_MDFE.Eof do
    begin
      XMLStr   := qryXML_MDFE.FieldByName('XML_STRING').AsAnsiString;
      Chave    := qryXML_MDFE.FieldByName('XML_CHAVE').AsAnsiString;
      PathArquivo := IncludeTrailingPathDelimiter(PathSalvar) + Chave + '-procMDFe.xml';

      //Salvar para o arquivo
      WriteToTXT(PathArquivo, XMLStr, False);

      if chkAnexarPDF.Checked then
      begin
        ACBrMDFe.Manifestos.Clear;
        if ACBrMDFe.Manifestos.LoadFromString(XMLStr, False) then
        begin
          ACBrMDFe.DAMDFE.PathPDF := PathSalvar;
          ACBrMDFe.Manifestos.ImprimirPDF;
        end;
      end;

      qryXML_MDFE.Next;
    end;

    qryXML_MDFE.Close;
  except
    on E: Exception do
    begin
      qryXML_MDFE.Close;

      Application.MessageBox(
        PWideChar('Ocorreu o seguinte erro ao tentar salvar as conhecimentos:' + sLineBreak + E.Message),
        'Erro',
        MB_ICONERROR + MB_OK
      );
    end;
  end;
end;

procedure TfrmXMLgeracao.btnConfirmarClick(Sender: TObject);
var
  CopiaEmail: TStringList;
  NomeEmitente: String;
  AssuntoMensagem: String;
  CorpoMensagem: TStringList;

  PathApp, PathArqMDFe, PathPDF: string;
  ZipFile: TZipFile;
begin
  if edtDataFinal.Date < edtDataInicial.Date then
    raise Exception.Create('Atenção!!! O Periodo foi informado icorretamente, verifique e tente novamente!');

  if Trim(edtEMAILdestinatario.Text) = EmptyStr then
  begin
    edtEMAILdestinatario.SetFocus;
    raise Exception.Create('Destinatário da mensagem não informado.');
  end;

  with qryXML_MDFE do
  begin
    Close;
    Params[0].AsDate := edtDataInicial.Date;
    Params[1].AsDate := edtDataFinal.Date;
    Open;
    FetchAll;
  end;

  if qryXML_MDFE.IsEmpty then
    raise Exception.Create('Aviso!!! Registros nao localizados pra o Periodo informado, verifique e tente novamente!');

  try
    try
      PathDirTMP := GetTempDir + FormatDateTime('"VBS_DIR_"YYMMDDHHMMSS"', Now) ;
      PathDirTMP_DFE := PathDirTMP + '\MDFE';

      if DirectoryExists(PathDirTMP_DFE) then
      begin
        DeleteFiles(PathDirTMP_DFE + '\*.*');
        RmDir(PathDirTMP_DFE);
      end;

      if not DirectoryExists(PathDirTMP) then
        MkDir(PathDirTMP);

      if not DirectoryExists(PathDirTMP_DFE) then
        MkDir(PathDirTMP_DFE);

      WriteXML_MDFEtoTMP(PathDirTMP_DFE);

      OpenDialog.FileName := oEmpresa.CNPJ + FormatDateTime('"_XML_"YYYYMMDD"_', edtDataInicial.Date) + FormatDateTime('YYYYMMDD', edtDataFinal.Date);
      if OpenDialog.Execute then
      begin
        PathArquivoZip := OpenDialog.FileName;

        if FileExists(PathArquivoZip) then
        begin
          if not DeleteFile(PathArquivoZip) then
          begin
            raise EFilerError.Create(
              'Erro ao excluir o arquivo já existente:' + sLineBreak +
              IntToStr(GetLastError) + ' - ' + SysErrorMessage(GetLastError)
            );
          end;
        end;

        PathArquivoZipTMP := GetTempDir + FormatDateTime('"VBS"YYYYMMDD".tmp"', DATE);
        if FileExists(PathArquivoZipTMP) then
        begin
          if not DeleteFile(PathArquivoZipTMP) then
          begin
            raise EFilerError.Create(
              'Erro ao excluir arquivo temporário compactado:' + sLineBreak +
              IntToStr(GetLastError) + ' - ' + SysErrorMessage(GetLastError)
            );
          end;
        end;

        // zipar o arquivo
        ZipFile := TZipFile.Create;
        try
          ZipFile.ZipDirectoryContents(
            PathArquivoZipTMP,
            PathDirTMP
          );
        finally
          ZipFile.Close;
          ZipFile.Free;
        end;

        if not CopyFile(PWideChar(PathArquivoZipTMP), PWideChar(PathArquivoZip), False) then
        begin
          raise EFilerError.Create(
            'Erro ao mover o arquivo temporário de backup:' + sLineBreak +
            IntToStr(GetLastError) + ' - ' + SysErrorMessage(GetLastError)
          );
        end;

        Application.ProcessMessages;

        if FileExists(PathArquivoZipTMP) then
          DeleteFile(PathArquivoZipTMP);

        if DirectoryExists(PathDirTMP_DFE) then
        begin
          DeleteFiles(PathDirTMP_DFE + '\*.*');
          RmDir(PathDirTMP_DFE);
          RmDir(PathDirTMP);
        end;

        Application.ProcessMessages;
      end;
    finally
    end;
  except
    on E: Exception do
    begin
      Application.MessageBox(
        PWideChar('Ocorreu o seguinte erro ao efetuar a geração dos arquivos:' + sLineBreak + E.Message),
        'Erro',
        MB_ICONERROR + MB_OK
      )
    end;
  end;

  //envio da mensagem
  CopiaEmail := TStringList.Create;
  try
    // configura a confirmaçã de leitura como o usuário achar melhor
    dtmMDFe.ACBrMail.ReadingConfirmation := chkCONFIRMACAO.Checked;
    try
      CorpoMensagem := TStringList.Create;
      try
        NomeEmitente       := oEmpresa.RAZAO_SOCIAL;
        AssuntoMensagem    := 'Manifesto de Documentos Eletrônico: ' + NomeEmitente;

        CorpoMensagem := TStringList.Create;
        CorpoMensagem.Clear;
        CorpoMensagem.Add('Prezados,');
        CorpoMensagem.Add('');
        CorpoMensagem.Add('O Anexo contem os arquivos XML dos documentos emitidos no periodo de: ' + FormatDateTime('DD/MM/YYY', edtDataInicial.Date) + ' - ' + FormatDateTime('DD/MM/YYY', edtDataFinal.Date));
        CorpoMensagem.Add('Emitente: ' + oEmpresa.RAZAO_SOCIAL);
        CorpoMensagem.Add('CNPJ: ' + FormatarCNAE(oEmpresa.CNPJ));
        CorpoMensagem.Add('Tipo: Manifesto de Documentos Eletrônico');
        CorpoMensagem.Add('');
        CorpoMensagem.Add('');
        CorpoMensagem.Add('Atenciosamente,');
        CorpoMensagem.Add('');
        CorpoMensagem.Add(oEmpresa.RAZAO_SOCIAL);
        CorpoMensagem.Add(FormatarFone(oEmpresa.TELEFONE));
        CorpoMensagem.Add('');
        CorpoMensagem.Add('');
        CorpoMensagem.Add('');
        CorpoMensagem.Add(StringOfChar('-', 30));
        CorpoMensagem.Add('Enviado automaticamente por: Nome do meu Sistema!');
        CorpoMensagem.Add('');
        CorpoMensagem.Add('');

        // envio do email
        dtmMDFe.ACBrMail.Clear;
        with dtmMDFe.ACBrMail do
        begin
          dtmMDFe.qryCERTIFICADO_CONFIG.Close;
          dtmMDFe.qryCERTIFICADO_CONFIG.Open;
          dtmMDFe.qryCERTIFICADO_CONFIG.FetchAll;

          if dtmMDFe.qryCERTIFICADO_CONFIG.IsEmpty then
            raise Exception.Create('Servidor de E-Mail não configurado, favor conferir.');
          try
            Clear;
            From := oEmpresa.EMAIL.Trim;
            FromName := oEmpresa.RAZAO_SOCIAL;
            Host := dtmMDFe.qryCERTIFICADO_CONFIGEMAIL_SERVIDOR.AsString.Trim;
            Username := dtmMDFe.qryCERTIFICADO_CONFIGEMAIL_USUARIO.AsString.Trim;
            Password := dtmMDFe.qryCERTIFICADO_CONFIGEMAIL_SENHA.AsString.Trim;
            Port := dtmMDFe.qryCERTIFICADO_CONFIGEMAIL_PORTA.AsString.Trim;
            SetTLS := dtmMDFe.qryCERTIFICADO_CONFIGEMAIL_SENHA_TLS.AsString.Trim = 'S';
            SetSSL := dtmMDFe.qryCERTIFICADO_CONFIGEMAIL_SENHA_SEGURA.AsString.Trim = 'S';
            AddAddress(edtEMAILdestinatario.text, EmptyStr);
          finally
            dtmMDFe.qryCERTIFICADO_CONFIG.Close;
          end;
        end;

        dtmMDFe.ACBrMail.IsHTML := True;
        dtmMDFe.ACBrMail.Subject := 'Arquivos XML.';

        dtmMDFe.ACBrMail.AltBody.Assign(CorpoMensagem);
        dtmMDFe.ACBrMail.AddAttachment(PathArquivoZip);
        dtmMDFe.ACBrMail.Send(False);

        FecharEspera;
        ShowMessage('Enviado com sucesso!');
      finally
        FecharEspera;
        CorpoMensagem.Free;
      end;
    except
      on E: Exception do
      begin
        Application.MessageBox(PWideChar(
          'Ocorreu o seguinte erro ao enviar a nota eletrônica:' +
          sLineBreak +
          sLineBreak +
          E.Message),
          'Erro', MB_ICONERROR + MB_OK
        );
      end;
    end;
  finally
    CopiaEmail.Free;
  end;
end;

class procedure TfrmXMLgeracao.Gerar(AEMAIL: String);
begin
  frmXMLgeracao := TfrmXMLgeracao.Create(Nil);
  try
    frmXMLgeracao.FEMAIL := AEMAIL;
    frmXMLgeracao.ShowModal;
  finally
    FreeAndNil(frmXMLgeracao);
  end;
end;

procedure TfrmXMLgeracao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  oConfigINI.EMAILcontabilidade := edtEMAILdestinatario.Text;

  inherited;
end;

procedure TfrmXMLgeracao.FormCreate(Sender: TObject);
begin
  inherited;
  edtDataInicial.Date := StartOfTheMonth(Date-30);
  edtDataFinal.Date := EndOfTheMonth(Date-30);

  edtEMAILdestinatario.Text := FEMAIL;
end;

procedure TfrmXMLgeracao.FormShow(Sender: TObject);
begin
  inherited;

  edtEMAILdestinatario.Text := oConfigINI.EMAILcontabilidade;
end;

end.
