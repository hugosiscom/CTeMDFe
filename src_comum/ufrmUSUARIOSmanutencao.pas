unit ufrmUSUARIOSmanutencao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmDefaultConsulta, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  ACBrBase, ACBrEnterTab, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid,
  Vcl.ComCtrls, JvExComCtrls, JvStatusBar, Vcl.DBCtrls, JvDBControls, JvLabel,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, JvExMask, JvToolEdit, JvMaskEdit,
  JvExControls, JvSpeedButton, JvExExtCtrls, JvImage, JvExStdCtrls, JvGroupBox;

type
  TfrmUSUARIOSmanutencao = class(TfrmDefaultConsulta)
    qryDefaultID_USUARIO: TIntegerField;
    qryDefaultUSUARIO: TStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUSUARIOSmanutencao: TfrmUSUARIOSmanutencao;

implementation

{$R *.dfm}

uses ufrmUSUARIOScadastro, udtmDefault;

procedure TfrmUSUARIOSmanutencao.FormCreate(Sender: TObject);
begin
  inherited;
  TabelaNome    := 'USUARIO';
  TabelaCpChave := 'ID_USUARIO';
  FormCadastro  := TfrmUSUARIOScadastro;
end;

end.
