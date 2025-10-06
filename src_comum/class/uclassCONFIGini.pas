unit uclassCONFIGini;

interface

uses
  Windows, SysUtils, Variants, Classes, IniFiles, Forms;

type
  TconfigINI = class;

  TConfigINIBase = class(TObject)
  private
    FOwner: TConfigINI;
  public
    constructor Create(AOwner: TConfigINI);
    property Owner: TConfigINI read FOwner;
  end;

  TconfigINIconexao = class(TConfigINIBase)
  private
    function GetServer: String;
    function GetServer_Port: String;
    function GetLocalBanco: String;
    function GetPassword: String;
    function GetUserName: String;

    procedure SetServer(const Value:string);
    procedure SetServer_Port(const Value:String);
    procedure SetPassword(const Value:String);
    procedure SetUserName(const Value:String);
  public
    property Server: String read GetServer write SetServer;
    property Server_Port: String read GetServer_Port write SetServer_Port;
    property LocalBanco: String read GetLocalBanco;
    property Password  : String read GetPassword write SetPassword;
    property User_Name  : String read GetUserName write SetUserName;
  end;

  TConfigINI = class(TIniFile)
  private
    FConexao: TconfigINIconexao;
    function GetEMAILcontabilidade: String;
    function GetMDFEInserirDefault: Boolean;
    procedure SetMDFEInserirDefault(const Value: Boolean);
    procedure SetEMAILcontabilidade(const Value: String);
  public
    function GetWindowState: TWindowState;
    function GetWindowWidth: Integer;
    function GetWindowHeigth: Integer;
    constructor Create(const FileName: string);
    destructor Destroy; override;
    property Conexao:TconfigINIconexao read FConexao write FConexao;
    property MDFEInserirDefault: Boolean read GetMDFEInserirDefault write SetMDFEInserirDefault;
    property EMAILcontabilidade: String read GetEMAILcontabilidade write SetEMAILcontabilidade;
  end;

var
  oConfigINI: TconfigINI;

implementation

{ TConfigINIBase }
constructor TConfigINIBase.Create(AOwner: TConfigINI);
begin
  Self.FOwner := AOwner;
end;

{ TConfigINI }
constructor TConfigINI.Create(const FileName: string);
begin
  inherited;
  Conexao := TconfigINIconexao.Create(Self);
end;

destructor TConfigINI.Destroy;
begin
  Conexao.Free;

  inherited;
end;

function TConfigINI.GetEMAILcontabilidade: String;
begin
  Result := ReadString('XML','EmailContabilidade', EmptyStr);
end;

function TConfigINI.GetMDFEInserirDefault: Boolean;
begin
  Result := ReadBool('MDFE','InserirDefault', False);
end;

function TConfigINI.GetWindowHeigth: Integer;
begin
  Result := ReadInteger('CONFIG','FormPrincipalHeigth', 768);
end;

function TConfigINI.GetWindowState: TWindowState;
var
  aEstado: string;
begin
  aEstado := ReadString('CONFIG', 'FormWindowState', 'Maximizado');

  if aEstado = 'Maximizado' then
    Result := wsMaximized
  else
  if aEstado = 'Normal' then
    Result := wsNormal
  else
    Result := wsMaximized;
end;

function TConfigINI.GetWindowWidth: Integer;
begin
  Result := ReadInteger('CONFIG','FormPrincipalWidth', 1200);
end;

procedure TConfigINI.SetEMAILcontabilidade(const Value: String);
begin
  WriteString('XML','EmailContabilidade', Value);
end;

procedure TConfigINI.SetMDFEInserirDefault(const Value: Boolean);
begin
  WriteBool('MDFE','InserirDefault',Value);
end;

function TconfigINIconexao.GetLocalBanco: String;
begin
  Result := Owner.ReadString('BANCO', 'SERVER_PATH', Result);
end;

function TconfigINIconexao.GetServer_Port: String;
begin
  Result := Owner.ReadString('BANCO', 'PORTA', '3050');
end;

function TconfigINIconexao.GetUserName: String;
begin
  Result := Owner.ReadString('BANCO', 'User_Name', 'SYSDBA');
end;

function TconfigINIconexao.GetPassword: String;
begin
  Result := Owner.ReadString('BANCO', 'PASSWORD', 'masterkey');
end;

function TconfigINIconexao.GetServer: String;
begin
  Result := Owner.ReadString('BANCO', 'SERVER', Result);
end;

procedure TconfigINIconexao.SetServer_Port(const Value: String);
begin
  Owner.WriteString('BANCO','PORTA',Value);
end;

procedure TconfigINIconexao.SetUserName(const Value: String);
begin
  Owner.WriteString('BANCO','User_Name',Value);
end;

procedure TconfigINIconexao.SetPassword(const Value: String);
begin
  Owner.WriteString('BANCO','PASSWORD',Value);
end;

procedure TconfigINIconexao.SetServer(const Value: string);
begin
  Owner.WriteString('BANCO','SERVER',Value);
end;

initialization
  oConfigINI := TconfigINI.Create(ExtractFilePath(ParamStr(0)) + '\config.ini');

finalization
  FreeAndNil(oConfigINI);

end.



