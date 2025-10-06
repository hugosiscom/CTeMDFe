unit ufrmMDFEnfeCADASTROunidTRANSPORTE;

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
  TfrmMDFEnfeCADASTROunidTRANSPORTEcadastro = class(TfrmDefaultCadastro)
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
    dtstabMDFE_NFE_UNIDTRANS_LACRE: TDataSource;
    JvgGroupBox1: TJvgGroupBox;
    Panel1: TPanel;
    btnUNIDCARGAexcluir: TJvSpeedButton;
    btnUNIDCARGAincluir: TJvSpeedButton;
    JvDBGrid1: TJvDBGrid;
    btnUNIDCARGAalterar: TJvSpeedButton;
    dtstabMDFE_NFE_CARGTRANS: TDataSource;
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnLacresIncluirClick(Sender: TObject);
    procedure btnLacresExcluirClick(Sender: TObject);
    procedure btnUNIDCARGAincluirClick(Sender: TObject);
    procedure btnUNIDCARGAalterarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnUNIDCARGAexcluirClick(Sender: TObject);
    procedure dtstabMDFE_NFE_UNIDTRANS_LACREDataChange(Sender: TObject;
      Field: TField);
  private
    FOperacao: TOperacao;
  public
    class procedure Novo;
    class procedure Alterar;
  end;

var
  frmMDFEnfeCADASTROunidTRANSPORTEcadastro: TfrmMDFEnfeCADASTROunidTRANSPORTEcadastro;

implementation

{$R *.dfm}

uses udtmMDFE, FireDAC.Comp.Client, ufrmMDFEnfeCADASTROunidCARGA;


procedure TfrmMDFEnfeCADASTROunidTRANSPORTEcadastro.btnCancelarClick(Sender: TObject);
begin
  Self.Perform(WM_NEXTDLGCTL,0,0);

  if dtsDefault.DataSet.State in [dsInsert] then
    dtsDefault.DataSet.Cancel;

  FFecharOK := True;
  Self.Close;
  Self.ModalResult := mrCancel;
end;

procedure TfrmMDFEnfeCADASTROunidTRANSPORTEcadastro.btnConfirmarClick(Sender: TObject);
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

procedure TfrmMDFEnfeCADASTROunidTRANSPORTEcadastro.btnLacresExcluirClick(
  Sender: TObject);
begin
  TFDQuery(dtstabMDFE_NFE_UNIDTRANS_LACRE.DataSet).Delete;
end;

procedure TfrmMDFEnfeCADASTROunidTRANSPORTEcadastro.btnLacresIncluirClick(
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
    TFDQuery(dtstabMDFE_NFE_UNIDTRANS_LACRE.DataSet).Append;
    TFDQuery(dtstabMDFE_NFE_UNIDTRANS_LACRE.DataSet).FieldByName('ID_LACRE').Value := N_LACRE.Text;
    TFDQuery(dtstabMDFE_NFE_UNIDTRANS_LACRE.DataSet).Prepare;
    TFDQuery(dtstabMDFE_NFE_UNIDTRANS_LACRE.DataSet).Post;

    N_LACRE.Text := EmptyStr;
  except on e:exception do
    begin
      TFDQuery(dtstabMDFE_NFE_UNIDTRANS_LACRE.DataSet).Cancel;

      raise Exception.Create(E.Message);
    end;
  end;
end;

procedure TfrmMDFEnfeCADASTROunidTRANSPORTEcadastro.btnUNIDCARGAalterarClick(
  Sender: TObject);
begin
  TfrmMDFEnfeCADASTROunidCARGAcadastro.Alterar;
end;

procedure TfrmMDFEnfeCADASTROunidTRANSPORTEcadastro.btnUNIDCARGAexcluirClick(
  Sender: TObject);
begin
  TFDQuery(dtstabMDFE_NFE_CARGTRANS.DataSet).Delete;
end;

procedure TfrmMDFEnfeCADASTROunidTRANSPORTEcadastro.btnUNIDCARGAincluirClick(
  Sender: TObject);
begin
  if TFDQuery(dtsDefault.DataSet).State in [dsInsert] then
    TFDQuery(dtsDefault.DataSet).Post;

  TfrmMDFEnfeCADASTROunidCARGAcadastro.Novo;
end;

procedure TfrmMDFEnfeCADASTROunidTRANSPORTEcadastro.dtstabMDFE_NFE_UNIDTRANS_LACREDataChange(
  Sender: TObject; Field: TField);
begin
  if Assigned(dtstabMDFE_NFE_CARGTRANS.DataSet) and Assigned(dtstabMDFE_NFE_UNIDTRANS_LACRE.DataSet) then
  begin
     btnLacresExcluir.Enabled := not dtstabMDFE_NFE_UNIDTRANS_LACRE.DataSet.IsEmpty;

     btnUNIDCARGAalterar.Enabled := not dtstabMDFE_NFE_CARGTRANS.DataSet.IsEmpty;
     btnUNIDCARGAexcluir.Enabled := not dtstabMDFE_NFE_CARGTRANS.DataSet.IsEmpty;

     ID_IDENTIFICACAO.Enabled :=
       dtstabMDFE_NFE_CARGTRANS.DataSet.IsEmpty and
       dtstabMDFE_NFE_UNIDTRANS_LACRE.DataSet.IsEmpty;
  end;
end;

procedure TfrmMDFEnfeCADASTROunidTRANSPORTEcadastro.FormCreate(Sender: TObject);
begin
  dtsDefault.DataSet := dtmMDFE.tabMDFE_NFE_UNIDTRANS;
  dtstabMDFE_NFE_UNIDTRANS_LACRE.DataSet := dtmMDFE.tabMDFE_NFE_UNIDTRANS_LACRE;
  dtstabMDFE_NFE_CARGTRANS.DataSet := dtmMDFE.tabMDFE_NFE_CARGTRANS;

  inherited;
end;

class procedure TfrmMDFEnfeCADASTROunidTRANSPORTEcadastro.Novo;
begin
  frmMDFEnfeCADASTROunidTRANSPORTEcadastro := TfrmMDFEnfeCADASTROunidTRANSPORTEcadastro.Create(Nil);
  try
    frmMDFEnfeCADASTROunidTRANSPORTEcadastro.FOperacao := TIncluir;
    TFDQuery(frmMDFEnfeCADASTROunidTRANSPORTEcadastro.dtsDefault.DataSet).Append;

    frmMDFEnfeCADASTROunidTRANSPORTEcadastro.ShowModal;
  finally
    FreeAndNil(frmMDFEnfeCADASTROunidTRANSPORTEcadastro);
  end;
end;

class procedure TfrmMDFEnfeCADASTROunidTRANSPORTEcadastro.Alterar;
begin
  frmMDFEnfeCADASTROunidTRANSPORTEcadastro := TfrmMDFEnfeCADASTROunidTRANSPORTEcadastro.Create(Nil);
  try
    frmMDFEnfeCADASTROunidTRANSPORTEcadastro.FOperacao := TEditar;
    frmMDFEnfeCADASTROunidTRANSPORTEcadastro.btnConfirmar.Enabled := False;
    frmMDFEnfeCADASTROunidTRANSPORTEcadastro.ID_IDENTIFICACAO.Enabled := False;

    frmMDFEnfeCADASTROunidTRANSPORTEcadastro.ShowModal;
  finally
    FreeAndNil(frmMDFEnfeCADASTROunidTRANSPORTEcadastro);
  end;
end;


end.
