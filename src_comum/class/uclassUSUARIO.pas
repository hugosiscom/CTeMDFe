unit uclassUSUARIO;

interface

uses
  FireDAC.Comp.Client, Forms, SysUtils, Data.DB, System.Classes,
  uclassEMPRESA;

type
  TUSUARIOINFORMACOES = RECORD
  public
    ID_USUARIO: Integer;
    USUARIO: String;
    SENHA: String;
    DATAHORA: TDateTime;
  end;

  TUSUARIOCONSULTA = RECORD
    USUARIO: STRING;
    SENHA: STRING;

    PROCEDURE CLEAR;
  END;

  TUsuario = class(TObject)
  private
    fInformacoes: TUSUARIOINFORMACOES;
  public
    function Procurar(AID_Usuario: Integer): TUSUARIOINFORMACOES;
    function ValidaUsuario(USUARIO, SENHA: String): TUSUARIOINFORMACOES;

    function GetNewID: Integer;
  end;

var
  oUsuario: TUsuario;

implementation

uses
  udtmDefault;

{ TCPFConsulta }
function TUsuario.Procurar(AID_Usuario: Integer): TUSUARIOINFORMACOES;
begin
  fInformacoes.ID_USUARIO := -1;
  fInformacoes.USUARIO := EmptyStr;

  try
    dtmDefault.qryTmp.Close;
    dtmDefault.qryTmp.SQL.CLEAR;
    dtmDefault.qryTmp.SQL.Text := 'SELECT * FROM USUARIO WHERE ID_USUARIO = ' + AID_Usuario.ToString;
    dtmDefault.qryTmp.Open;

    if not dtmDefault.qryTmp.IsEmpty then
    begin
      fInformacoes.ID_USUARIO := dtmDefault.qryTmp.FieldByName('ID_USUARIO').AsInteger;
      fInformacoes.USUARIO := dtmDefault.qryTmp.FieldByName('USUARIO').AsString.Trim;
      fInformacoes.SENHA := dtmDefault.qryTmp.FieldByName('SENHA').AsString.Trim;
    end;

    Result := fInformacoes;
  finally
    dtmDefault.qryTmp.Close;
  end;
end;

function TUsuario.ValidaUsuario(USUARIO, SENHA: String): TUSUARIOINFORMACOES;
begin
  fInformacoes.ID_USUARIO := -1;
  fInformacoes.USUARIO := EmptyStr;

  try
    dtmDefault.qryTmp.Close;
    dtmDefault.qryTmp.SQL.CLEAR;
    dtmDefault.qryTmp.SQL.Text := ' SELECT us.* FROM USUARIO us WHERE us.usuario =:nome and us.senha =:senha  ';
    dtmDefault.qryTmp.Params[0].AsString := USUARIO;
    dtmDefault.qryTmp.Params[1].AsString := SENHA;

    dtmDefault.qryTmp.Open;

    if not dtmDefault.qryTmp.IsEmpty then
    begin
      fInformacoes.ID_USUARIO := dtmDefault.qryTmp.FieldByName('ID_USUARIO').AsInteger;
      fInformacoes.USUARIO := dtmDefault.qryTmp.FieldByName('USUARIO').AsString.Trim;
      fInformacoes.SENHA := dtmDefault.qryTmp.FieldByName('SENHA').AsString.Trim;
    end;

    Result := fInformacoes;
  finally
    dtmDefault.qryTmp.Close;
  end;
end;

function TUsuario.GetNewID: Integer;
begin
  Result := 1;

  if oEmpresa.ID <= 0 then
    raise Exception.Create('Erro com o Identificador da Empresa!');

  try
    dtmDefault.qryTmp.Close;
    dtmDefault.qryTmp.SQL.CLEAR;
    dtmDefault.qryTmp.SQL.Text := 'select MAX(ID_USUARIO) as ID from USUARIO ';
    dtmDefault.qryTmp.Open;

    if Not dtmDefault.qryTmp.IsEmpty then
      Result := dtmDefault.qryTmp.Fields[0].AsInteger + 1;
  finally
    dtmDefault.qryTmp.Close;
  end;

  if Result <= 0 then
    raise Exception.Create('Erro na geração do identificador do Usuário!');

end;

procedure TUSUARIOCONSULTA.CLEAR;
begin
  USUARIO := EmptyStr;
  SENHA := EmptyStr;
end;

initialization

oUsuario := TUsuario.Create;

finalization

FreeAndNil(oUsuario);

end.
