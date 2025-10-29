unit ufrmMDFEnfeCADASTRO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmDefaultCadastro, Data.DB, ACBrBase,
  ACBrEnterTab, Vcl.ComCtrls, JvExComCtrls, JvStatusBar, JvComCtrls,
  JvExControls, JvSpeedButton, Vcl.ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, JvBaseEdits, JvDBControls,
  Vcl.StdCtrls, JvExStdCtrls, JvCombobox, JvDBCombobox, JvDBLookup, Vcl.Mask,
  JvExMask, JvToolEdit, JvMaskEdit, JvgGroupBox, Vcl.DBCtrls, JvDBCheckBox,
  Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, Vcl.Buttons, JvExButtons, JvBitBtn,
  ACBrNFe, pcnNFeRTXT, ACBrDFe;

type
  TfrmMDFEnfeCADASTRO = class(TfrmDefaultCadastro)
    JvgGroupBox15: TJvgGroupBox;
    Label16: TLabel;
    Município: TLabel;
    ID_CHAVE: TJvDBMaskEdit;
    ID_CIDADES_IBGE: TJvDBMaskEdit;
    ID_IND_REENTREGA: TJvDBCheckBox;
    JvPageControl1: TJvPageControl;
    TabSheet1: TTabSheet;
    JvgGroupBox2: TJvgGroupBox;
    Panel1: TPanel;
    btnUNIDTRANSexcluir: TJvSpeedButton;
    btnUNIDTRANSincluir: TJvSpeedButton;
    gridLocalCarregamento: TJvDBGrid;
    btnUNIDTRANSalterar: TJvSpeedButton;
    dtstabMDFE_NFE_UNIDTRANS: TDataSource;
    JvDBMaskEdit1: TJvDBMaskEdit;
    JvDBMaskEdit2: TJvDBMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    JvBitBtn1: TJvBitBtn;
    FileOpenDialog1: TFileOpenDialog;
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnUNIDTRANSincluirClick(Sender: TObject);
    procedure btnUNIDTRANSalterarClick(Sender: TObject);
    procedure btnUNIDTRANSexcluirClick(Sender: TObject);
    procedure dtstabMDFE_NFE_UNIDTRANSDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure dtsDefaultDataChange(Sender: TObject; Field: TField);
    procedure BitBtn1Click(Sender: TObject);
    procedure ID_CHAVEExit(Sender: TObject);
    procedure JvBitBtn1Click(Sender: TObject);
  private
    FOperacao: TOperacao;
    function ValidarChaveNFe(const ChaveNFe: AnsiString): Boolean;
  public
    class procedure Novo;
    class procedure Alterar;
  end;

var
  frmMDFEnfeCADASTRO: TfrmMDFEnfeCADASTRO;

implementation

{$R *.dfm}

uses udtmMDFE, ufrmMDFEnfeCADASTROunidTRANSPORTE, uclassEMPRESA, udtmDefault,
  uclassMDFE, ufrmConsultaNFe;

{ TfrmMDFEnfeCADASTRO }

class procedure TfrmMDFEnfeCADASTRO.Alterar;
begin
  frmMDFEnfeCADASTRO := TfrmMDFEnfeCADASTRO.Create(Nil);
  try
    frmMDFEnfeCADASTRO.FOperacao := TEditar;
    frmMDFEnfeCADASTRO.ID_CHAVE.Enabled := False;
    frmMDFEnfeCADASTRO.btnConfirmar.Enabled := False;

    frmMDFEnfeCADASTRO.ShowModal;
  finally
    FreeAndNil(frmMDFEnfeCADASTRO);
  end;
end;

