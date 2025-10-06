unit ufrmMOTORISTASmanutencao;

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
  TfrmMOTORISTASmanutencao = class(TfrmDefaultConsulta)
    qryDefaultID_EMPRESA: TIntegerField;
    qryDefaultID_MOTORISTA: TIntegerField;
    qryDefaultNOME: TStringField;
    qryDefaultCPF: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure qryDefaultAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMOTORISTASmanutencao: TfrmMOTORISTASmanutencao;

implementation

{$R *.dfm}

uses udtmDefault,uclassEMPRESA, ufrmMOTORISTAScadastro;

procedure TfrmMOTORISTASmanutencao.FormCreate(Sender: TObject);
begin
  inherited;
  TabelaNome    := 'MOTORISTA';
  TabelaCpChave := 'ID_MOTORISTA';
  FormCadastro  := TfrmMOTORISTAScadastro;

end;

procedure TfrmMOTORISTASmanutencao.qryDefaultAfterOpen(DataSet: TDataSet);
begin
  inherited;
  TFDQuery(DataSet).ParamByName('ID_EMPRESA').AsInteger := oEmpresa.ID;
end;

end.
