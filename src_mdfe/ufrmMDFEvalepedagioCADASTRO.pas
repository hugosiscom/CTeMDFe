unit ufrmMDFEvalepedagioCADASTRO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmDefaultCadastro, Data.DB, ACBrBase,
  ACBrEnterTab, Vcl.ComCtrls, JvExComCtrls, JvStatusBar, JvComCtrls,
  JvExControls, JvSpeedButton, Vcl.ExtCtrls, JvBaseEdits, JvDBControls,
  Vcl.StdCtrls, Vcl.Mask, JvExMask, JvToolEdit, JvMaskEdit, JvgGroupBox;

type
  TfrmMDFEvalepedagioCADASTRO = class(TfrmDefaultCadastro)
    JvgGroupBox15: TJvgGroupBox;
    Label16: TLabel;
    Label35: TLabel;
    CNPJFORN: TJvDBMaskEdit;
    VALOR: TJvDBCalcEdit;
    NCOMPRA: TJvDBMaskEdit;
    Label3: TLabel;
    CNPJPG: TJvDBMaskEdit;
    Label4: TLabel;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
  private
  public
    class procedure Novo;
    class procedure Alterar;
  end;

var
  frmMDFEvalepedagioCADASTRO: TfrmMDFEvalepedagioCADASTRO;

implementation

uses
  udtmMDFE, FireDAC.Comp.Client;

{$R *.dfm}

{ TfrmMDFEvalepedagioCADASTRO }

class procedure TfrmMDFEvalepedagioCADASTRO.Alterar;
begin
  frmMDFEvalepedagioCADASTRO := TfrmMDFEvalepedagioCADASTRO.Create(Nil);
  try
    frmMDFEvalepedagioCADASTRO.FOperacao := TEditar;
    frmMDFEvalepedagioCADASTRO.ShowModal;
  finally
    FreeAndNil(frmMDFEvalepedagioCADASTRO);
  end;
end;

procedure TfrmMDFEvalepedagioCADASTRO.btnCancelarClick(Sender: TObject);
begin
  TFDQuery(dtsDefault.DataSet).Cancel;

  FFecharOK := True;

  Self.Close;
  Self.ModalResult := mrCancel;
end;

procedure TfrmMDFEvalepedagioCADASTRO.btnConfirmarClick(Sender: TObject);
begin
  FFecharOK := True;

  try
    case FOperacao of
      TIncluir:
        begin
          if Application.MessageBox(PChar('Confirma inclusão do registro ?' + sLineBreak + sLineBreak)
          ,'Confirmação!',MB_ICONWARNING + MB_YESNO) = mrNo then
            Exit;

          TFDQuery(dtsDefault.DataSet).Post;
        end;
      TEditar:
        begin
          if Application.MessageBox(PChar('Confirma alteração do registro ?' + sLineBreak + sLineBreak)
          ,'Confirmação!',MB_ICONWARNING + MB_YESNO) = mrNo then
            Exit;

          TFDQuery(dtsDefault.DataSet).Post;
        end;
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

class procedure TfrmMDFEvalepedagioCADASTRO.Novo;
begin
  frmMDFEvalepedagioCADASTRO := TfrmMDFEvalepedagioCADASTRO.Create(Nil);
  try
    frmMDFEvalepedagioCADASTRO.FOperacao := TIncluir;
    TFDQuery(frmMDFEvalepedagioCADASTRO.dtsDefault.DataSet).Append;

    frmMDFEvalepedagioCADASTRO.ShowModal;
  finally
    FreeAndNil(frmMDFEvalepedagioCADASTRO);
  end;
end;

end.
