unit ufrmMDFEcteCADASTROunidTRANSPORTE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmDefaultCadastro, Data.DB, ACBrBase,
  ACBrEnterTab, Vcl.ComCtrls, JvExComCtrls, JvStatusBar, JvComCtrls,
  JvExControls, JvSpeedButton, Vcl.ExtCtrls, JvBaseEdits, JvDBControls,
  Vcl.StdCtrls, JvExStdCtrls, JvCombobox, JvDBCombobox, Vcl.Grids, Vcl.DBGrids,
  JvExDBGrids, JvDBGrid, Vcl.DBCtrls, JvDBCheckBox, Vcl.Mask, JvExMask,
  JvToolEdit, JvMaskEdit, JvgGroupBox;

type
  TfrmMDFEcteCADASTROunidTRANSPORTEcadastro = class(TfrmDefaultCadastro)
    JvgGroupBox15: TJvgGroupBox;
    Label16: TLabel;
    Município: TLabel;
    ID_IDENTIFICACAO: TJvDBMaskEdit;
    Label29: TLabel;
    ID_TIPO: TJvDBComboBox;
    QUANTIDADE: TJvDBCalcEdit;
    JvgGroupBox12: TJvgGroupBox;
    Label9: TLabel;
    Panel4: TPanel;
    btnLacresExcluir: TJvSpeedButton;
    btnLacresIncluir: TJvSpeedButton;
    JvDBGrid2: TJvDBGrid;
    N_LACRE: TJvMaskEdit;
    dtstabMDFE_CTE_UNIDTRANS_LACRE: TDataSource;
    JvgGroupBox1: TJvgGroupBox;
    Panel1: TPanel;
    btnUNIDCARGAexcluir: TJvSpeedButton;
    btnUNIDCARGAincluir: TJvSpeedButton;
    JvDBGrid1: TJvDBGrid;
    btnUNIDCARGAalterar: TJvSpeedButton;
    dtstabMDFE_CTE_CARGTRANS: TDataSource;
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnLacresIncluirClick(Sender: TObject);
    procedure btnLacresExcluirClick(Sender: TObject);
    procedure btnUNIDCARGAincluirClick(Sender: TObject);
    procedure btnUNIDCARGAalterarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnUNIDCARGAexcluirClick(Sender: TObject);
    procedure dtstabMDFE_CTE_UNIDTRANS_LACREDataChange(Sender: TObject;
      Field: TField);
    procedure FormShow(Sender: TObject);
  private
    FOperacao: TOperacao;
  public
    class procedure Novo;
    class procedure Alterar;
  end;

var
  frmMDFEcteCADASTROunidTRANSPORTEcadastro: TfrmMDFEcteCADASTROunidTRANSPORTEcadastro;

implementation

{$R *.dfm}

uses udtmMDFE, FireDAC.Comp.Client, ufrmMDFEcteCADASTROunidCARGA;

procedure TfrmMDFEcteCADASTROunidTRANSPORTEcadastro.btnCancelarClick(Sender: TObject);
begin
  Self.Perform(WM_NEXTDLGCTL,0,0);

  if dtsDefault.DataSet.State in [dsInsert] then
    dtsDefault.DataSet.Cancel;

  FFecharOK := True;
  Self.Close;
  Self.ModalResult := mrCancel;
end;

procedure TfrmMDFEcteCADASTROunidTRANSPORTEcadastro.btnConfirmarClick(Sender: TObject);
begin
  Self.Perform(WM_NEXTDLGCTL,0,0);

  try
    if dtsDefault.DataSet.State in [dsInsert] then
      dtsDefault.DataSet.Post;

    FFecharOK := True;
    Self.Close;
    Self.ModalResult := mrOk;
  except
    on E: Exception do
    begin
      raise Exception.Create
        ('Ocorreu o erro abaixo no processo, favor contactar suporte!' + sLineBreak + sLineBreak + e.Message);
    end;
  end;
end;

procedure TfrmMDFEcteCADASTROunidTRANSPORTEcadastro.btnLacresExcluirClick(
  Sender: TObject);
begin
  TFDQuery(dtstabMDFE_CTE_UNIDTRANS_LACRE.DataSet).Delete;
end;

procedure TfrmMDFEcteCADASTROunidTRANSPORTEcadastro.btnLacresIncluirClick(
  Sender: TObject);
begin
  if TFDQuery(dtsDefault.DataSet).State in [dsInsert] then
    TFDQuery(dtsDefault.DataSet).Post;

  if Trim(N_LACRE.Text) = '' then
  begin
    N_LACRE.SetFocus;
    Exit;
  end;

  try
    TFDQuery(dtstabMDFE_CTE_UNIDTRANS_LACRE.DataSet).Append;
    TFDQuery(dtstabMDFE_CTE_UNIDTRANS_LACRE.DataSet).FieldByName('ID_LACRE').Value := N_LACRE.Text;
    TFDQuery(dtstabMDFE_CTE_UNIDTRANS_LACRE.DataSet).Prepare;
    TFDQuery(dtstabMDFE_CTE_UNIDTRANS_LACRE.DataSet).Post;

    N_LACRE.Text := EmptyStr;

    btnConfirmar.Enabled := True;
  except on e:Exception do
    begin
      dtstabMDFE_CTE_UNIDTRANS_LACRE.DataSet.Cancel;
      raise Exception.Create(e.Message);
    end;
  end;
