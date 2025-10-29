unit ufrmMDFEsegurosCADASTRO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmDefaultCadastro, Data.DB, ACBrBase,
  ACBrEnterTab, Vcl.ComCtrls, JvExComCtrls, JvStatusBar, JvComCtrls,
  JvExControls, JvSpeedButton, Vcl.ExtCtrls, Vcl.StdCtrls, JvExStdCtrls,
  JvCombobox, JvDBCombobox, JvgGroupBox, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Mask, JvExMask, JvToolEdit, JvMaskEdit, JvDBControls, Vcl.Grids,
  Vcl.DBGrids, JvExDBGrids, JvDBGrid;

type
  TfrmMDFEsegurosCADASTRO = class(TfrmDefaultCadastro)
    JvgGroupBox8: TJvgGroupBox;
    Label23: TLabel;
    Label1: TLabel;
    JvgGroupBox1: TJvgGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    JvDBComboBox1: TJvDBComboBox;
    Label4: TLabel;
    ID_CNPJCPF: TJvDBMaskEdit;
    CNPJ: TJvDBMaskEdit;
    APOLICE: TJvDBMaskEdit;
    NOME: TJvDBMaskEdit;
    JvgGroupBox2: TJvgGroupBox;
    Panel1: TPanel;
    btnNUMAVERBACAOexcluir: TJvSpeedButton;
    btnNUMAVERBACAOincluir: TJvSpeedButton;
    gridLocalCarregamento: TJvDBGrid;
    Label5: TLabel;
    NUM_AVERBACAO: TJvMaskEdit;
    dtstabMDFE_SEGUROS_AVERBACAO: TDataSource;
    GroupBox1: TGroupBox;
    edtValorSeguro: TJvDBMaskEdit;
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnNUMAVERBACAOincluirClick(Sender: TObject);
    procedure btnNUMAVERBACAOexcluirClick(Sender: TObject);
    procedure dtsDefaultDataChange(Sender: TObject; Field: TField);
  private
  public
    class procedure Novo;
    class procedure Alterar;
  end;

var
  frmMDFEsegurosCADASTRO: TfrmMDFEsegurosCADASTRO;

implementation

uses
  udtmMDFE;

{$R *.dfm}

{ TfrmMDFEsegurosCADASTRO }

procedure TfrmMDFEsegurosCADASTRO.btnCancelarClick(Sender: TObject);
begin
  TFDQuery(dtsDefault.DataSet).Cancel;

  FFecharOK := True;

  Self.Close;
  Self.ModalResult := mrCancel;
end;

procedure TfrmMDFEsegurosCADASTRO.btnConfirmarClick(Sender: TObject);
begin
  FFecharOK := True;

  try
    case FOperacao of
      TIncluir,
      TEditar:
        TFDQuery(dtsDefault.DataSet).Post;
    end;

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

procedure TfrmMDFEsegurosCADASTRO.btnNUMAVERBACAOexcluirClick(Sender: TObject);
begin
  if dtsDefault.DataSet.State in [dsBrowse] then
    dtsDefault.DataSet.Edit;

  TFDQuery(dtstabMDFE_SEGUROS_AVERBACAO.DataSet).Delete;
end;

procedure TfrmMDFEsegurosCADASTRO.btnNUMAVERBACAOincluirClick(Sender: TObject);
begin
  if TFDQuery(dtsDefault.DataSet).State in [dsInsert] then
  begin
    TFDQuery(dtsDefault.DataSet).Post;
    TFDQuery(dtsDefault.DataSet).Edit;
  end;

  if TFDQuery(dtsDefault.DataSet).State in [dsBrowse,dsEdit] then
  begin
    if NUM_AVERBACAO.Text = '' then
      NUM_AVERBACAO.SetFocus;

    try
      TFDQuery(dtstabMDFE_SEGUROS_AVERBACAO.DataSet).Append;
      TFDQuery(dtstabMDFE_SEGUROS_AVERBACAO.DataSet).FieldByName('NAVER').Value := NUM_AVERBACAO.Text;
      TFDQuery(dtstabMDFE_SEGUROS_AVERBACAO.DataSet).Prepare;
      TFDQuery(dtstabMDFE_SEGUROS_AVERBACAO.DataSet).Post;
    except on e:exception do
      begin
        TFDQuery(dtstabMDFE_SEGUROS_AVERBACAO.DataSet).Cancel;
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

procedure TfrmMDFEsegurosCADASTRO.dtsDefaultDataChange(Sender: TObject;
  Field: TField);
begin
  if Assigned(dtstabMDFE_SEGUROS_AVERBACAO.DataSet) then
  begin
    btnNUMAVERBACAOexcluir.Enabled := TFDQuery(dtstabMDFE_SEGUROS_AVERBACAO.DataSet).RecordCount > 0;
  end;
end;

class procedure TfrmMDFEsegurosCADASTRO.Novo;
begin
  frmMDFEsegurosCADASTRO := TfrmMDFEsegurosCADASTRO.Create(Nil);
  try
    frmMDFEsegurosCADASTRO.FOperacao := TIncluir;
    TFDQuery(frmMDFEsegurosCADASTRO.dtsDefault.DataSet).Append;

    frmMDFEsegurosCADASTRO.ShowModal;
  finally
    FreeAndNil(frmMDFEsegurosCADASTRO);
  end;
end;

class procedure TfrmMDFEsegurosCADASTRO.Alterar;
begin
  frmMDFEsegurosCADASTRO := TfrmMDFEsegurosCADASTRO.Create(Nil);
  try
    frmMDFEsegurosCADASTRO.FOperacao := TEditar;
    frmMDFEsegurosCADASTRO.ShowModal;
  finally
    FreeAndNil(frmMDFEsegurosCADASTRO);
  end;
end;

end.
