unit ufrmUSUARIOScadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmDefaultCadastro, Data.DB, ACBrBase,
  ACBrEnterTab, Vcl.ComCtrls, JvExComCtrls, JvStatusBar, JvComCtrls,
  JvExControls, JvSpeedButton, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, JvExMask,
  JvToolEdit, JvMaskEdit, JvDBControls, JvLabel, JvgGroupBox, Vcl.DBCtrls;

type
  TfrmUSUARIOScadastro = class(TfrmDefaultCadastro)
    JvgGroupBox1: TJvgGroupBox;
    lbRazaoSocial: TJvLabel;
    lbCNPJ: TJvLabel;
    EdtUsuario: TJvDBMaskEdit;
    JvLabel1: TJvLabel;
    DBText1: TDBText;
    EdtCofirmacao: TEdit;
    JvLabel2: TJvLabel;
    Edtsenha: TDBEdit;
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUSUARIOScadastro: TfrmUSUARIOScadastro;

implementation

{$R *.dfm}

uses udtmDefault;

procedure TfrmUSUARIOScadastro.btnConfirmarClick(Sender: TObject);
begin

  if TipoOperacao <> TExcluir then
   if Edtsenha.text <> EdtCofirmacao.text then
     begin
       ShowMessage('Senha não confere!');
       exit
     end;

  inherited;

end;

procedure TfrmUSUARIOScadastro.FormCreate(Sender: TObject);
begin
  inherited;
  EdtCofirmacao.CharCase := ecNormal;
end;

end.
