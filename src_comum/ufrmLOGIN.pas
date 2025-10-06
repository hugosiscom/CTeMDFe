unit ufrmLOGIN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, ACBrBase, ACBrEnterTab;

type
  TfrmLogin = class(TForm)
    imgFundo: TImage;
    EdtUsuario: TLabeledEdit;
    EdtSenha: TLabeledEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ACBrEnterTab1: TACBrEnterTab;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

uses udtmDefault, uclassUSUARIO, ufrmPrincipal;

procedure TfrmLogin.BitBtn1Click(Sender: TObject);
var
  Usuario :TUSUARIOINFORMACOES;
begin
  if EdtUsuario.Text = '' then
     begin
       Application.MessageBox('Atenção... Usuário invalida ','Siscomsoft', MB_ok+MB_ICONERROR);
       exit
     end;

  if EdtSenha.Text = '' then
     begin
       Application.MessageBox('Atenção... Senha invalida ','Siscomsoft', MB_ok+MB_ICONERROR);
       exit
     end;
     Usuario := oUsuario.ValidaUsuario(EdtUsuario.Text,EdtSenha.Text);
   if Usuario.ID_USUARIO >0 then
      begin
        frmprincipal.show;
        frmLogin.Release;
       end
      else
      begin
        Application.MessageBox('Atenção... Usuário, Senha invalida ','Siscomsoft', MB_ok+MB_ICONERROR);
      end;
end;

procedure TfrmLogin.BitBtn2Click(Sender: TObject);
begin
  application.Terminate;
end;

end.
