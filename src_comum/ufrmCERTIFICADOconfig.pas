unit ufrmCERTIFICADOconfig;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmDefaultCadastro, Data.DB, ACBrBase,
  ACBrEnterTab, Vcl.ComCtrls, JvExComCtrls, JvStatusBar, JvComCtrls,
  JvExControls, JvSpeedButton, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Mask, JvExMask, JvToolEdit, JvMaskEdit, JvDBControls, JvExStdCtrls,
  JvCombobox, JvDBCombobox, Vcl.DBCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, JvDBCheckBox, ACBrNFe, TypInfo,
  pcteConversaoCTe, pmdfeConversaoMDFe, ACBrDFe, Vcl.Samples.Spin, JvExExtCtrls, JvRadioGroup,
  JvSpin, ACBrCIOTConversao, ACBrCIOT, ACBrCIOTConfiguracoes, pcnCIOT, pcnCIOTW_eFrete,
  pcnConversao, ACBrDFeOpenSSL, ACBrDFeUtil, ACBrUtil.Strings, ACBrUtil.DateTime, ACBrUtil.FilesIO,
  ACBrUtil.XMLHTML, ACBrUtil.Base, ACBrCIOTContratos, blcksock, IniFiles, System.Math;

type
  TDocModelo = (mMDFe, mCTeOS, mCTe, mNFe);

  TfrmCERTIFICADOconfig = class(TfrmDefaultCadastro)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label25: TLabel;
    sbtnGetCert: TSpeedButton;
    CERTIFICADO_NUMERO: TJvDBMaskEdit;
    CERTIFICADO_SENHA: TJvDBMaskEdit;
    GroupBox6: TGroupBox;
    Label1: TLabel;
    WS_UF_DESTINO: TJvDBComboBox;
    ID_TIPO_AMBIENTE: TDBRadioGroup;
    gbProxy: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    WS_PROXY_HOST: TJvDBMaskEdit;
    WS_PROXY_PORTA: TJvDBMaskEdit;
    WS_PROXY_USUARIO: TJvDBMaskEdit;
    WS_PROXY_SENHA: TJvDBMaskEdit;
    lSSLLib1: TLabel;
    ID_SSL_TYPE: TJvDBComboBox;
    ID_FORMA_EMISSAO: TDBRadioGroup;
    DBRadioGroup1: TDBRadioGroup;
    MANTER_ARQUIVOS_TEMPORARIOS: TJvDBCheckBox;
    TabSheet2: TTabSheet;
    EMAIL_ENVIAR: TJvDBCheckBox;
    Label7: TLabel;
    GroupBox1: TGroupBox;
    GroupBox4: TGroupBox;
    Label6: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    EMAIL_SERVIDOR: TJvDBMaskEdit;
    EMAIL_USUARIO: TJvDBMaskEdit;
    EMAIL_SENHA: TJvDBMaskEdit;
    EMAIL_PORTA: TJvDBMaskEdit;
    EMAIL_SENHA_SEGURA: TJvDBCheckBox;
    TIME_ZONE_MODO: TDBRadioGroup;
    Label3: TLabel;
    TIMEZONE_MANUAL: TJvDBComboBox;
    ACBrNFe1: TACBrNFe;
    GroupBox3: TGroupBox;
    Label4: TLabel;
    SpeedButton1: TSpeedButton;
    LOGOMARCA: TJvDBMaskEdit;
    OpenDialog: TOpenDialog;
    CAMPOS_FAT_OBRIGATORIO: TJvDBCheckBox;
    EMAIL_SENHA_TLS: TJvDBCheckBox;
    GroupBox5: TGroupBox;
    cbVersaoDF: TComboBox;
    TabSheet3: TTabSheet;
    gbxRetornoEnvio: TGroupBox;
    Label64: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    GroupBox9: TGroupBox;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    GroupBox10: TGroupBox;
    Edit1: TEdit;
    btnSha256: TButton;
    cbAssinar: TCheckBox;
    GroupBox11: TGroupBox;
    lSSLLib: TLabel;
    lCryptLib: TLabel;
    lHttpLib: TLabel;
    lXmlSign: TLabel;
    cbxAjustarAut: TJvDBCheckBox;
    edtAguardar: TJvDBMaskEdit;
    edtTentativas: TJvDBMaskEdit;
    edtIntervalo: TJvDBMaskEdit;
    cbFormaEmissao: TJvDBComboBox;
    cbbIntegradora: TJvDBComboBox;
    edtUsuarioWebService: TJvDBMaskEdit;
    edtHashIntegrador: TJvDBMaskEdit;
    edtSenhaWebService: TJvDBMaskEdit;
    cbSSLLib: TJvDBComboBox;
    cbCryptLib: TJvDBComboBox;
    cbHttpLib: TJvDBComboBox;
    cbXmlSignLib: TJvDBComboBox;
    seTimeOut: TJvSpinEdit;
    Label66: TLabel;
    CERTIFICADO_CAMINHO: TJvDBMaskEdit;
    Label5: TLabel;
    procedure sbtnGetCertClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EMAIL_ENVIARChange(Sender: TObject);
    procedure TIME_ZONE_MODOChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure WS_PROXY_PORTAKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    FDocModelo: TDocModelo;

  var
    sToken: String;
  public
    class procedure showConfig(ADocModelo: TDocModelo);
  end;

