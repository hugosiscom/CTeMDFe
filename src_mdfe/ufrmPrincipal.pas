unit ufrmPrincipal;

{$I jvcl.inc}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, JvOutlookBar, ComCtrls, StdCtrls, Menus, ExtCtrls, ImgList,
  JvComponent, JvExControls, ActnList, JvGIF, jpeg, System.Actions,
  JvExExtCtrls, JvExtComponent, JvPanel, JvComponentBase,
  JvNavigationPane, JvJVCLUtils, JvImageList, System.ImageList;

type
  TfrmPrincipal = class(TForm)
    popOL: TPopupMenu;
    Splitter1: TSplitter;
    Defaultpopupmenu1: TMenuItem;
    popButton: TPopupMenu;
    popPage: TPopupMenu;
    Editbuttoncaption1: TMenuItem;
    Editpagecaption1: TMenuItem;
    statusBAR: TStatusBar;
    Smallbuttons1: TMenuItem;
    Smallbuttons2: TMenuItem;
    act_list: TActionList;
    pnlMaster: TJvPanel;
    timer_principal: TTimer;
    JvOutlookBar1: TJvOutlookBar;
    JvNavPaneStyleManager: TJvNavPaneStyleManager;
    actSairWindows: TAction;
    img_ico_32x32: TJvImageList;
    img_ico_32x32_menu: TJvImageList;
    actBackup: TAction;
    actEmpresaManutencao: TAction;
    actMDFEmanutencao: TAction;
    actCertificadoConfig: TAction;
    actFinalizarEmitente: TAction;
    actGerarXMLContabilidade: TAction;
    actMotorita: TAction;
    actVeiculo: TAction;
    acTUsuario: TAction;
    procedure Button2Click(Sender: TObject);
    procedure JvOutlookBar1ButtonClick(Sender: TObject; Index: Integer);
    procedure JvOutlookBar1PageChanging(Sender: TObject; Index: Integer;
      var AllowChange: Boolean);
    procedure JvOutlookBar1PageChange(Sender: TObject; Index: Integer);
    procedure JvOutlookBar1ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure acEditButtonCaptionExecute(Sender: TObject);
    procedure acEditPageCaptionExecute(Sender: TObject);
    procedure chkFlatClick(Sender: TObject);
    procedure timer_principalTimer(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure JvOutlookBar1Pages1Buttons2Click(Sender: TObject);
    procedure actSairWindowsExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure actBackupExecute(Sender: TObject);
    procedure actEmpresaManutencaoExecute(Sender: TObject);
    procedure actFinalizarEmitenteExecute(Sender: TObject);
    procedure actCertificadoConfigExecute(Sender: TObject);
    procedure actMDFEmanutencaoExecute(Sender: TObject);
    procedure actGerarXMLContabilidadeExecute(Sender: TObject);
    procedure actMotoritaExecute(Sender: TObject);
    procedure actVeiculoExecute(Sender: TObject);
    procedure acTUsuarioExecute(Sender: TObject);
  private
    procedure DoCustomDraw(Sender: TObject; ACanvas: TCanvas; ARect: TRect; AStage: TJvOutlookBarCustomDrawStage; AIndex: integer; ADown,  AInside: boolean; var DefaultDraw:boolean);
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses ufrmDefaultConsulta, udtmDefault, ufrmBACKUP, ufrmEMPRESASmanutencao,
     uclassCONFIGini,  uclassEMPRESA, ufrmMDFEmanutencao, ufrmCERTIFICADOconfig,
  ufrmXMLgeracao, ufrmMOTORISTASmanutencao, ufrmVEICULOSmanutencao,
  ufrmUSUARIOSmanutencao;


procedure TfrmPrincipal.Button2Click(Sender: TObject);
begin
  JvOutlookBar1.LargeImages := nil;
  JvOutlookBar1.SmallImages := nil;
end;

procedure TfrmPrincipal.JvOutlookBar1ButtonClick(Sender: TObject;
  Index: Integer);
var P:TJvOutlookBarPage;
begin
  if (Index > -1) then
  with JvOutlookBar1 do
  begin
    P := Pages[ActivePageIndex];
    Caption := Format('Você selecionou "%s" na página "%s"',[P.Buttons[Index].Caption,P.Caption]);
  end;
end;

procedure TfrmPrincipal.JvOutlookBar1PageChanging(Sender: TObject;
  Index: Integer; var AllowChange: Boolean);
begin
  with JvOutlookBar1 do
    if (ActivePageIndex > -1) and (Index > -1) then
      Caption := Format('Pagina alterada de "%s" para "%s"',
        [Pages[ActivePageIndex].Caption, Pages[Index].Caption]);
end;

procedure TfrmPrincipal.JvOutlookBar1Pages1Buttons2Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmPrincipal.timer_principalTimer(Sender: TObject);
begin
  statusBAR.Panels[0].Text := FormatDateTime('dd/mm/yyy hh:mm:ss',Now);
  statusBAR.Panels[1].Text := 'Empresa: ' + oEmpresa.RAZAO_SOCIAL;

  actMDFEmanutencao.Enabled := oEmpresa.ID > 0;
  actEmpresaManutencao.Enabled := oEmpresa.ID < 0;
  actFinalizarEmitente.Enabled := oEmpresa.ID > 0;
  actCertificadoConfig.Enabled := oEmpresa.ID > 0;
  actVeiculo.Enabled           := oEmpresa.ID > 0;
  actMotorita.Enabled          := oEmpresa.ID > 0;
  actUsuario.Enabled           := oEmpresa.ID > 0;
  actGerarXMLContabilidade.Enabled := oEmpresa.ID > 0;
end;

procedure TfrmPrincipal.JvOutlookBar1PageChange(Sender: TObject;
  Index: Integer);
begin
  if Index > -1 then
    Caption := Format('Pagina alterada para "%s"',[JvOutlookBar1.Pages[Index].Caption]);
end;

procedure TfrmPrincipal.JvOutlookBar1ContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  with Sender as TJvOutlookbar do
  if PopupObject is TJvOutlookBarPage then
    PopUpMenu := popPage
  else if PopupObject is TJvOutlookBarButton then
    PopUpMenu := popButton
  else
    PopUpMenu := popOL;
end;

procedure TfrmPrincipal.Action1Execute(Sender: TObject);
begin
  TfrmDefaultConsulta.Manutencao(pnlMaster);
end;

procedure TfrmPrincipal.actEmpresaManutencaoExecute(Sender: TObject);
begin
  TfrmEMPRESASmanutencao.Manutencao(pnlMaster);
end;

procedure TfrmPrincipal.actFinalizarEmitenteExecute(Sender: TObject);
begin
  if Application.MessageBox(PChar('Confirma saida da empresa atual ?' + sLineBreak + sLineBreak + 'Empresa: ' + oEmpresa.RAZAO_SOCIAL),'Confirmação',MB_YESNO + MB_ICONQUESTION) = mrNo then
    Exit;

  if Assigned(frmDefaultConsulta) then
    FreeAndNil(frmDefaultConsulta);

  oEmpresa.Clear;
end;

procedure TfrmPrincipal.actGerarXMLContabilidadeExecute(Sender: TObject);
begin
  TfrmXMLgeracao.Gerar(EmptyStr);
end;

procedure TfrmPrincipal.actMDFEmanutencaoExecute(Sender: TObject);
begin
  TfrmMDFEmanutencao.Manutencao(pnlMaster);
end;

procedure TfrmPrincipal.actMotoritaExecute(Sender: TObject);
begin
  TfrmMOTORISTASmanutencao.Manutencao(pnlMaster);
end;

procedure TfrmPrincipal.actSairWindowsExecute(Sender: TObject);
begin
  ///Close;
   application.Terminate;
end;

procedure TfrmPrincipal.actVeiculoExecute(Sender: TObject);
begin
  TfrmVEICULOSmanutencao.Manutencao(pnlMaster);
end;

procedure TfrmPrincipal.acTUsuarioExecute(Sender: TObject);
begin
  TfrmUSUARIOSmanutencao.Manutencao(pnlMaster);
end;

procedure TfrmPrincipal.acEditButtonCaptionExecute(Sender: TObject);
begin
  with JvOutlookBar1.PopUpObject as TJvOutlookBarButton do
    EditCaption;
end;

procedure TfrmPrincipal.acEditPageCaptionExecute(Sender: TObject);
begin
  with JvOutlookBar1.PopUpObject as TJvOutlookBarPage do
    EditCaption;
end;

procedure TfrmPrincipal.actBackupExecute(Sender: TObject);
begin
  if Assigned(frmDefaultConsulta) then
   FreeAndNil(frmDefaultConsulta);

  TfrmBACKUP.ShowForm;
end;

procedure TfrmPrincipal.actCertificadoConfigExecute(Sender: TObject);
begin
  TfrmCERTIFICADOconfig.showConfig(mMDFe);
end;

procedure TfrmPrincipal.chkFlatClick(Sender: TObject);
const
  cBorderStyle:array [boolean] of TBorderStyle = (bsSingle, bsNone);
begin

end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dtmDefault.cnx_BD.Close;
  Application.Terminate;

end;

procedure TfrmPrincipal.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := Application.MessageBox(PWideChar('Deseja realmente encerrar o Aplicativo?'),
  'Encerrar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2) = ID_YES;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  JvNavPaneStyleManager.Theme := nptStandard;
  JvOutlookBar1.Invalidate;

  JvOutlookBar1.OnCustomDraw := DoCustomDraw;

  //resolução e posição
  Self.Width       := oConfigINI.GetWindowWidth;
  Self.Height      := oConfigINI.GetWindowHeigth;
  Self.WindowState := oConfigINI.GetWindowState;
  Self.Position    := poScreenCenter;
end;

procedure TfrmPrincipal.DoCustomDraw(Sender: TObject; ACanvas: TCanvas; ARect: TRect; AStage: TJvOutlookBarCustomDrawStage; AIndex: integer; ADown,  AInside: boolean; var DefaultDraw:boolean);
begin
  DefaultDraw := False;
  case AStage of
  odsBackground:
     with JvNavPaneStyleManager.Colors do
       GradientFillRect(ACanvas, ARect, HeaderColorFrom, HeaderColorTo, fdTopToBottom, 255);
  odsPage:
     with JvNavPaneStyleManager.Colors do
       GradientFillRect(ACanvas,ARect, ButtonColorFrom, ButtonColorTo, fdTopToBottom, 255);
  odsPageButton:
  begin
     with JvNavPaneStyleManager.Colors do
       GradientFillRect(ACanvas,ARect, HeaderColorFrom, HeaderColorTo, fdTopToBottom, 255);
     if ADown then
       OffsetRect(ARect,1,1);
     ACanvas.Font.Color := clWhite;
     DrawText(ACanvas.Handle, PChar(JvOutlookBar1.Pages[AIndex].Caption),
       Length(JvOutlookBar1.Pages[AIndex].Caption), ARect, DT_SINGLELINE or DT_VCENTER or DT_CENTER);
  end;
  odsButtonFrame:
  begin
    if ADown then
      ACanvas.Brush.Color := clNavy
    else
      ACanvas.Brush.Color := clBlack;
    ACanvas.FrameRect(ARect);
    InflateRect(ARect,-1,-1);
    if not ADown then
      ACanvas.Brush.Color := clWhite;
    ACanvas.FrameRect(ARect);
  end;
  odsButton:
    DefaultDraw := True;
  end;
end;

end.
