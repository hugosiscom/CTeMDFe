unit ufrmMDFEreboqueCADASTRO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmDefaultCadastro, Data.DB, ACBrBase,
  ACBrEnterTab, Vcl.ComCtrls, JvExComCtrls, JvStatusBar, JvComCtrls,
  JvExControls, JvSpeedButton, Vcl.ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, JvExStdCtrls,
  JvCombobox, JvDBCombobox, JvDBLookup, Vcl.Mask, JvExMask, JvToolEdit,
  JvMaskEdit, JvDBControls, JvgGroupBox, JvBaseEdits, Vcl.DBCtrls;

type
  TfrmMDFEreboqueCADASTRO = class(TfrmDefaultCadastro)
    dtsCIDADES_UF: TDataSource;
    JvgGroupBox15: TJvgGroupBox;
    Label16: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label38: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    INTT: TJvDBMaskEdit;
    ID_TIPO_RODADO: TJvDBComboBox;
    PLACA: TJvDBMaskEdit;
    RENAVAN: TJvDBMaskEdit;
    CAPKG: TJvDBCalcEdit;
    CAPM3: TJvDBCalcEdit;
    TARA: TJvDBCalcEdit;
    VEICULO_UF: TDBLookupComboBox;
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
  public
    class procedure Novo;
    class procedure Alterar;
  end;

var
  frmMDFEreboqueCADASTRO: TfrmMDFEreboqueCADASTRO;

implementation

uses
  udtmMDFE;

{$R *.dfm}

{ TfrmMDFEreboqueCADASTRO }

class procedure TfrmMDFEreboqueCADASTRO.Alterar;
begin
  frmMDFEreboqueCADASTRO := TfrmMDFEreboqueCADASTRO.Create(Nil);
  try
    frmMDFEreboqueCADASTRO.FOperacao := TEditar;
    frmMDFEreboqueCADASTRO.ShowModal;
  finally
    FreeAndNil(frmMDFEreboqueCADASTRO);
  end;
end;

procedure TfrmMDFEreboqueCADASTRO.btnCancelarClick(Sender: TObject);
begin
  TFDQuery(dtsDefault.DataSet).Cancel;

  FFecharOK := True;

  Self.Close;
  Self.ModalResult := mrCancel;
end;

procedure TfrmMDFEreboqueCADASTRO.btnConfirmarClick(Sender: TObject);
begin
  FFecharOK := True;

  try
    case FOperacao of
      TIncluir,
      TEditar:TFDQuery(dtsDefault.DataSet).Post;
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

class procedure TfrmMDFEreboqueCADASTRO.Novo;
begin
  frmMDFEreboqueCADASTRO := TfrmMDFEreboqueCADASTRO.Create(Nil);
  try
    frmMDFEreboqueCADASTRO.FOperacao := TIncluir;
    TFDQuery(frmMDFEreboqueCADASTRO.dtsDefault.DataSet).Append;

    frmMDFEreboqueCADASTRO.ShowModal;
  finally
    FreeAndNil(frmMDFEreboqueCADASTRO);
  end;
end;

end.
