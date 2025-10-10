unit uConsultaCliente;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, db, StdCtrls, ExtCtrls, Buttons, ComCtrls, Vcl.DBCtrls, IniFiles, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, UUtilidade;

type
  TFrmConsultaCliente = class(TForm)
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox2: TGroupBox;
    Rgbpesquisa: TRadioGroup;
    edtpesquisa: TEdit;
    lblnome: TLabel;
    btnconsulta: TBitBtn;
    btnok: TBitBtn;
    StatusBar1: TStatusBar;
    Radiotipo: TRadioGroup;
    CbxInativo: TCheckBox;
    GbxTipo: TGroupBox;
    RbtFornecedor: TRadioButton;
    RbtCliente: TRadioButton;
    RbtTodos: TRadioButton;
    RbtTransp: TRadioButton;
    RbtFuncionario: TRadioButton;
    fdqConsultaClientes: TFDQuery;
    fdqConsultaClientesID_EMPRESA: TIntegerField;
    fdqConsultaClientesID_PESSOA: TIntegerField;
    fdqConsultaClientesID_JURIDICA: TIntegerField;
    fdqConsultaClientesID_ATIVO: TIntegerField;
    fdqConsultaClientesID_PRODUTOR: TIntegerField;
    fdqConsultaClientesID_FORNECEDOR: TIntegerField;
    fdqConsultaClientesID_TRANSPORTADORA: TIntegerField;
    fdqConsultaClientesID_TIPO_CONTRIBUINTE: TIntegerField;
    fdqConsultaClientesRAZAOSOCIAL: TStringField;
    fdqConsultaClientesNOMEFANTASIA: TStringField;
    fdqConsultaClientesCPF_CNPJ: TStringField;
    fdqConsultaClientesIE_RG: TStringField;
    fdqConsultaClientesIM: TStringField;
    fdqConsultaClientesENDERECO: TStringField;
    fdqConsultaClientesNUMERO: TStringField;
    fdqConsultaClientesCOMPLEMENTO: TStringField;
    fdqConsultaClientesBAIRRO: TStringField;
    fdqConsultaClientesCEP: TStringField;
    fdqConsultaClientesID_CIDADES_UF: TStringField;
    fdqConsultaClientesID_CIDADES_IBGE: TIntegerField;
    fdqConsultaClientesTELEFONEFIXO: TStringField;
    fdqConsultaClientesCELULAR: TStringField;
    fdqConsultaClientesTELEFONETRABALHO: TStringField;
    fdqConsultaClientesEMAIL: TStringField;
    fdqConsultaClientesCONTATO: TStringField;
    fdqConsultaClientesNASCIMENTO_ABERTURA: TDateField;
    fdqConsultaClientesESTADOCIVIL: TStringField;
    fdqConsultaClientesCONJUGE: TStringField;
    fdqConsultaClientesCONJUGE_NASCIMENTO: TDateField;
    fdqConsultaClientesMAE: TStringField;
    fdqConsultaClientesPAI: TStringField;
    fdqConsultaClientesSEXO: TStringField;
    fdqConsultaClientesOBSERVACOES: TStringField;
    fdqConsultaClientesCADASTRO_DATA: TSQLTimeStampField;
    fdqConsultaClientesALTERACAO_DATA: TSQLTimeStampField;
    fdqConsultaClientesFOTO: TBlobField;
    fdqConsultaClientesCBR_HISTORICO: TStringField;
    fdqConsultaClientesCBR_VALOR: TFMTBCDField;
    fdqCliente: TFDQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtcodigoKeyPress(Sender: TObject; var Key: Char);
    procedure btnconsultaClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btnokClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
    procedure LerConfig;
    procedure GravarConfig;
  public
    { Public declarations }
  end;

var
  FrmConsultaCliente: TFrmConsultaCliente;

implementation

{$R *.DFM}

procedure TFrmConsultaCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  GravarConfig;
  if fdqConsultaClientes.Active then
    fdqConsultaClientes.Close;
  if fdqCliente.Active then
    fdqCliente.Close;
  FrmConsultaCliente.Release;
  FrmConsultaCliente := nil; // esvazia memoria
  Action := caFree; // Destroi o form
end;

