unit uclassTRANSPORTADORA;

interface

uses
  FireDAC.Comp.Client, Forms, SysUtils, Data.DB, System.Classes,
  uclassEMPRESA;

type
  TTRANSINFORMACOES = RECORD
  public
    ID_TRANSPORTADORA, ID_CIDADES_IBGE: Integer;
    RAZAOSOCIAL,
    NOMEFANTASIA,
    CPF_CNPJ,
    IE,
    EMAIL,
    ENDERECO,
    NUMERO,
    BAIRRO,
    COMPLEMENTO,
    CEP,
    CIDADE,
    ID_CIDADES_UF,
    TELEFONE,
    ID_SITUACAO: String
  end;

  TTransportadora = class(TObject)
  private
  public
    FInformacoes: TTRANSINFORMACOES;
    procedure Procurar(AID_TRANSPORTADORA:Integer);
    function GetNewID:Integer;
    function GetNewCODIGO:Integer;
  end;

var
  oTRANS: TTransportadora;

implementation

uses
  udtmDefault;

{ TCliente }

procedure TTransportadora.Procurar(AID_TRANSPORTADORA: Integer);
begin
  fInformacoes.ID_TRANSPORTADORA := -1;
  fInformacoes.RAZAOSOCIAL := EmptyStr;
  fInformacoes.NOMEFANTASIA := EmptyStr;
  fInformacoes.CPF_CNPJ := EmptyStr;
  fInformacoes.IE := EmptyStr;
  fInformacoes.EMAIL := EmptyStr;
  fInformacoes.ENDERECO := EmptyStr;
  fInformacoes.NUMERO := EmptyStr;
  fInformacoes.BAIRRO := EmptyStr;
  fInformacoes.COMPLEMENTO := EmptyStr;
  fInformacoes.CEP := EmptyStr;
  fInformacoes.CIDADE := EmptyStr;
  fInformacoes.ID_CIDADES_UF := EmptyStr;
  fInformacoes.ID_CIDADES_IBGE := -1;
  fInformacoes.TELEFONE := EmptyStr;
  fInformacoes.ID_SITUACAO := EmptyStr;

  try
    dtmDefault.qryTmp.Close;
    dtmDefault.qryTmp.SQL.Clear;
    dtmDefault.qryTmp.SQL.Text := 'SELECT TRANSPORTADORA.*, CIDADES.DESCRICAO AS CIDADE FROM TRANSPORTADORA LEFT JOIN CIDADES ON TRANSPORTADORA.ID_CIDADES_IBGE = CIDADES.ID_CIDADES_IBGE WHERE ID_TRANSPORTADORA = ' + AID_TRANSPORTADORA.ToString;
    dtmDefault.qryTmp.Open;

    if not dtmDefault.qryTmp.IsEmpty then
    begin
      fInformacoes.ID_TRANSPORTADORA := dtmDefault.qryTmp.FieldByName('ID_TRANSPORTADORA').AsInteger;
      fInformacoes.RAZAOSOCIAL := dtmDefault.qryTmp.FieldByName('RAZAOSOCIAL').AsString.Trim;
      fInformacoes.NOMEFANTASIA := dtmDefault.qryTmp.FieldByName('NOMEFANTASIA').AsString.Trim;
      fInformacoes.CPF_CNPJ := dtmDefault.qryTmp.FieldByName('CNPJ').AsString.Trim;
      fInformacoes.IE := dtmDefault.qryTmp.FieldByName('IE').AsString.Trim;
      fInformacoes.EMAIL := dtmDefault.qryTmp.FieldByName('EMAIL').AsString.Trim;
      fInformacoes.ENDERECO := dtmDefault.qryTmp.FieldByName('ENDERECO').AsString.Trim;
      fInformacoes.NUMERO := dtmDefault.qryTmp.FieldByName('NUMERO').AsString.Trim;
      fInformacoes.BAIRRO := dtmDefault.qryTmp.FieldByName('BAIRRO').AsString.Trim;
      fInformacoes.COMPLEMENTO := dtmDefault.qryTmp.FieldByName('COMPLEMENTO').AsString.Trim;
      fInformacoes.CEP := dtmDefault.qryTmp.FieldByName('CEP').AsString.Trim;
      fInformacoes.CIDADE := dtmDefault.qryTmp.FieldByName('CIDADE').AsString.Trim;
      fInformacoes.ID_CIDADES_UF := dtmDefault.qryTmp.FieldByName('ID_CIDADES_UF').AsString.Trim;
      fInformacoes.ID_CIDADES_IBGE := dtmDefault.qryTmp.FieldByName('ID_CIDADES_IBGE').AsInteger;
      fInformacoes.TELEFONE := dtmDefault.qryTmp.FieldByName('TELEFONEFIXO').AsString.Trim;
      fInformacoes.ID_SITUACAO := dtmDefault.qryTmp.FieldByName('ID_ATIVO').AsString;
    end;

  finally
    dtmDefault.qryTmp.Close;
  end;
end;

function TTransportadora.GetNewCODIGO: Integer;
begin
  Result := 1;

  if oEmpresa.ID <= 0 then
    raise Exception.Create('Erro com o Identificador da Empresa!');

  try
    dtmDefault.qryTmp.Close;
    dtmDefault.qryTmp.SQL.Clear;
    dtmDefault.qryTmp.SQL.Text := 'select MAX(ID_CODIGO) as ID from TRANSPORTADORA WHERE ID_EMPRESA = ' + oEmpresa.ID.ToString;
    dtmDefault.qryTmp.Open;

    if Not dtmDefault.qryTmp.IsEmpty then
      Result := dtmDefault.qryTmp.Fields[0].AsInteger + 1;
  finally
    dtmDefault.qryTmp.Close;
  end;

  if Result <= 0 then
    raise Exception.Create('Erro na geração do codigo da Empresa!');
end;

function TTransportadora.GetNewID: Integer;
begin
  Result := 1;

  if oEmpresa.ID <= 0 then
    raise Exception.Create('Erro com o Identificador da Empresa!');

  try
    dtmDefault.qryTmp.Close;
    dtmDefault.qryTmp.SQL.Clear;
    dtmDefault.qryTmp.SQL.Text := 'select MAX(ID_TRANSPORTADORA) as ID from TRANSPORTADORA';
    dtmDefault.qryTmp.Open;

    if Not dtmDefault.qryTmp.IsEmpty then
      Result := dtmDefault.qryTmp.Fields[0].AsInteger + 1;
  finally
    dtmDefault.qryTmp.Close;
  end;

  if Result <= 0 then
    raise Exception.Create('Erro na geração do identificador da Empresa!');
end;

initialization
  oTRANS := TTransportadora.Create;

finalization
  FreeAndNil(oTRANS);

end.
