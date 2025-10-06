unit uclassVEICULO;

interface
  uses
  FireDAC.Comp.Client, Forms, SysUtils, Data.DB, System.Classes,
  uclassEMPRESA;

type
  TVEICULOINFORMACOES = RECORD
  public
    ID_VEICULO,
    TIPO_CARROCERIA,
    TIPO_RODADO,
    TIPO_VEICULO: Integer;
    DESCRICAO,
    RNTRC,
    COD_AGENDA_PORT,
    CODIGO_INTERNO,
    PLACA,
    UF,
    RENAVAN
    : String;
    CAPACIDADE_KG,
    CAPACIDADE_M3 :Double
  end;
 TVeiculo = class(TObject)
  private
  public
    FInformacoes: TVEICULOINFORMACOES;
    procedure Procurar(AID_VEICULO:Integer);
    function GetNewID:Integer;

  end;

var
  oVEICULO: TVeiculo;
implementation
uses
  udtmDefault;


procedure TVeiculo.Procurar(AID_VEICULO: Integer);
begin
  fInformacoes.ID_VEICULO := -1;
  fInformacoes.DESCRICAO := EmptyStr;
  fInformacoes.TIPO_CARROCERIA := -1;
  fInformacoes.TIPO_RODADO := -1;
  fInformacoes.TIPO_VEICULO := -1;
  fInformacoes.RNTRC := EmptyStr;
  fInformacoes.COD_AGENDA_PORT := EmptyStr;
  fInformacoes.CODIGO_INTERNO := EmptyStr;
  fInformacoes.PLACA := EmptyStr;
  fInformacoes.UF := EmptyStr;
  fInformacoes.RENAVAN := EmptyStr;
  fInformacoes.CAPACIDADE_M3 := 0;
  fInformacoes.CAPACIDADE_KG := 0;

  try
    dtmDefault.qryTmp.Close;
    dtmDefault.qryTmp.SQL.Clear;
    dtmDefault.qryTmp.SQL.Text := 'SELECT V.*  FROM VEICULO V  WHERE V.ID_VEICULO = ' + AID_VEICULO.ToString;
    dtmDefault.qryTmp.Open;

    if not dtmDefault.qryTmp.IsEmpty then
    begin
      fInformacoes.ID_VEICULO := dtmDefault.qryTmp.FieldByName('ID_VEICULO').AsInteger;
      fInformacoes.DESCRICAO := dtmDefault.qryTmp.FieldByName('DESCRICAO').AsString.Trim;
      fInformacoes.TIPO_CARROCERIA := dtmDefault.qryTmp.FieldByName('TIPO_CARROCERIA').AsInteger;
      fInformacoes.TIPO_RODADO := dtmDefault.qryTmp.FieldByName('TIPO_RODADO').AsInteger;
      fInformacoes.TIPO_VEICULO := dtmDefault.qryTmp.FieldByName('TIPO_VEICULO').AsInteger;
      fInformacoes.RNTRC := dtmDefault.qryTmp.FieldByName('RNTRC').AsString.Trim;
      fInformacoes.COD_AGENDA_PORT := dtmDefault.qryTmp.FieldByName('COD_AGENDA_PORT').AsString.Trim;
      fInformacoes.CODIGO_INTERNO := dtmDefault.qryTmp.FieldByName('CODIGO_INTERNO').AsString.Trim;
      fInformacoes.PLACA := dtmDefault.qryTmp.FieldByName('PLACA').AsString.Trim;
      fInformacoes.UF := dtmDefault.qryTmp.FieldByName('UF').AsString.Trim;
      fInformacoes.RENAVAN := dtmDefault.qryTmp.FieldByName('RENAVAN').AsString.Trim;
      fInformacoes.CAPACIDADE_KG := dtmDefault.qryTmp.FieldByName('CAPACIDADE_KG').AsFloat;
      fInformacoes.CAPACIDADE_M3 := dtmDefault.qryTmp.FieldByName('CAPACIDADE_M3').AsFloat;
    end;

  finally
    dtmDefault.qryTmp.Close;
  end;
end;

Function TVeiculo.GetNewID: Integer;
begin
  Result := 1;

  if oEmpresa.ID <= 0 then
    raise Exception.Create('Erro com o Identificador da Empresa!');

  try
    dtmDefault.qryTmp.Close;
    dtmDefault.qryTmp.SQL.Clear;
    dtmDefault.qryTmp.SQL.Text := 'select MAX(ID_VEICULO) as ID from VEICULO';
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
  oVEICULO := TVeiculo.Create;

finalization
  FreeAndNil(oVEICULO);
end.