end;

procedure TfrmMDFEcteCADASTROunidTRANSPORTEcadastro.btnUNIDCARGAalterarClick(
  Sender: TObject);
begin
  TfrmMDFEcteCADASTROunidCARGAcadastro.Alterar;
end;

procedure TfrmMDFEcteCADASTROunidTRANSPORTEcadastro.btnUNIDCARGAexcluirClick(
  Sender: TObject);
begin
  TFDQuery(dtstabMDFE_CTE_CARGTRANS.DataSet).Delete;
end;

procedure TfrmMDFEcteCADASTROunidTRANSPORTEcadastro.btnUNIDCARGAincluirClick(
  Sender: TObject);
begin
  if TFDQuery(dtsDefault.DataSet).State in [dsInsert] then
    TFDQuery(dtsDefault.DataSet).Post;

  TfrmMDFEcteCADASTROunidCARGAcadastro.Novo;
end;

procedure TfrmMDFEcteCADASTROunidTRANSPORTEcadastro.dtstabMDFE_CTE_UNIDTRANS_LACREDataChange(
  Sender: TObject; Field: TField);
begin
  if Assigned(dtstabMDFE_CTE_UNIDTRANS_LACRE.DataSet) and Assigned(dtstabMDFE_CTE_CARGTRANS.DataSet) then
  begin
     btnUNIDCARGAalterar.Enabled := not dtstabMDFE_CTE_CARGTRANS.DataSet.IsEmpty;
     btnUNIDCARGAexcluir.Enabled := not dtstabMDFE_CTE_CARGTRANS.DataSet.IsEmpty;

     btnLacresExcluir.Enabled := not dtstabMDFE_CTE_UNIDTRANS_LACRE.DataSet.IsEmpty;

     btnConfirmar.Enabled     :=  (FOperacao = TIncluir) and (dtstabMDFE_CTE_CARGTRANS.DataSet.IsEmpty) and (dtstabMDFE_CTE_CARGTRANS.DataSet.IsEmpty);
     ID_IDENTIFICACAO.Enabled :=  (FOperacao = TIncluir) and (dtstabMDFE_CTE_CARGTRANS.DataSet.IsEmpty) and (dtstabMDFE_CTE_CARGTRANS.DataSet.IsEmpty) ;
  end;
end;

procedure TfrmMDFEcteCADASTROunidTRANSPORTEcadastro.FormCreate(Sender: TObject);
begin
  dtsDefault.DataSet := dtmMDFE.tabMDFE_CTE_UNIDTRANS;
  dtstabMDFE_CTE_UNIDTRANS_LACRE.DataSet := dtmMDFE.tabMDFE_CTE_UNIDTRANS_LACRE;
  dtstabMDFE_CTE_CARGTRANS.DataSet := dtmMDFE.tabMDFE_CTE_CARGTRANS;

  inherited;
end;

procedure TfrmMDFEcteCADASTROunidTRANSPORTEcadastro.FormShow(Sender: TObject);
begin
  inherited;

  btnConfirmar.Enabled :=  FOperacao = TIncluir;
end;

class procedure TfrmMDFEcteCADASTROunidTRANSPORTEcadastro.Novo;
begin
  frmMDFEcteCADASTROunidTRANSPORTEcadastro := TfrmMDFEcteCADASTROunidTRANSPORTEcadastro.Create(Nil);
  try
    frmMDFEcteCADASTROunidTRANSPORTEcadastro.FOperacao := TIncluir;
    TFDQuery(frmMDFEcteCADASTROunidTRANSPORTEcadastro.dtsDefault.DataSet).Append;

    frmMDFEcteCADASTROunidTRANSPORTEcadastro.ShowModal;
  finally
    FreeAndNil(frmMDFEcteCADASTROunidTRANSPORTEcadastro);
  end;
end;

class procedure TfrmMDFEcteCADASTROunidTRANSPORTEcadastro.Alterar;
begin
  frmMDFEcteCADASTROunidTRANSPORTEcadastro := TfrmMDFEcteCADASTROunidTRANSPORTEcadastro.Create(Nil);
  try
    frmMDFEcteCADASTROunidTRANSPORTEcadastro.FOperacao := TEditar;
    frmMDFEcteCADASTROunidTRANSPORTEcadastro.btnConfirmar.Enabled := False;
    frmMDFEcteCADASTROunidTRANSPORTEcadastro.ID_IDENTIFICACAO.Enabled := False;

    frmMDFEcteCADASTROunidTRANSPORTEcadastro.ShowModal;
  finally
    FreeAndNil(frmMDFEcteCADASTROunidTRANSPORTEcadastro);
  end;
end;


end.
