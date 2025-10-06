unit ufrmVEICULOScadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmDefaultCadastro, Data.DB, ACBrBase,
  ACBrEnterTab, Vcl.ComCtrls, JvExComCtrls, JvStatusBar, JvComCtrls,
  JvExControls, JvSpeedButton, Vcl.ExtCtrls, Vcl.StdCtrls, JvgGroupBox,
  Vcl.Mask, Vcl.DBCtrls, JvDBLookup, JvExStdCtrls, JvCombobox, JvDBCombobox,
  JvExMask, JvToolEdit, JvMaskEdit, JvDBControls, JvBaseEdits;

type
  TfrmVEICULOScadastro = class(TfrmDefaultCadastro)
    JvgGroupBox1: TJvgGroupBox;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBText1: TDBText;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    ID_CIDADES_UF: TJvDBLookupCombo;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    VEICULO_TIPO_CARROCERIA: TJvDBComboBox;
    VEICULO_TIPO_RODADO: TJvDBComboBox;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label41: TLabel;
    EMI_N_PROP_TIPO: TJvDBComboBox;
    Label7: TLabel;
    Label13: TLabel;
    DBEdit8: TDBEdit;
    Label14: TLabel;
    Label15: TLabel;
    VALOR_UNITARIO: TJvDBCalcEdit;
    FRETE_UNITARIO: TJvDBCalcEdit;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVEICULOScadastro: TfrmVEICULOScadastro;

implementation

{$R *.dfm}

uses udtmDefault;

end.
