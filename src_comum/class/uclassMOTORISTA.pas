unit uclassMOTORISTA;

interface
uses
  FireDAC.Comp.Client, Forms, SysUtils, Data.DB, System.Classes,
  uclassEMPRESA;
type
  TMOTORISTAINFORMACOES = RECORD
  public
    ID_MOTORISTA : Integer;
    NOME  : String;
    CPF   : String;
  end;
 TCPFCONSULTA = RECORD
    CPF: STRING;
    NOME: STRING;


    PROCEDURE CLEAR;
  END;
 TMotorista = class(TObject)
  private
    fInformacoes: TMOTORISTAINFORMACOES;
  public
    function Procurar(AID_Motorista:Integer):TMOTORISTAINFORMACOES;
    function GetNewID:Integer;
  end;
var
  oMotorista: TMotorista;

implementation
 uses
  udtmDefault;
{ TCPFConsulta }
function TMotorista.Procurar(AID_Motorista: Integer):TMOTORISTAINFORMACOES;
begin
  fInformacoes.ID_MOTORISTA := -1;
  fInformacoes.NOME := EmptyStr;

  try
    dtmDefault.qryTmp.Close;
    dtmDefault.qryTmp.SQL.Clear;
    dtmDefault.qryTmp.SQL.Text := 'SELECT * FROM MOTORISTA WHERE ID_MOTORISTA = ' + AID_Motorista.ToString;
    dtmDefault.qryTmp.Open;

    if not dtmDefault.qryTmp.IsEmpty then
    begin
      fInformacoes.ID_MOTORISTA := dtmDefault.qryTmp.FieldByName('ID_MOTORISTA').AsInteger;
      fInformacoes.NOME := dtmDefault.qryTmp.FieldByName('NOME').AsString.Trim;
      fInformacoes.CPF := dtmDefault.qryTmp.FieldByName('CPF').AsString.Trim;
    end;

    Result := fInformacoes;
  finally
    dtmDefault.qryTmp.Close;
  end;
end;
function TMotorista.GetNewID: Integer;
begin
  Result := 1;

  if oEmpresa.ID <= 0 then
    raise Exception.Create('Erro com o Identificador da Empresa!');

  try
    dtmDefault.qryTmp.Close;
    dtmDefault.qryTmp.SQL.Clear;
    dtmDefault.qryTmp.SQL.Text := 'select MAX(ID_MOTORISTA) as ID from MOTORISTA WHERE ID_EMPRESA = ' + oEmpresa.ID.ToString;
    dtmDefault.qryTmp.Open;

    if Not dtmDefault.qryTmp.IsEmpty then
      Result := dtmDefault.qryTmp.Fields[0].AsInteger + 1;
  finally
    dtmDefault.qryTmp.Close;
  end;

  if Result <= 0 then
    raise Exception.Create('Erro na geração do identificador do Motorista!');
end;

procedure TCPFConsulta.Clear;
begin
  CPF := EmptyStr;
  Nome := EmptyStr;

end;

initialization
  oMotorista := TMotorista.Create;

finalization
  FreeAndNil(oMotorista);

end.