var
  frmCERTIFICADOconfig: TfrmCERTIFICADOconfig;

implementation

uses
  ufrmDefault, udtmDefault, ACBrDFeSSL;

{$R *.dfm}

procedure TfrmCERTIFICADOconfig.btnConfirmarClick(Sender: TObject);
begin
  case FOperacao of
    TIncluir, TEditar:
      begin
        if dtsDefault.DataSet.State in [dsBrowse] then
          dtsDefault.DataSet.Edit;

        with dtsDefault.DataSet do
        begin
          TFDQuery(dtsDefault.DataSet).FieldByName('VERSAO_PROCESSO_EMISSAO').AsInteger := cbVersaoDF.ItemIndex;

          TFDQuery(dtsDefault.DataSet).FieldByName('AJUSTE_AUTOMATICO_AGUARDAR').AsBoolean := cbxAjustarAut.Checked;
          { TFDQuery(dtsDefault.DataSet).FieldByName('FORMA_EMISSAO_INDEX').AsInteger := cbFormaEmissao.ItemIndex;
            TFDQuery(dtsDefault.DataSet).FieldByName('INTEGRADORA_INDEX').AsInteger := cbbIntegradora.ItemIndex;
            TFDQuery(dtsDefault.DataSet).FieldByName('SSL_LIB_INDEX').AsInteger := cbSSLLib.ItemIndex;
            TFDQuery(dtsDefault.DataSet).FieldByName('CRYPT_LIB_INDEX').AsInteger := cbCryptLib.ItemIndex;
            TFDQuery(dtsDefault.DataSet).FieldByName('HTTP_LIB_INDEX').AsInteger := cbHttpLib.ItemIndex;
            TFDQuery(dtsDefault.DataSet).FieldByName('XML_SIGN_LIB__INDEX').AsInteger := cbXmlSignLib.ItemIndex; }
          TFDQuery(dtsDefault.DataSet).FieldByName('ASSINAR').AsBoolean := cbAssinar.Checked;
        end;
      end;
  end;

  inherited;

end;

procedure TfrmCERTIFICADOconfig.EMAIL_ENVIARChange(Sender: TObject);
begin
  EMAIL_SENHA.Enabled := EMAIL_ENVIAR.Checked;
  EMAIL_PORTA.Enabled := EMAIL_ENVIAR.Checked;
  EMAIL_USUARIO.Enabled := EMAIL_ENVIAR.Checked;
  EMAIL_SERVIDOR.Enabled := EMAIL_ENVIAR.Checked;
  EMAIL_SENHA_SEGURA.Enabled := EMAIL_ENVIAR.Checked;
end;

procedure TfrmCERTIFICADOconfig.FormCreate(Sender: TObject);
var
  T: TSSLLib;
  i: TpcnTipoEmissao;
  K: TVersaoCIOT;
  U: TSSLCryptLib;
  V: TSSLHttpLib;
  X: TSSLXmlSignLib;
  Y: TSSLType;
  Integradora: TCIOTIntegradora;