procedure TfrmMDFEnfeCADASTRO.BitBtn1Click(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(TFrmConsultaNFe, FrmConsultaNFe);
    FrmConsultaNFe.ShowModal;
  finally
    dtmDefault.SqlConsultaNFe.Close;
    if FrmConsultaNFe.ChaveNFe <> '' then
      dtmMDFE.tabMDFE_NFEID_CHAVE.value := FrmConsultaNFe.ChaveNFe;
    if FrmConsultaNFe.Peso > 0 then
      dtmMDFE.tabMDFE_NFEPESO.AsCurrency := FrmConsultaNFe.Peso;
    if FrmConsultaNFe.Valor > 0 then
      dtmMDFE.tabMDFE_NFEValor.AsCurrency := FrmConsultaNFe.Valor;

    FrmConsultaNFe.Release;
  end;
end;

procedure TfrmMDFEnfeCADASTRO.btnCancelarClick(Sender: TObject);
begin
  Self.Perform(WM_NEXTDLGCTL, 0, 0);

  if dtsDefault.DataSet.State in [dsInsert] then
    dtsDefault.DataSet.Cancel;

  FFecharOK := True;

  Self.Close;
  Self.ModalResult := mrCancel;
end;

procedure TfrmMDFEnfeCADASTRO.btnConfirmarClick(Sender: TObject);
begin
  Self.Perform(WM_NEXTDLGCTL, 0, 0);

  try
    { if FOperacao = TIncluir then
      begin
      dtmMDFE.tabMDFE.FieldByName('ID_MDFE').AsInteger := oMDFE.GetNEW_ID_MDFE;
      end; }

    if dtsDefault.DataSet.State in [dsInsert] then
      dtsDefault.DataSet.Post;

    FFecharOK := True;

    Self.Close;
    Self.ModalResult := mrOk;

  except
    on E: Exception do
    begin
      raise Exception.Create('Ocorreu o erro abaixo no processo, favor contactar suporte!' + sLineBreak + sLineBreak + E.Message);
    end;
  end;
end;

procedure TfrmMDFEnfeCADASTRO.btnUNIDTRANSalterarClick(Sender: TObject);
begin
  TfrmMDFEnfeCADASTROunidTRANSPORTEcadastro.Alterar;
end;

procedure TfrmMDFEnfeCADASTRO.btnUNIDTRANSexcluirClick(Sender: TObject);
begin
  TFDQuery(dtstabMDFE_NFE_UNIDTRANS.DataSet).Delete;
end;

procedure TfrmMDFEnfeCADASTRO.btnUNIDTRANSincluirClick(Sender: TObject);
begin
  if TFDQuery(dtsDefault.DataSet).State in [dsInsert] then
    TFDQuery(dtsDefault.DataSet).Post;

  TfrmMDFEnfeCADASTROunidTRANSPORTEcadastro.Novo;
end;

procedure TfrmMDFEnfeCADASTRO.dtsDefaultDataChange(Sender: TObject; Field: TField);
begin
  if Assigned(dtstabMDFE_NFE_UNIDTRANS.DataSet) then
  begin
    btnUNIDTRANSalterar.Enabled := TFDQuery(dtstabMDFE_NFE_UNIDTRANS.DataSet).RecordCount > 0;
    btnUNIDTRANSexcluir.Enabled := TFDQuery(dtstabMDFE_NFE_UNIDTRANS.DataSet).RecordCount > 0;
  end;
end;

procedure TfrmMDFEnfeCADASTRO.dtstabMDFE_NFE_UNIDTRANSDataChange(Sender: TObject; Field: TField);
begin
  if Assigned(dtstabMDFE_NFE_UNIDTRANS.DataSet) then
  begin
    btnUNIDTRANSalterar.Enabled := TFDQuery(dtstabMDFE_NFE_UNIDTRANS.DataSet).RecordCount > 0;
    btnUNIDTRANSexcluir.Enabled := TFDQuery(dtstabMDFE_NFE_UNIDTRANS.DataSet).RecordCount > 0;

    btnConfirmar.Enabled := (FOperacao = TIncluir) and (dtstabMDFE_NFE_UNIDTRANS.DataSet.IsEmpty);
    ID_CHAVE.Enabled := (FOperacao = TIncluir) and (dtstabMDFE_NFE_UNIDTRANS.DataSet.IsEmpty);
  end;
end;

procedure TfrmMDFEnfeCADASTRO.FormCreate(Sender: TObject);
begin
  dtsDefault.DataSet := dtmMDFE.tabMDFE_NFE;
  dtstabMDFE_NFE_UNIDTRANS.DataSet := dtmMDFE.tabMDFE_NFE_UNIDTRANS;

  inherited;
end;

procedure TfrmMDFEnfeCADASTRO.ID_CHAVEExit(Sender: TObject);
var
  Chave: String;
begin
  if ID_CHAVE.Text = '' then
    exit;
  Chave := StringReplace(ID_CHAVE.Text, ' ', '', [rfReplaceAll, rfIgnoreCase]);
  if Length(Chave) <> 44 then
  begin
    ShowMessage('Tamanho Chave incorreto');
    exit;
  end;

  if (Chave <> '') then
  begin
    if not ValidarChaveNFe(ID_CHAVE.Text) then
    begin
      ShowMessage('Chave NFe incorreta!');
      ID_CHAVE.SetFocus;
      exit;
    end;
  end;
end;

procedure TfrmMDFEnfeCADASTRO.JvBitBtn1Click(Sender: TObject);
begin
  inherited;

  var
    NFeRTXT: TNFeRTXT;

  FileOpenDialog1.DefaultFolder := dtmMDFE.ACBrNFe.Configuracoes.Arquivos.PathSalvar;

  if FileOpenDialog1.Execute then
  begin

    dtmMDFE.ACBrNFe.NotasFiscais.Clear;
    // tenta TXT
    dtmMDFE.ACBrNFe.NotasFiscais.Add;
    NFeRTXT := TNFeRTXT.Create(dtmMDFE.ACBrNFe.NotasFiscais.Items[0].NFe);
    NFeRTXT.CarregarArquivo(FileOpenDialog1.FileName);
    if NFeRTXT.LerTxt then
    begin
      NFeRTXT.Free;
    end
    else
    begin
      NFeRTXT.Free;
      // tenta XML
      dtmMDFE.ACBrNFe.NotasFiscais.Clear;
      try
        dtmMDFE.ACBrNFe.NotasFiscais.LoadFromFile(FileOpenDialog1.FileName);

        var
          pesoBrutoTotal: Double := 0.0;

        for var i := 0 to dtmMDFE.ACBrNFe.NotasFiscais.Items[0].NFe.Transp.Vol.Count - 1 do
        begin
          if dtmMDFE.ACBrNFe.NotasFiscais.Items[0].NFe.Transp.Vol.Items[i].pesoB <> 0.0 then
            pesoBrutoTotal := pesoBrutoTotal + dtmMDFE.ACBrNFe.NotasFiscais.Items[0].NFe.Transp.Vol.Items[i].pesoB
          else if dtmMDFE.ACBrNFe.NotasFiscais.Items[0].NFe.Transp.Vol.Items[i].pesoL <> 0.0 then
            pesoBrutoTotal := pesoBrutoTotal + dtmMDFE.ACBrNFe.NotasFiscais.Items[0].NFe.Transp.Vol.Items[i].pesoL
        end;

        if dtmMDFE.tabMDFE_NFE.State in [dsBrowse] then
          dtmMDFE.tabMDFE_NFE.Edit;

        dtmMDFE.tabMDFE_NFEPESO.AsFloat := pesoBrutoTotal;
        dtmMDFE.tabMDFE_NFEValor.AsFloat := dtmMDFE.ACBrNFe.NotasFiscais.Items[0].NFe.Total.ICMSTot.vNF;
        dtmMDFE.tabMDFE_NFEXML_NFE.LoadFromFile(FileOpenDialog1.FileName);
        dtmMDFE.tabMDFE_NFEID_CHAVE.AsString := dtmMDFE.ACBrNFe.NotasFiscais.Items[0].NFe.procNFe.chNFe;

        dtmMDFE.tabMDFE_NFE.Post;

        if pesoBrutoTotal = 0.0 then
          ShowMessage('Peso Bruto igual à 0 na nota, verificar');
        if dtmMDFE.ACBrNFe.NotasFiscais.Items[0].NFe.Total.ICMSTot.vNF = 0.0 then
          ShowMessage('Valor total da nota é 0, verificar');
      except
        on E: Exception do
        begin
          ShowMessage('Arquivo NFe Inválido: ' + sLineBreak + E.Message);
          exit;
        end;
      end;
    end;
  end;
end;

class procedure TfrmMDFEnfeCADASTRO.Novo;
begin
  frmMDFEnfeCADASTRO := TfrmMDFEnfeCADASTRO.Create(Nil);
  try
    frmMDFEnfeCADASTRO.FOperacao := TIncluir;
    TFDQuery(frmMDFEnfeCADASTRO.dtsDefault.DataSet).Append;

    frmMDFEnfeCADASTRO.ShowModal;
  finally
    FreeAndNil(frmMDFEnfeCADASTRO);
  end;
end;

function TfrmMDFEnfeCADASTRO.ValidarChaveNFe(const ChaveNFe: AnsiString): Boolean;
const
  Peso: Array [0 .. 43] of integer = (4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2, 9, 8, 7, 6,
    5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2, 0);
var
  retorno: Boolean;
  aChave: Array [0 .. 43] of char;
  soma: integer;
  Verif: integer;
  i: integer;
begin
  retorno := False;
  try
    try
      if not Length(ChaveNFe) = 44 then
        raise Exception.Create('');
      StrPCopy(aChave, StringReplace(ChaveNFe, ' ', '', [rfReplaceAll]));
      soma := 0;
      for i := Low(aChave) to High(aChave) do
        soma := soma + (StrToInt(aChave[i]) * Peso[i]);
      if soma = 0 then
        raise Exception.Create('');

      soma := soma - (11 * (Trunc(soma / 11)));
      if (soma = 0) or (soma = 1) then
        Verif := 0
      else
        Verif := 11 - soma;
      retorno := Verif = StrToInt(aChave[43]);
    except
      retorno := False;
    end;
  finally
    Result := retorno;
  end;

end;

end.
