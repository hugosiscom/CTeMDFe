unit ufrmVEICULOSmanutencao;

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
  JvExControls, JvSpeedButton, JvExExtCtrls, JvImage, JvExStdCtrls, JvGroupBox,
  Vcl.Buttons;

type
  TfrmVEICULOSmanutencao = class(TfrmDefaultConsulta)
    qryDefaultID_EMPRESA: TIntegerField;
    qryDefaultID_VEICULO: TIntegerField;
    qryDefaultRNTRC: TStringField;
    qryDefaultCOD_AGENDA_PORT: TStringField;
    qryDefaultCODIGO_INTERNO: TStringField;
    qryDefaultTIPO_CARROCERIA: TIntegerField;
    qryDefaultPLACA: TStringField;
    qryDefaultUF: TStringField;
    qryDefaultRENAVAN: TStringField;
    qryDefaultTIPO_RODADO: TIntegerField;
    qryDefaultCAPACIDADE_KG: TFMTBCDField;
    qryDefaultCAPACIDADE_M3: TFMTBCDField;
    qryDefaultDESCRICAO: TStringField;
    qryDefaultTIPO_VEICULO: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure qryDefaultAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVEICULOSmanutencao: TfrmVEICULOSmanutencao;

implementation

{$R *.dfm}

uses udtmDefault, ufrmVEICULOScadastro, uclassEMPRESA;

procedure TfrmVEICULOSmanutencao.FormCreate(Sender: TObject);
begin
  inherited;
  TabelaNome    := 'VEICULO';
  TabelaCpChave := 'ID_VEICULO';
  FormCadastro  := TfrmVEICULOScadastro;
end;

procedure TfrmVEICULOSmanutencao.qryDefaultAfterOpen(DataSet: TDataSet);
begin
  inherited;
  TFDQuery(DataSet).ParamByName('ID_EMPRESA').AsInteger := oEmpresa.ID;
end;

end.
