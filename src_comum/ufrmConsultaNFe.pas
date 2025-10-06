unit ufrmConsultaNFe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Mask, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, ACBrBase, ACBrEnterTab;

type
  TFrmConsultaNFe = class(TForm)
    Label4: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    StatusBar1: TStatusBar;
    DBGrid1: TDBGrid;
    edtnumero: TMaskEdit;
    edtcliente: TEdit;
    edtdatainic: TMaskEdit;
    edtdatafin: TMaskEdit;
    BtSair: TBitBtn;
    BtConsultar: TBitBtn;
    ACBrEnterTab1: TACBrEnterTab;
    procedure BtSairClick(Sender: TObject);
    procedure BtConsultarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ChaveNFe :String;
    Peso     :Double;
    Valor    :Double;
  end;

var
  FrmConsultaNFe: TFrmConsultaNFe;

implementation

{$R *.dfm}

uses udtmDefault;

procedure TFrmConsultaNFe.BtConsultarClick(Sender: TObject);
begin
  dtmDefault.SqlConsultaNFe.Close;
  dtmDefault.SqlConsultaNFe.SQL.Clear;
  dtmDefault.SqlConsultaNFe.SQL.Text :=
  ' select NF.NFNUMERO,NF.DATAMOV,NF.serie, nf.totalgeral, nf.chave_acesso, nf.peso_bruto,cl.nome '+
  ' from NFVENDAS NF                                                                              '+
  ' inner join CLIENTE CL on cl.codcliente = nf.codcliente                                        '+
  ' where  NF.CODEMPRESA=:ID_EMPRESA and NF.COD_NATUREZA <> '''' and NF.MODELO_NF=''55''          ';

   if (edtdatainic.Text <>'  /  /    ') and (edtdatafin.text <>'  /  /    ')  then
      begin
        dtmDefault.SqlConsultaNFe.SQL.Text:=dtmDefault.SqlConsultaNFe.SQL.Text+' and NF.Datamov between :VarDataI and  :VarDataF ';
        dtmDefault.SqlConsultaNFe.ParamByName('VarDataI').AsDate:=StrToDate(edtdatainic.text);
        dtmDefault.SqlConsultaNFe.ParamByName('VarDataF').AsDate:=StrToDate(edtdatafin.text);
      end;
  if (edtnumero.text <> '') then
     begin
       dtmDefault.SqlConsultaNFe.SQL.Text:=dtmDefault.SqlConsultaNFe.SQL.Text+' and NF.nfnumero='+ (edtnumero.text);
     end;
  dtmDefault.SqlConsultaNFe.Open();
end;

procedure TFrmConsultaNFe.BtSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmConsultaNFe.DBGrid1DblClick(Sender: TObject);
begin
  Peso  := 0;
  Valor := 0;
  if (dtmDefault.SqlConsultaNFe.Active) and (not dtmDefault.SqlConsultaNFe.IsEmpty) then
     begin
       ChaveNFe := dtmDefault.SqlConsultaNFeCHAVE_ACESSO.AsString;
       Peso     :=  dtmDefault.SqlConsultaNFePESO_BRUTO.AsFloat;
       Valor    :=  dtmDefault.SqlConsultaNFeTOTALGERAL.AsCurrency;
     end;
  Close;
end;

procedure TFrmConsultaNFe.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_ESCAPE) then
    Close;
end;

end.
