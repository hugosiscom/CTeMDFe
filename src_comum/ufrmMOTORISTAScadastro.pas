unit ufrmMOTORISTAScadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmDefaultCadastro, Data.DB, ACBrBase,
  ACBrEnterTab, Vcl.ComCtrls, JvExComCtrls, JvStatusBar, JvComCtrls,
  JvExControls, JvSpeedButton, Vcl.ExtCtrls, Vcl.StdCtrls, JvgGroupBox,
  Vcl.Mask, JvExMask, JvToolEdit, JvMaskEdit, JvDBControls, JvLabel;

type
  TfrmMOTORISTAScadastro = class(TfrmDefaultCadastro)
    JvgGroupBox1: TJvgGroupBox;
    lbRazaoSocial: TJvLabel;
    RAZAOSOCIAL: TJvDBMaskEdit;
    CPF_CNPJ: TJvDBMaskEdit;
    lbCNPJ: TJvLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMOTORISTAScadastro: TfrmMOTORISTAScadastro;

implementation

{$R *.dfm}

uses
 udtmDefault;

end.
