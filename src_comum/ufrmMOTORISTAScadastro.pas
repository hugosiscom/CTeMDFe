unit ufrmMOTORISTAScadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmDefaultCadastro, Data.DB, ACBrBase,
  ACBrEnterTab, Vcl.ComCtrls, JvExComCtrls, JvStatusBar, JvComCtrls,
  JvExControls, JvSpeedButton, Vcl.ExtCtrls, Vcl.StdCtrls, JvgGroupBox,
  Vcl.Mask, JvExMask, JvToolEdit, JvMaskEdit, JvDBControls, JvLabel, JvCheckedMaskEdit, JvDatePickerEdit, JvDBDatePickerEdit;

type
  TfrmMOTORISTAScadastro = class(TfrmDefaultCadastro)
    JvgGroupBox1: TJvgGroupBox;
    lbRazaoSocial: TJvLabel;
    NOME: TJvDBMaskEdit;
    CPF: TJvDBMaskEdit;
    lbCNPJ: TJvLabel;
    JvLabel5: TJvLabel;
    DATA_NASCIMENTO: TJvDBDatePickerEdit;
    CNH: TGroupBox;
    JvLabel1: TJvLabel;
    RENACH: TJvDBMaskEdit;
    JvLabel2: TJvLabel;
    NUM_REGISTRO: TJvDBMaskEdit;
    JvLabel3: TJvLabel;
    COD_SEGURANCA: TJvDBMaskEdit;
    JvLabel4: TJvLabel;
    CATEGORIA: TJvDBMaskEdit;
    Endereço: TTabSheet;
    CELULAR: TJvDBMaskEdit;
    JvLabel6: TJvLabel;
    gbEndereco: TGroupBox;
    Label6: TLabel;
    End_CEP: TJvDBMaskEdit;
    Label5: TLabel;
    End_Cod_Municipio: TJvDBMaskEdit;
    Label4: TLabel;
    End_Bairro: TJvDBMaskEdit;
    Label1: TLabel;
    End_Rua: TJvDBMaskEdit;
    Label2: TLabel;
    Label3: TLabel;
    End_Complemento: TJvDBMaskEdit;
    End_Numero: TJvDBMaskEdit;
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