procedure TFrmConsultaCliente.edtcodigoKeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in ['0' .. '9', #27, #8]) then
    Key := #0;
end;

procedure TFrmConsultaCliente.btnconsultaClick(Sender: TObject);
begin
  if edtpesquisa.Text = '' then
  begin
    ShowMessage('Conteúdo para pesquisa não informado!');
    edtpesquisa.setfocus;
    exit;
  end;
  fdqConsultaClientes.Close;

  if not CbxInativo.Checked then
    fdqConsultaClientes.SQL.Text := fdqConsultaClientes.SQL.Text + ' and (p.ID_ATIVO = 0 or (p.ID_ATIVO is Null))';
  case Rgbpesquisa.itemindex of
    0:
      begin
        try
          fdqConsultaClientes.SQL.Text := fdqConsultaClientes.SQL.Text + ' and p.ID_PESSOA = :ID_PESSOA ';

          fdqConsultaClientes.ParamByName('ID_PESSOA').AsInteger := strtoint(edtpesquisa.Text);
          fdqConsultaClientes.Open;
        except
          ShowMessage('Conteúdo invalido para pesquisa!');
          edtpesquisa.setfocus;
          exit;
        end;
      end;
    1:
      begin
        fdqConsultaClientes.SQL.Text := fdqConsultaClientes.SQL.Text +
          ' and (p.RAZAOSOCIAL Like:NOME or p.NOMEFANTASIA like:NOME) ';
        fdqConsultaClientes.SQL.Text := fdqConsultaClientes.SQL.Text + ' order by CLIENTE.RAZAOSOCIAL ';

        if Radiotipo.itemindex = 0 then
          fdqConsultaClientes.ParamByName('NOME').AsString := edtpesquisa.Text + '%'
        else
          fdqConsultaClientes.ParamByName('NOME').AsString := '%' + edtpesquisa.Text + '%';

        fdqConsultaClientes.Open;
      end;
    2:
      begin
        try
          fdqConsultaClientes.SQL.Text := fdqConsultaClientes.SQL.Text + ' and CLIENTE.CPF_CNPJ =:CPF_CNPJ ';
          fdqConsultaClientes.ParamByName('CPF_CNPJ').AsString := Copy(SoNumero(edtpesquisa.Text), 1, 14);
          fdqConsultaClientes.Open;
        except
          ShowMessage('Conteúdo invalido para pesquisa!');
          edtpesquisa.setfocus;
          exit;
        end;
      end;

    { 3:
      begin
      fdqConsultaClientes.SQL.Text := fdqConsultaClientes.SQL.Text + ' and CLIENTE.CIDADE like:CIDADE ';
      fdqConsultaClientes.ParamByName('CIDADE').AsString := edtpesquisa.Text + '%';
      fdqConsultaClientes.Open;
      end;
      4:
      begin
      fdqConsultaClientes.SQL.Text := fdqConsultaClientes.SQL.Text + ' and CLIENTE.SETOR like:SETOR ';
      fdqConsultaClientes.ParamByName('SETOR').AsString := edtpesquisa.Text + '%';
      fdqConsultaClientes.Open;
      end; }
  end;
  if (fdqConsultaClientes.RecordCount > 0) then
    DBGrid1.setfocus;
  if fdqConsultaClientes.RecNo = 0 then
    ShowMessage('Cliente não encontrado!');
end;

procedure TFrmConsultaCliente.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  edtpesquisa.Text := Key;
end;

procedure TFrmConsultaCliente.DBGrid1DblClick(Sender: TObject);
begin
  fdqCliente.Close;
  if not CbxInativo.Checked then
    fdqCliente.SQL.Text := fdqCliente.SQL.Text + ' and (p.ID_ATIVO <> 1 or p.ID_INATIVO is Null) ';

  begin
    fdqCliente.ParamByName('ID_PESSOA').AsInteger := fdqConsultaClientesID_PESSOA.AsInteger;
  end;

  fdqCliente.Open;

  fdqCliente.Close;
end;

procedure TFrmConsultaCliente.btnokClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmConsultaCliente.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_F9) then
  begin
    btnconsulta.onClick(Sender);
  end;

  if (Key = VK_ESCAPE) then
    Close;

end;

procedure TFrmConsultaCliente.FormShow(Sender: TObject);
begin
  LerConfig;
end;

procedure TFrmConsultaCliente.GravarConfig;
var
  IniFile: String;
  Ini: TIniFile;
begin
  IniFile := ChangeFileExt(ExtractFilePath(ParamStr(0)) + 'connections', '.ini');
  Ini := TIniFile.Create(IniFile);
  try
    Ini.WriteInteger('ConsulCli', 'Contem', Radiotipo.itemindex);
    Ini.WriteInteger('ConsulCli', 'TipoPes', Rgbpesquisa.itemindex);
    if RbtFornecedor.Checked then
      Ini.WriteInteger('ConsulCli', 'Tipo', 0);
    if RbtCliente.Checked then
      Ini.WriteInteger('ConsulCli', 'Tipo', 1);
    if RbtTransp.Checked then
      Ini.WriteInteger('ConsulCli', 'Tipo', 2);
    if RbtFuncionario.Checked then
      Ini.WriteInteger('ConsulCli', 'Tipo', 3);
    if RbtTodos.Checked then
      Ini.WriteInteger('ConsulCli', 'Tipo', 4);

  finally
    Ini.Free;
  end;
end;

procedure TFrmConsultaCliente.LerConfig;
var
  IniFile: String;
  Ini: TIniFile;
  TipoPes: Integer;
begin
  IniFile := ChangeFileExt(ExtractFilePath(ParamStr(0)) + 'connections', '.ini');
  Ini := TIniFile.Create(IniFile);
  try
    Radiotipo.itemindex := Ini.ReadInteger('ConsulCli', 'Contem', 0);
    Rgbpesquisa.itemindex := Ini.ReadInteger('ConsulCli', 'TipoPes', 0);
    TipoPes := Ini.ReadInteger('ConsulCli', 'Tipo', 0);
    if TipoPes = 0 then
      RbtFornecedor.Checked := true;
    if TipoPes = 1 then
      RbtCliente.Checked := true;
    if TipoPes = 2 then
      RbtTransp.Checked := true;
    if TipoPes = 3 then
      RbtFuncionario.Checked := true;
    if TipoPes = 4 then
      RbtTodos.Checked := true;
  finally
    Ini.Free;
  end;
end;

procedure TFrmConsultaCliente.DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_INSERT) then
  begin
    DBGrid1.OnDblClick(Sender);
  end;
end;

end.
