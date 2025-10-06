unit ufrmMDFEnfeCADASTROunidCARGA;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmDefaultCadastro, Data.DB, ACBrBase,
  ACBrEnterTab, Vcl.ComCtrls, JvExComCtrls, JvStatusBar, JvComCtrls,
  JvExControls, JvSpeedButton, Vcl.ExtCtrls, JvMaskEdit, Vcl.Grids, Vcl.DBGrids,
  JvExDBGrids, JvDBGrid, JvBaseEdits, JvDBControls, Vcl.StdCtrls, JvExStdCtrls,
  JvCombobox, JvDBCombobox, Vcl.Mask, JvExMask, JvToolEdit, JvgGroupBox;

type
  TfrmMDFEnfeCADASTROunidCARGAcadastro = class(TfrmDefaultCadastro)
    JvgGroupBox15: TJvgGroupBox;
    Label16: TLabel;
    Município: TLabel;
    Label29: TLabel;
    ID_IDENTIFICADOR: TJvDBMaskEdit;
    ID_TIPO: TJvDBComboBox;
    QUANTIDADE: TJvDBCalcEdit;
    JvgGroupBox12: TJvgGroupBox;
    Label9: TLabel;
    Panel4: TPanel;
    btnLacresExcluir: TJvSpeedButton;
    btnLacresIncluir: TJvSpeedButton;
    JvDBGrid2: TJvDBGrid;
    N_LACRE: TJvMaskEdit;
    dtstabMDFE_NFE_CARGTRANS_LACRE: TDataSource;
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnLacresIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnLacresExcluirClick(Sender: TObject);
    procedure dtstabMDFE_NFE_CARGTRANS_LACREDataChange(Sender: TObject;
      Field: TField);
  private
    FOperacao: TOperacao;
  public
    class procedure Novo;
    class procedure Alterar;
  end;

var
  frmMDFEnfeCADASTROunidCARGAcadastro: TfrmMDFEnfeCADASTROunidCARGAcadastro;

implementation

uses
  udtmMDFE, FireDAC.Comp.Client;

{$R *.dfm}

{ TfrmMDFEcteCADASTROunidCARGA }

class procedure TfrmMDFEnfeCADASTROunidCARGAcadastro.Alterar;
begin
  frmMDFEnfeCADASTROunidCARGAcadastro := TfrmMDFEnfeCADASTROunidCARGAcadastro.Create(Nil);
  try
    frmMDFEnfeCADASTROunidCARGAcadastro.FOperacao := TEditar;
    frmMDFEnfeCADASTROunidCARGAcadastro.btnConfirmar.Enabled := False;
    frmMDFEnfeCADASTROunidCARGAcadastro.ID_IDENTIFICADOR.Enabled := False;

    frmMDFEnfeCADASTROunidCARGAcadastro.ShowModal;
  finally
    FreeAndNil(frmMDFEnfeCADASTROunidCARGAcadastro);
  end;
end;

procedure TfrmMDFEnfeCADASTROunidCARGAcadastro.btnCancelarClick(Sender: TObject);
begin
  Self.Perform(WM_NEXTDLGCTL,0,0);

  if dtsDefault.DataSet.State in [dsInsert] then
    dtsDefault.DataSet.Cancel;

  FFecharOK := True;

  Self.Close;
  Self.ModalResult := mrCancel;
end;

procedure TfrmMDFEnfeCADASTROunidCARGAcadastro.btnConfirmarClick(Sender: TObject);
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

procedure TfrmMDFEnfeCADASTROunidCARGAcadastro.btnLacresExcluirClick(
  Sender: TObject);
begin
  TFDQuery(dtstabMDFE_NFE_CARGTRANS_LACRE.DataSet).Delete;
end;

procedure TfrmMDFEnfeCADASTROunidCARGAcadastro.btnLacresIncluirClick(Sender: TObject);
begin
  if TFDQuery(dtsDefault.DataSet).State in [dsInsert, dsEdit] then
    TFDQuery(dtsDefault.DataSet).Post;

  if Trim(N_LACRE.Text) = '' then
  begin
    N_LACRE.SetFocus;
    Exit;
  end;

  try
    TFDQuery(dtstabMDFE_NFE_CARGTRANS_LACRE.DataSet).Append;
    TFDQuery(dtstabMDFE_NFE_CARGTRANS_LACRE.DataSet).FieldByName('ID_LACRE').Value := N_LACRE.Text;
    TFDQuery(dtstabMDFE_NFE_CARGTRANS_LACRE.DataSet).Prepare;
    TFDQuery(dtstabMDFE_NFE_CARGTRANS_LACRE.DataSet).Post;

    N_LACRE.Text := EmptyStr;
  except on e:exception do
    begin
      TFDQuery(dtstabMDFE_NFE_CARGTRANS_LACRE.DataSet).Cancel;

      raise Exception.Create(E.Message);
    end;
  end;
end;

procedure TfrmMDFEnfeCADASTROunidCARGAcadastro.dtstabMDFE_NFE_CARGTRANS_LACREDataChange(
  Sender: TObject; Field: TField);
begin
  if Assigned(dtstabMDFE_NFE_CARGTRANS_LACRE.DataSet) then
  begin
    btnLacresExcluir.Enabled := not dtstabMDFE_NFE_CARGTRANS_LACRE.DataSet.IsEmpty;

    btnConfirmar.Enabled     :=  (FOperacao = TIncluir) and (dtstabMDFE_NFE_CARGTRANS_LACRE.DataSet.IsEmpty);
    ID_IDENTIFICADOR.Enabled :=  (FOperacao = TIncluir) and (dtstabMDFE_NFE_CARGTRANS_LACRE.DataSet.IsEmpty);
  end;
end;

procedure TfrmMDFEnfeCADASTROunidCARGAcadastro.FormCreate(Sender: TObject);
begin
  dtsDefault.DataSet := dtmMDFE.tabMDFE_NFE_CARGTRANS;
  dtstabMDFE_NFE_CARGTRANS_LACRE.DataSet := dtmMDFE.tabMDFE_NFE_CARGTRANS_LACRE;

  inherited;
end;

class procedure TfrmMDFEnfeCADASTROunidCARGAcadastro.Novo;
begin
  frmMDFEnfeCADASTROunidCARGAcadastro := TfrmMDFEnfeCADASTROunidCARGAcadastro.Create(Nil);
  try
    frmMDFEnfeCADASTROunidCARGAcadastro.FOperacao := TIncluir;
    TFDQuery(frmMDFEnfeCADASTROunidCARGAcadastro.dtsDefault.DataSet).Append;

    frmMDFEnfeCADASTROunidCARGAcadastro.ShowModal;
  finally
    FreeAndNil(frmMDFEnfeCADASTROunidCARGAcadastro);
  end;
end;

end.
