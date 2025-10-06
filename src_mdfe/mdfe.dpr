program mdfe;

uses
  Forms,
  ufuncoes in '..\src_comum\unit\ufuncoes.pas',
  ufrmDefault in '..\src_comum\ufrmDefault.pas' {frmDefault},
  ufrmDefaultClean in '..\src_comum\ufrmDefaultClean.pas' {frmDefaultClean},
  ufrmDefaultConsulta in '..\src_comum\ufrmDefaultConsulta.pas' {frmDefaultConsulta},
  ufrmDefaultCadastro in '..\src_comum\ufrmDefaultCadastro.pas' {frmDefaultCadastro},
  ufrmBACKUP in '..\src_comum\ufrmBACKUP.pas' {frmBACKUP},
  ufrmMENSAGEMespera in '..\src_comum\ufrmMENSAGEMespera.pas' {frmMENSAGEMespera},
  ufrmEMPRESAScadastro in '..\src_comum\ufrmEMPRESAScadastro.pas' {frmEMPRESAScadastro},
  ufrmEMPRESASmanutencao in '..\src_comum\ufrmEMPRESASmanutencao.pas' {frmEMPRESASmanutencao},
  uclassMDFE in 'class\uclassMDFE.pas',
  uclassPESSOA in '..\src_comum\class\uclassPESSOA.pas',
  uclassEMPRESA in '..\src_comum\class\uclassEMPRESA.pas',
  udtmMDFE in 'dm\udtmMDFE.pas' {dtmMDFE: TDataModule},
  udtmDefault in '..\src_comum\dm\udtmDefault.pas' {dtmDefault: TDataModule},
  ufrmPrincipal in 'ufrmPrincipal.pas' {frmPrincipal},
  ufrmMDFEcancela in 'ufrmMDFEcancela.pas' {frmMDFEcancela},
  ufrmMDFEcadastro in 'ufrmMDFEcadastro.pas' {frmMDFEcadastro},
  ufrmMDFEmanutencao in 'ufrmMDFEmanutencao.pas' {frmMDFEmanutencao},
  ufrmMDFEcteCADASTRO in 'ufrmMDFEcteCADASTRO.pas' {frmMDFEcteCADASTRO},
  ufrmMDFEnfeCADASTRO in 'ufrmMDFEnfeCADASTRO.pas' {frmMDFEnfeCADASTRO},
  ufrmMDFEencerramento in 'ufrmMDFEencerramento.pas' {frmMDFEencerramento},
  ufrmMDFEsegurosCADASTRO in 'ufrmMDFEsegurosCADASTRO.pas' {frmMDFEsegurosCADASTRO},
  ufrmMDFEreboqueCADASTRO in 'ufrmMDFEreboqueCADASTRO.pas' {frmMDFEreboqueCADASTRO},
  ufrmCERTIFICADOconfig in '..\src_comum\ufrmCERTIFICADOconfig.pas' {frmCERTIFICADOconfig},
  ufrmMDFEvalepedagioCADASTRO in 'ufrmMDFEvalepedagioCADASTRO.pas' {frmMDFEvalepedagioCADASTRO},
  ufrmMDFEnfeCADASTROunidCARGA in 'ufrmMDFEnfeCADASTROunidCARGA.pas' {frmMDFEnfeCADASTROunidCARGAcadastro},
  ufrmMDFEcteCADASTROunidCARGA in 'ufrmMDFEcteCADASTROunidCARGA.pas' {frmMDFEcteCADASTROunidCARGAcadastro},
  ufrmMDFEcteCADASTROunidTRANSPORTE in 'ufrmMDFEcteCADASTROunidTRANSPORTE.pas' {frmMDFEcteCADASTROunidTRANSPORTEcadastro},
  ufrmMDFEnfeCADASTROunidTRANSPORTE in 'ufrmMDFEnfeCADASTROunidTRANSPORTE.pas' {frmMDFEnfeCADASTROunidTRANSPORTEcadastro},
  uclassPRODUTO in '..\src_comum\class\uclassPRODUTO.pas',
  uclassCONFIGini in '..\src_comum\class\uclassCONFIGini.pas',
  uclassLOG in '..\src_comum\class\uclassLOG.pas',
  uclassTRANSPORTADORA in '..\src_comum\class\uclassTRANSPORTADORA.pas',
  ufrmENVIARemail in 'ufrmENVIARemail.pas' {frmENVIARemail},
  ufrmXMLgeracao in 'ufrmXMLgeracao.pas' {frmXMLgeracao},
  uclassMOTORISTA in '..\src_comum\class\uclassMOTORISTA.pas',
  uclassVEICULO in '..\src_comum\class\uclassVEICULO.pas',
  ufrmVEICULOScadastro in '..\src_comum\ufrmVEICULOScadastro.pas' {frmVEICULOScadastro},
  ufrmVEICULOSmanutencao in '..\src_comum\ufrmVEICULOSmanutencao.pas' {frmVEICULOSmanutencao},
  ufrmMOTORISTASmanutencao in '..\src_comum\ufrmMOTORISTASmanutencao.pas' {frmMOTORISTASmanutencao},
  ufrmMOTORISTAScadastro in '..\src_comum\ufrmMOTORISTAScadastro.pas' {frmMOTORISTAScadastro},
  ufrmPESSOASmanutencao in '..\src_comum\ufrmPESSOASmanutencao.pas' {frmPESSOASmanutencao},
  ufrmPESSOAScadastro in '..\src_comum\ufrmPESSOAScadastro.pas' {frmPESSOAScadastro},
  Vcl.Themes,
  Vcl.Styles,
  uclassUSUARIO in '..\src_comum\class\uclassUSUARIO.pas',
  ufrmUSUARIOSmanutencao in '..\src_comum\ufrmUSUARIOSmanutencao.pas' {frmUSUARIOSmanutencao},
  ufrmUSUARIOScadastro in '..\src_comum\ufrmUSUARIOScadastro.pas' {frmUSUARIOScadastro},
  ufrmLOGIN in '..\src_comum\ufrmLOGIN.pas' {frmLogin},
  encrypt_decrypt in 'C:\Trabalho Atual\Compartilhado\encrypt_decrypt.pas',
  ufrmConsultaNFe in '..\src_comum\ufrmConsultaNFe.pas' {FrmConsultaNFe};

{$R *.res}

begin
  Application.Initialize;

  TStyleManager.TrySetStyle('Sky');
  Application.CreateForm(TdtmDefault, dtmDefault);
  Application.CreateForm(TdtmMDFE, dtmMDFE);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