begin
  inherited;
  sToken := '';

  cbSSLLib.Items.Clear;
  for T := Low(TSSLLib) to High(TSSLLib) do
    cbSSLLib.Items.Add(GetEnumName(TypeInfo(TSSLLib), Integer(T)));
  cbSSLLib.ItemIndex := 0;

  cbCryptLib.Items.Clear;
  for U := Low(TSSLCryptLib) to High(TSSLCryptLib) do
    cbCryptLib.Items.Add(GetEnumName(TypeInfo(TSSLCryptLib), Integer(U)));
  cbCryptLib.ItemIndex := 0;

  cbHttpLib.Items.Clear;
  for V := Low(TSSLHttpLib) to High(TSSLHttpLib) do
    cbHttpLib.Items.Add(GetEnumName(TypeInfo(TSSLHttpLib), Integer(V)));
  cbHttpLib.ItemIndex := 0;

  cbXmlSignLib.Items.Clear;
  for X := Low(TSSLXmlSignLib) to High(TSSLXmlSignLib) do
    cbXmlSignLib.Items.Add(GetEnumName(TypeInfo(TSSLXmlSignLib), Integer(X)));
  cbXmlSignLib.ItemIndex := 0;

  ID_SSL_TYPE.Items.Clear;
  for Y := Low(TSSLType) to High(TSSLType) do
    ID_SSL_TYPE.Items.Add(GetEnumName(TypeInfo(TSSLType), Integer(Y)));
  ID_SSL_TYPE.ItemIndex := 0;

  cbFormaEmissao.Items.Clear;
  for i := Low(TpcnTipoEmissao) to High(TpcnTipoEmissao) do
    cbFormaEmissao.Items.Add(GetEnumName(TypeInfo(TpcnTipoEmissao), Integer(i)));
  cbFormaEmissao.ItemIndex := 0;

  cbVersaoDF.Items.Clear;
  for K := Low(TVersaoCIOT) to High(TVersaoCIOT) do
    cbVersaoDF.Items.Add(GetEnumName(TypeInfo(TVersaoCIOT), Integer(K)));
  cbVersaoDF.ItemIndex := 0;

  cbbIntegradora.Items.Clear;
  for Integradora := Low(TCIOTIntegradora) to High(TCIOTIntegradora) do
    cbbIntegradora.Items.Add(GetEnumName(TypeInfo(TCIOTIntegradora), Integer(Integradora)));
  cbbIntegradora.ItemIndex := 0;
end;

procedure TfrmCERTIFICADOconfig.FormShow(Sender: TObject);
var
  K: TVersaoCTe;
  Y: TVersaoMDFe;
begin
  inherited;

  TFDQuery(dtsDefault.DataSet).Close;
  case FDocModelo of
    mCTe:
      TFDQuery(dtsDefault.DataSet).ParamByName('ID_MODELO').AsInteger := 57;
    mCTeOS:
      TFDQuery(dtsDefault.DataSet).ParamByName('ID_MODELO').AsInteger := 67;
    mMDFe:
      TFDQuery(dtsDefault.DataSet).ParamByName('ID_MODELO').AsInteger := 58;
    mNFe:
      TFDQuery(dtsDefault.DataSet).ParamByName('ID_MODELO').AsInteger := 55;
  end;
  TFDQuery(dtsDefault.DataSet).Prepare;
  TFDQuery(dtsDefault.DataSet).Open;

  if TFDQuery(dtsDefault.DataSet).IsEmpty then
  begin
    TipoOperacao := TIncluir;
    TFDQuery(dtsDefault.DataSet).Append;

    case FDocModelo of
      mCTe:
        begin
          TFDQuery(dtsDefault.DataSet).FieldByName('ID_MODELO').AsInteger := 57;
          TFDQuery(dtsDefault.DataSet).FieldByName('VERSAO_PROCESSO_EMISSAO').AsInteger := 3;
        end;
      mCTeOS:
        TFDQuery(dtsDefault.DataSet).FieldByName('ID_MODELO').AsInteger := 67;
      mMDFe:
        TFDQuery(dtsDefault.DataSet).FieldByName('ID_MODELO').AsInteger := 58;
      mNFe:
        TFDQuery(dtsDefault.DataSet).FieldByName('ID_MODELO').AsInteger := 55;
    end;
  end
  else
    TipoOperacao := TEditar;

  if TFDQuery(dtsDefault.DataSet).ParamByName('ID_MODELO').AsInteger = 57 then
  begin
    cbVersaoDF.Items.Clear;
    for K := Low(TVersaoCTe) to High(TVersaoCTe) do
      cbVersaoDF.Items.Add(GetEnumName(TypeInfo(TVersaoCTe), Integer(K)));

  end;

  if TFDQuery(dtsDefault.DataSet).ParamByName('ID_MODELO').AsInteger = 58 then
  begin
    cbVersaoDF.Items.Clear;
    for Y := Low(TVersaoMDFe) to High(TVersaoMDFe) do
      cbVersaoDF.Items.Add(GetEnumName(TypeInfo(TVersaoMDFe), Integer(Y)));
  end;

  try
    cbVersaoDF.ItemIndex := TFDQuery(dtsDefault.DataSet).FieldByName('VERSAO_PROCESSO_EMISSAO').AsInteger;
    cbSSLLib.ItemIndex := TFDQuery(dtsDefault.DataSet).FieldByName('SSL_LIB_INDEX').AsInteger;
    cbCryptLib.ItemIndex := TFDQuery(dtsDefault.DataSet).FieldByName('CRYPT_LIB_INDEX').AsInteger;
    cbHttpLib.ItemIndex := TFDQuery(dtsDefault.DataSet).FieldByName('HTTP_LIB_INDEX').AsInteger;
    cbXmlSignLib.ItemIndex := TFDQuery(dtsDefault.DataSet).FieldByName('XML_SIGN_LIB__INDEX').AsInteger;
    ID_SSL_TYPE.ItemIndex := TFDQuery(dtsDefault.DataSet).FieldByName('ID_SSL_TYPE').AsInteger;
    cbFormaEmissao.ItemIndex := TFDQuery(dtsDefault.DataSet).FieldByName('FORMA_EMISSAO_INDEX').AsInteger;
    cbbIntegradora.ItemIndex := TFDQuery(dtsDefault.DataSet).FieldByName('INTEGRADORA_INDEX').AsInteger;
    cbAssinar.Checked := TFDQuery(dtsDefault.DataSet).FieldByName('ASSINAR').AsBoolean;
  except
    on E: Exception do
      cbVersaoDF.ItemIndex := 1;
  end;

  EMAIL_ENVIARChange(Sender);
