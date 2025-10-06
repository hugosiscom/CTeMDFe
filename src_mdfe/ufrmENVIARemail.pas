unit ufrmENVIARemail;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmDefaultClean, ACBrBase,
  ACBrEnterTab, JvExControls, JvSpeedButton, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Mask, JvExMask, JvToolEdit, JvMaskEdit,

  pcnConversao;

type
  TfrmENVIARemail = class(TfrmDefaultClean)
    chkPDF: TCheckBox;
    Label1: TLabel;
    Image1: TImage;
    Image2: TImage;
    chkCONFIRMACAO: TCheckBox;
    rbdRETRATO: TRadioButton;
    rdbPAISAGEM: TRadioButton;
    Label11: TLabel;
    edtEMAILdestinatario: TJvMaskEdit;
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FXML: String;
    FEMAIL: String;
    FEmailDestinatario: string;
    FEmailTransportadora: string;
  public
    property XML: String read FXML write FXML;
    property EmailDestinatario: string read FEmailDestinatario write FEmailDestinatario;
    property EmailTransportadora: string read FEmailTransportadora write FEmailTransportadora;
    class procedure EnviarEMAIL(AXML: String;AEMAIL: String);
  end;

var
  frmENVIARemail: TfrmENVIARemail;

implementation

{$R *.dfm}

uses udtmMDFe, uclassMDFE, ufrmMENSAGEMespera, ufuncoes;

procedure TfrmENVIARemail.btnConfirmarClick(Sender: TObject);
var
  CopiaEmail: TStringList;
  NomeEmitente: String;
  AssuntoMensagem: String;
  CorpoMensagem: TStringList;

  PathApp, PathArqNFe, PathPDF: string;
