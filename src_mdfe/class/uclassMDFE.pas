unit uclassMDFE;

interface

uses FireDAC.Comp.Client, Forms, SysUtils, DB;

type
  TMDFEclass = class(TObject)
  private
  public
    function GetNEW_ID_MDFE: Integer;
    function NumeracaoMDFe:integer;
    function GetNEW_ID_MDFE_EVENTO(vID,vID_SERIE: Integer): Integer;
    function GetNEW_ID_MDFE_EVENTO_SEQUENCIA(vID,vID_SERIE: Integer; vTipo: String): Integer;
end;

var
  oMDFE: TMDFEclass;

implementation

uses
  udtmDefault, uclassEMPRESA, udtmMDFE;

{ TMDFEclass }

function TMDFEclass.GetNEW_ID_MDFE: Integer;
begin
  try
    dtmDefault.qryTmp.Close;
    dtmDefault.qryTmp.SQL.Clear;
    dtmDefault.qryTmp.SQL.Text := Format('SELECT MAX(ID_MDFE) FROM MDFE WHERE ID_EMPRESA = %d AND ID_SERIE = %d;',[oEmpresa.ID, oEmpresa.MDFE_ID_SERIE]);
    dtmDefault.qryTmp.Open;

    if dtmDefault.qryTmp.IsEmpty then
      Result := 1
    else
    begin
      Result := dtmDefault.qryTmp.Fields[0].AsInteger + 1;
      if Result <=0 then
        Result := 1;
    end;

  finally
    dtmDefault.qryTmp.Close;
  end;
end;

function TMDFEclass.GetNEW_ID_MDFE_EVENTO(vID,vID_SERIE: Integer): Integer;
begin
  try
    dtmDefault.qryTmp.Close;
    dtmDefault.qryTmp.SQL.Clear;
    dtmDefault.qryTmp.SQL.Text := Format('SELECT MAX(ID_MDFE_EVENTO) FROM MDFE_EVENTO WHERE ID_EMPRESA = %d AND ID_MDFE = %d AND ID_SERIE = %d',[oEmpresa.ID, vID, vID_SERIE]);
    dtmDefault.qryTmp.Open;

    if dtmDefault.qryTmp.IsEmpty then
      Result := 1
    else
      Result := dtmDefault.qryTmp.Fields[0].AsInteger + 1;

  finally
    dtmDefault.qryTmp.Close;
  end;
end;

function TMDFEclass.GetNEW_ID_MDFE_EVENTO_SEQUENCIA(vID, vID_SERIE: Integer;
  vTipo: String): Integer;
begin
  try
    dtmDefault.qryTmp.Close;
    dtmDefault.qryTmp.SQL.Clear;
    dtmDefault.qryTmp.SQL.Text := Format('SELECT MAX(SEQUENCIA) FROM MDFE_EVENTO WHERE ID_EMPRESA = %d AND ID_MDFE = %d AND ID_SERIE = %d AND TIPO = %s',[oEmpresa.ID, vID, vID_SERIE, vTipo.QuotedString]);
    dtmDefault.qryTmp.Open;

    if dtmDefault.qryTmp.IsEmpty then
      Result := 1
    else
      Result := dtmDefault.qryTmp.Fields[0].AsInteger + 1;

  finally
    dtmDefault.qryTmp.Close;
  end;
end;

function TMDFEclass.NumeracaoMDFe: integer;
var
  NumeroMDFe  :Integer;
  QryMDFe      : TFDQuery;
  QryEmpresa  : TFDQuery;
begin
  QryMDFe :=nil;
  NumeroMDFe :=0;

  try
    QryMDFe := TFDQuery.Create(nil);
    QryMDFe.Connection :=  dtmDefault.cnx_BD;

    QryEmpresa := TFDQuery.Create(nil);
    QryEmpresa.Connection :=dtmDefault.cnx_BD;

    NumeroMDFe:= dtmDefault.IncGen('GEN_NUM_MDFE_LJ'+InttoStr(oEmpresa.ID ));
     QryMDFe.Close;
     QryMDFe.SQL.Text  :=
    ' select m.id_mdfe, m.ID_SERIE from mdfe m                                  '+
    ' where                                                                     '+
    ' m.id_mdfe =:paramItem and m.ID_SERIE =:SERIE and m.ID_EMPRESA =:IDEMPRESA ';

     QryMDFe.Params[0].AsInteger := NumeroMDFe;//Número MDFe
     QryMDFe.params[1].AsString := oEmpresa.MDFE_ID_SERIE.ToString;//Série
     QryMDFe.params[2].AsInteger := oEmpresa.ID ;//Código Empresa
     QryMDFe.Open;
    while not qryMDFe.IsEmpty do
      begin
       NumeroMDFe:= dtmDefault.IncGen ('GEN_NUM_MDFE_LJ'+InttoStr(oEmpresa.ID));
       QryMDFe.Close;
       QryMDFe.SQL.Text  :=
      ' select m.id_mdfe, m.ID_SERIE from mdfe m                                  '+
      ' where                                                                     '+
      ' m.id_mdfe =:paramItem and m.ID_SERIE =:SERIE and m.ID_EMPRESA =:IDEMPRESA ';

       QryMDFe.Params[0].AsInteger := NumeroMDFe;
       QryMDFe.params[1].AsString :=  oEmpresa.MDFE_ID_SERIE.ToString;//Série
       QryMDFe.params[2].AsInteger := oEmpresa.ID;//Código Empresa
       QryMDFe.Open;
      end;

    Result :=NumeroMDFe;
    try
      QryEmpresa.Close;
      QryEmpresa.SQL.Text := ' update empresa e set e.mdfe_numero_inicial =:numero where e.ID_EMPRESA=:codempresa ';
      QryEmpresa.ParamByName('numero').AsInteger := NumeroMDFe;
      QryEmpresa.ParamByName('codempresa').AsInteger :=oEmpresa.ID;
      QryEmpresa.ExecSQL;
    except on E: Exception do
      begin
      end;
    end;
  finally
    qryMDFe.Close;
    qryMDFe.Free;
    QryEmpresa.Close;
    QryEmpresa.Free;
  end;
end;

initialization
  oMDFE := TMDFEclass.Create;

finalization
  FreeAndNil(oMDFE);

end.