end;

procedure TfrmCERTIFICADOconfig.sbtnGetCertClick(Sender: TObject);
var
  ACBrDFe: TACBrNFe;
begin
  ACBrDFe := TACBrNFe.Create(Nil);
  try
    ACBrDFe.Configuracoes.Geral.SSLCryptLib := cryWinCrypt;
    ACBrDFe.Configuracoes.Geral.SSLHttpLib := httpWinHttp;
    ACBrDFe.Configuracoes.Geral.SSLLib := libWinCrypt;
    ACBrDFe.Configuracoes.Geral.SSLXmlSignLib := xsLibXml2;

    if dtsDefault.DataSet.State in [dsBrowse] then
      dtsDefault.DataSet.Edit;

    dtsDefault.DataSet.FieldByName('CERTIFICADO_NUMERO').AsString := ACBrDFe.SSL.SelecionarCertificado;
  finally
    FreeAndNil(ACBrDFe);
  end;
end;

class procedure TfrmCERTIFICADOconfig.showConfig(ADocModelo: TDocModelo);
begin
  frmCERTIFICADOconfig := TfrmCERTIFICADOconfig.Create(Nil);
  try
    frmCERTIFICADOconfig.FDocModelo := ADocModelo;
    frmCERTIFICADOconfig.ShowModal;
  finally
    FreeAndNil(frmCERTIFICADOconfig);
  end;
end;

procedure TfrmCERTIFICADOconfig.SpeedButton1Click(Sender: TObject);
begin
  if OpenDialog.Execute then
  begin
    if dtsDefault.DataSet.State in [dsBrowse] then
      dtsDefault.DataSet.Edit;

    dtsDefault.DataSet.FieldByName('LOGOMARCA').AsAnsiString := AnsiString(OpenDialog.FileName);
  end;
end;

procedure TfrmCERTIFICADOconfig.TIME_ZONE_MODOChange(Sender: TObject);
begin
  TIMEZONE_MANUAL.Enabled := TIME_ZONE_MODO.ItemIndex = 2;
end;

procedure TfrmCERTIFICADOconfig.WS_PROXY_PORTAKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  try
    var
    valor := StrToInt(WS_PROXY_PORTA.Text);
    if (valor > 65535) or (valor <= 0) then
      WS_PROXY_PORTA.Text := '0';
  except
    on E: Exception do
      WS_PROXY_PORTA.Text := '0';
  end;
end;

end.