begin
  PathApp := ExtractFilePath(ParamStr(0));
  PathArqNFe := IncludeTrailingPathDelimiter(PathApp + 'DOCUMENTOS');
  PathPDF := IncludeTrailingPathDelimiter(PathArqNFe + 'PDF');

  dtmMDFe.Configurar;

  if Trim(edtEMAILdestinatario.Text) = EmptyStr then
  begin
    edtEMAILdestinatario.SetFocus;
    raise Exception.Create('Destinat�rio da mensagem n�o informado.');
  end;

  // envio da mensagem
  CopiaEmail := TStringList.Create;
  try
    // configura a confirma�� de leitura como o usu�rio achar melhor
    dtmMDFe.ACBrMail.ReadingConfirmation := chkCONFIRMACAO.Checked;

    dtmMDFe.ACBrMDFe.Manifestos.Clear;
    dtmMDFe.ACBrMDFe.Manifestos.LoadFromString(XML, False);

    // setar o diretorio do DANFE por precau��o
    dtmMDFe.ACBrMDFe.DAMDFE.PathPDF := IncludeTrailingPathDelimiter(PathApp + 'PDF');

    try
      CorpoMensagem := TStringList.Create;
      try
        NomeEmitente       := dtmMDFe.ACBrMDFe.Manifestos.Items[0].MDFe.Emit.xNome;
        AssuntoMensagem    := 'Manifesto Eletr�nico de Documentos Fiscais: ' + NomeEmitente;

        CorpoMensagem := TStringList.Create;
        CorpoMensagem.Clear;
        CorpoMensagem.Add('Prezados,');
        CorpoMensagem.Add('');
        CorpoMensagem.Add('Voc�s est�o recebendo o arquivo XML referente ao seguinte MDF-e:');
        CorpoMensagem.Add('N�mero:' + Format('%9.9d', [dtmMDFe.ACBrMDFe.Manifestos.Items[0].MDFe.Ide.nMDF]));
        CorpoMensagem.Add('S�rie: ' + Format('%3.3d', [dtmMDFe.ACBrMDFe.Manifestos.Items[0].MDFe.Ide.serie]));
        CorpoMensagem.Add('Data de Emiss�o: ' + FormatDateTime('dd/mm/yyyy', dtmMDFe.ACBrMDFe.Manifestos.Items[0].MDFe.Ide.dhEmi));
        CorpoMensagem.Add('Emitente: ' + dtmMDFe.ACBrMDFe.Manifestos.Items[0].MDFe.Emit.xNome);
        CorpoMensagem.Add('');
        CorpoMensagem.Add('Autorizado em: ' + FormatDateTime('dd/mm/yyyy', dtmMDFe.ACBrMDFe.Manifestos.Items[0].MDFe.procMDFe.dhRecbto));
        CorpoMensagem.Add('N�mero do protocolo: ' + dtmMDFe.ACBrMDFe.Manifestos.Items[0].MDFe.procMDFe.nProt);
        CorpoMensagem.Add('Chave de acesso: ' + dtmMDFe.ACBrMDFe.Manifestos.Items[0].MDFe.procMDFe.chDFe);
        CorpoMensagem.Add('');
        CorpoMensagem.Add('Al�m disso, junto a mercadoria seguir� o ' +
          'DAMDFE (Manifesto Eletr�nico de Documentos Fiscais), ' +
          'impresso em papel que acompanha o transporte das mesmas.'
        );
        CorpoMensagem.Add('');
        CorpoMensagem.Add(
          'O arquivo XML anexado deve ser armazenado eletronicamente por sua empresa pelo ' +
          'prazo de 05 (cinco) anos, conforme previsto na legisla��o tribut�ria ' +
          'Artigo. 173 do C�digo Tribut�rio Nacional e � 4� da Lei 5.172 de 25/10/1966.'
        );
        CorpoMensagem.Add('');
        CorpoMensagem.Add(
          'O DAMDFE em papel pode ser arquivado para apresenta��o ao fisco quando solicitado. ' +
          'Todavia, se sua empresa tamb�m for emitente do DAMDFE, o arquivamento eletr�nico ' +
          'do XML de seus fornecedores � obrigat�rio, sendo pass�vel de fiscaliza��o.'
        );
        CorpoMensagem.Add('');
        CorpoMensagem.Add(
          'Para se certificar que esta DAMDFE � v�lido, queira por favor consultar sua autenticidade ' +
          'no portal nacional da nota fiscal eletr�nica em http://www.mdfe.fazenda.gov.br, ' +
          'utilizando a chave de acesso contida no DAMDFE.'
        );
        CorpoMensagem.Add('');
        CorpoMensagem.Add('');
        CorpoMensagem.Add('Atenciosamente,');
        CorpoMensagem.Add('');
        CorpoMensagem.Add(dtmMDFE.ACBrMDFE.Manifestos.Items[0].MDFe.Emit.xNome);
        CorpoMensagem.Add(dtmMDFE.ACBrMDFE.Manifestos.Items[0].MDFe.Emit.EnderEmit.xMun + '/' + dtmMDFE.ACBrMDFE.Manifestos.Items[0].MDFe.Emit.EnderEmit.UF);
        CorpoMensagem.Add(FormatarFone(dtmMDFE.ACBrMDFE.Manifestos.Items[0].MDFe.Emit.EnderEmit.fone));
        CorpoMensagem.Add('');
        CorpoMensagem.Add('');
        CorpoMensagem.Add('');
        CorpoMensagem.Add(StringOfChar('-', 30));
        CorpoMensagem.Add('Enviado automaticamente por:');
        CorpoMensagem.Add('');
        CorpoMensagem.Add('');


        // orienta��o da impress�o
        if rbdRETRATO.Checked then
          dtmMDFE.ACBrMDFE.DAMDFE.TipoDAMDFe := tiRetrato
        else
          dtmMDFE.ACBrMDFE.DAMDFE.TipoDAMDFe := tiPaisagem;

        // envio do email
        dtmMDFE.ACBrMDFE.Manifestos.Items[0].EnviarEmail(
          edtEMAILdestinatario.Text,
          AssuntoMensagem,
          CorpoMensagem,
          chkPDF.Checked,
          CopiaEmail,
          nil
        );

        FecharEspera;
        ShowMessage('Enviado com sucesso!');
        inherited;
      finally
        FecharEspera;
        CorpoMensagem.Free;
      end;
    except
      on E: Exception do
      begin
        Application.MessageBox(PWideChar(
          'Ocorreu o seguinte erro ao enviar o MDF-e:' +
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

class procedure TfrmENVIARemail.EnviarEMAIL(AXML: String;AEMAIL: String);
begin
  frmENVIARemail := TfrmENVIARemail.Create(Nil);
  try
    frmENVIARemail.FXML := AXML;
    frmENVIARemail.FEMAIL := AEMAIL;
    frmENVIARemail.ShowModal;
  finally
    FreeAndNil(frmENVIARemail);
  end;
end;

procedure TfrmENVIARemail.FormCreate(Sender: TObject);
begin
  inherited;

  edtEMAILdestinatario.Text := FEMAIL;
end;

end.
