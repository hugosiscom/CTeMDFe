unit ufrmMDFEcadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmDefaultCadastro, Data.DB, ACBrBase,
  ACBrEnterTab, Vcl.ComCtrls, JvExComCtrls, JvStatusBar, JvComCtrls,
  JvExControls, JvSpeedButton, Vcl.ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.StdCtrls, Vcl.DBCtrls, JvBaseEdits, JvDBControls, JvDateTimePicker,
  JvDBDateTimePicker, JvDBLookup, JvExStdCtrls, JvCombobox, JvDBCombobox,
  Vcl.Mask, JvExMask, JvToolEdit, JvMaskEdit, JvGroupBox, Vcl.Buttons,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, JvgGroupBox, Vcl.Grids,
  Vcl.DBGrids, JvExDBGrids, JvDBGrid, JvDBCheckBox, JvRadioButton,
  JvAutoComplete, ufrmDefault, udtmMDFE, udtmDefault, ufuncoes, ufrmMDFEsegurosCADASTRO,
  ufrmMDFEreboqueCADASTRO, ufrmMDFEvalepedagioCADASTRO, ufrmMDFEcteCADASTRO,
  uclassMDFE, ufrmMDFEnfeCADASTRO, ACBrValidador, uclassEMPRESA,
  uclassCONFIGini, ACBrCIOTConversao, pcnCIOT, pcnCIOTW_eFrete, ACBrCIOTConfiguracoes, ACBrCIOTWebServices,
  ACBrDFeSSL, ACBrDFeOpenSSL, ACBrDFeUtil, ACBrCIOT, ACBrDFe, ACBrUtil.Strings,
  ACBrUtil.DateTime,
  ACBrUtil.FilesIO,
  ACBrUtil.XMLHTML,
  ACBrUtil.Base,
  ACBrCIOTContratos,
  ufrmCERTIFICADOconfig,
  pcnConversao, Vcl.Samples.Spin, blcksock, System.TypInfo, IniFiles, System.Math, Vcl.OleCtrls, SHDocVw;

type
  TfrmMDFEcadastro = class(TfrmDefaultCadastro)
    dtsqryCIDADES_UF: TDataSource;
    dtsqryCIDADES_LOCAL_CARREGAMENTO: TDataSource;
    dtstabCIDADES_LOCAL_CARREGAMENTO: TDataSource;
    dtstabMDFE_UF_PERCURSO: TDataSource;
    tabInformacoesAdicionais: TTabSheet;
    JvgGroupBox10: TJvgGroupBox;
    JvgGroupBox11: TJvgGroupBox;
    INF_ADIC_FISCO: TDBMemo;
    INF_ADIC_CONTRIBUINTE: TDBMemo;
    tabTotalizadores: TTabSheet;
    dtstabMDFE_LACRE: TDataSource;
    tabInformacoesCarga: TTabSheet;
    JvgGroupBox14: TJvgGroupBox;
    Panel5: TPanel;
    btnSegurosExcluir: TJvSpeedButton;
    btnSegurosIncluir: TJvSpeedButton;
    btnSegurosAlterar: TJvSpeedButton;
    dtstabMDFE_SEGUROS: TDataSource;
    tabRodoviario: TTabSheet;
    dtstabMDFE_CONDUTORES: TDataSource;
    dtstabMDFE_REBOQUE: TDataSource;
    dtstabMDFE_CIOT: TDataSource;
    dtstabMDFE_CONTRATANTES: TDataSource;
    dtstabMDFE_VALEPEDAGIO: TDataSource;
    pageINFdoc: TTabSheet;
    pagINFdoc: TJvPageControl;
    TabSheet7: TTabSheet;
    dtsqryCIDADES_MUNICIPIO_DESCARREGAMENTO: TDataSource;
    dtstabMDFE_LOCAL_DESCARREGAMENTO: TDataSource;
    tabCTe: TTabSheet;
    JvgGroupBox17: TJvgGroupBox;
    Panel11: TPanel;
    btnCTEexcluir: TJvSpeedButton;
    btnCTEincluir: TJvSpeedButton;
    btnCTEalterar: TJvSpeedButton;
    dtstabMDFE_CTE: TDataSource;
    Panel12: TPanel;
    JvgGroupBox3: TJvgGroupBox;
    Label21: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label15: TLabel;
    Label24: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    ID_MDFE: TJvDBMaskEdit;
    ID_SERIE: TJvDBMaskEdit;
    ID_TIPO_EMITENTE: TJvDBComboBox;
    C_DATAHORA_EMISSAO: TJvDBDateTimePicker;
    ID_MODELO: TJvMaskEdit;
    ID_MODALIDADE: TJvDBComboBox;
    DATAHORA_INICIO_VIAGEM: TJvDBDateTimePicker;
    ID_UF_INICIAL: TJvDBLookupCombo;
    ID_TIPO_TRANSPORTADOR: TJvDBComboBox;
    ID_FORMA_EMISSAO: TJvDBComboBox;
    Panel13: TPanel;
    JvgGroupBox2: TJvgGroupBox;
    Label12: TLabel;
    Label8: TLabel;
    Panel1: TPanel;
    btnLocalCarregamentoExcluir: TJvSpeedButton;
    btnLocalCarregamentoIncluir: TJvSpeedButton;
    gridLocalCarregamento: TJvDBGrid;
    JvgGroupBox1: TJvgGroupBox;
    Label7: TLabel;
    Panel2: TPanel;
    btnLocalPercursoExcluir: TJvSpeedButton;
    btnLocalPercursoIncluir: TJvSpeedButton;
    JvDBGrid1: TJvDBGrid;
    JvgGroupBox7: TJvgGroupBox;
    Label5: TLabel;
    Panel24: TPanel;
    Label23: TLabel;
    Label25: TLabel;
    MUNICIPIO_DESCARREGAMENTO: TJvDBLookupCombo;
    UF_DESCARREGAMENTO: TJvDBLookupCombo;
    Panel25: TPanel;
    JvgGroupBox9: TJvgGroupBox;
    Panel3: TPanel;
    btnLOCALdescarregamentoEXCLUIR: TJvSpeedButton;
    btnLOCALdescarregamentoINCLUIR: TJvSpeedButton;
    Panel23: TPanel;
    JvDBGrid9: TJvDBGrid;
    Panel26: TPanel;
    JvDBGrid10: TJvDBGrid;
    Panel27: TPanel;
    JvDBGrid3: TJvDBGrid;
    Panel30: TPanel;
    Label31: TLabel;
    MUN_DESC_CTE: TJvDBLookupCombo;
    JvDBLookupCombo2: TJvDBLookupCombo;
    Panel31: TPanel;
    JvgGroupBox13: TJvgGroupBox;
    Label11: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    TOTF_VLR_TOT_MERCADORIA: TJvDBCalcEdit;
    TOTF_PES_BRUTO: TJvDBCalcEdit;
    TOTF_COD_UNIDADE: TJvDBComboBox;
    Panel33: TPanel;
    JvgGroupBox12: TJvgGroupBox;
    Panel4: TPanel;
    btnLacresExcluir: TJvSpeedButton;
    btnLacresIncluir: TJvSpeedButton;
    Panel28: TPanel;
    JvDBGrid2: TJvDBGrid;
    Panel29: TPanel;
    Label9: TLabel;
    N_LACRE: TJvMaskEdit;
    JvgGroupBox19: TJvgGroupBox;
    Panel34: TPanel;
    btnDOCDOWNexcluir: TJvSpeedButton;
    btnDOCDOWNincluir: TJvSpeedButton;
    Panel35: TPanel;
    JvDBGrid11: TJvDBGrid;
    Panel36: TPanel;
    Label42: TLabel;
    N_DOC_DOWNLOAD: TJvMaskEdit;
    dtstabMDFE_AUT_DOWNLOAD: TDataSource;
    tabNFe: TTabSheet;
    JvgGroupBox20: TJvgGroupBox;
    Panel37: TPanel;
    JvSpeedButton1: TJvSpeedButton;
    JvSpeedButton2: TJvSpeedButton;
    JvSpeedButton3: TJvSpeedButton;
    Panel38: TPanel;
    JvDBGrid12: TJvDBGrid;
    Panel39: TPanel;
    Label45: TLabel;
    MUN_DESC_NFE: TJvDBLookupCombo;
    JvDBLookupCombo4: TJvDBLookupCombo;
    dtstabMDFE_NFE: TDataSource;
    ID_UF_FINAL: TDBLookupComboBox;
    ID_MUNICIPIO_INICIAL: TDBLookupComboBox;
    tabAquaviario: TTabSheet;
    Panel40: TPanel;
    Label46: TLabel;
    AQUA_CNPJ: TJvDBMaskEdit;
    AQUA_EMBARCACAO_TIPO: TJvDBMaskEdit;
    Label47: TLabel;
    Label48: TLabel;
    AQUA_EMBARCACAO_CODIGO: TJvDBMaskEdit;
    Label49: TLabel;
    AQUA_EMBARCACAO_VIAGEM_NUMERO: TJvDBMaskEdit;
    Label50: TLabel;
    AQUA_EMBARCACAO_NOME: TJvDBMaskEdit;
    Label51: TLabel;
    AQUA_EMBARCACAO_CODPORTO_EMB: TJvDBMaskEdit;
    Label52: TLabel;
    AQUA_EMBARCACAO_CODPORTO_DEST: TJvDBMaskEdit;
    JvPageControl1: TJvPageControl;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    TabSheet10: TTabSheet;
    TabSheet11: TTabSheet;
    TabSheet12: TTabSheet;
    Panel41: TPanel;
    Panel42: TPanel;
    btnAQUAtermcarregEXCLUIR: TJvSpeedButton;
    btnAQUAtermcarregINCLUIR: TJvSpeedButton;
    Panel43: TPanel;
    Label55: TLabel;
    Label56: TLabel;
    AQUA_LOC_CARR_TERMINAL: TJvMaskEdit;
    AQUA_LOC_CARR_TEMINAL_NOME: TJvMaskEdit;
    JvDBGrid13: TJvDBGrid;
    Panel44: TPanel;
    Label53: TLabel;
    Label54: TLabel;
    AQUA_LOC_DESCARR_TERMINAL: TJvMaskEdit;
    AQUA_LOC_DESCARR_TEMINAL_NOME: TJvMaskEdit;
    Panel45: TPanel;
    btnAQUAtermdescarregEXCLUIR: TJvSpeedButton;
    btnAQUAtermdescarregINCLUIR: TJvSpeedButton;
    Panel46: TPanel;
    Panel47: TPanel;
    Label57: TLabel;
    AQUA_COMBOIO_CODIGO: TJvMaskEdit;
    Panel48: TPanel;
    btnAQUAcomboioEXCLUIR: TJvSpeedButton;
    btnAQUAcomboioINCLUIR: TJvSpeedButton;
    Panel49: TPanel;
    JvDBGrid15: TJvDBGrid;
    Panel50: TPanel;
    Label58: TLabel;
    Label59: TLabel;
    AQUA_UNIDCARGA_IDENT: TJvMaskEdit;
    Panel51: TPanel;
    btnAQUAunidcargaEXCLUIR: TJvSpeedButton;
    btnAQUAunidcargaINCLUIR: TJvSpeedButton;
    Panel52: TPanel;
    JvDBGrid16: TJvDBGrid;
    JvLookupAutoComplete1: TJvLookupAutoComplete;
    AQUA_UNIDCARGA_TIPO: TJvComboBox;
    Panel53: TPanel;
    Label60: TLabel;
    Label61: TLabel;
    AQUA_UNID_TRANS_IDENT: TJvMaskEdit;
    AQUA_UNIDTRANS_TIPO: TJvComboBox;
    Panel54: TPanel;
    btnAQUAunidtransEXCLUIR: TJvSpeedButton;
    btnAQUAunidtransINCLUIR: TJvSpeedButton;
    dtstabMDFE_AQUA_TERMINAL_CARREG: TDataSource;
    dtstabMDFE_AQUA_TERMINAL_DESCARREG: TDataSource;
    JvDBGrid14: TJvDBGrid;
    dtstabMDFE_AQUA_COMBOIO: TDataSource;
    Label62: TLabel;
    AQUA_COMBOIO_BALSA: TJvMaskEdit;
    dtstabMDFE_AQUA_UNID_CARGA: TDataSource;
    dtstabMDFE_AQUA_UNID_TRANS: TDataSource;
    JvDBGrid17: TJvDBGrid;
    ID_UF_LOCAL_CARREGAMENTO: TJvDBLookupCombo;
    ID_UF_PERCURSO: TJvDBLookupCombo;
    JvDBMaskEdit2: TJvDBMaskEdit;
    Label63: TLabel;
    Label84: TLabel;
    pageRodo: TJvPageControl;
    tabVeiculoTracao: TTabSheet;
    Panel15: TPanel;
    Label14: TLabel;
    Label30: TLabel;
    VEICULO_COD_AGENDA_PORT: TJvDBMaskEdit;
    LcbxVeiculo: TDBLookupComboBox;
    Panel16: TPanel;
    JvgGroupBox15: TJvgGroupBox;
    Label16: TLabel;
    Label19: TLabel;
    Label29: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label38: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label20: TLabel;
    Label89: TLabel;
    VEICULO_TIPO_CARROCERIA: TJvDBComboBox;
    VEICULO_CODIGO_INTERNO: TJvDBMaskEdit;
    VEICULO_TIPO_RODADO: TJvDBComboBox;
    VEICULO_PLACA: TJvDBMaskEdit;
    VEICULO_CAPACIDADE_KG: TJvDBMaskEdit;
    VEICULO_TARA: TJvDBMaskEdit;
    VEICULO_CAPACIDADE_M3: TJvDBMaskEdit;
    VEICULO_RENAVAN: TJvDBMaskEdit;
    VEICULO_UF: TDBLookupComboBox;
    VEICULO_RNTRC: TJvDBMaskEdit;
    Panel17: TPanel;
    JvgGroupBox16: TJvgGroupBox;
    Panel6: TPanel;
    btnCondutoresExcluir: TJvSpeedButton;
    btnCondutoresIncluir: TJvSpeedButton;
    JvDBGrid4: TJvDBGrid;
    Panel14: TPanel;
    Label28: TLabel;
    JvgGroupBox18: TJvgGroupBox;
    Panel32: TPanel;
    Label33: TLabel;
    Label32: TLabel;
    Label39: TLabel;
    Label37: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label83: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    labelseila: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label90: TLabel;
    EMI_N_PROP: TJvDBCheckBox;
    EMI_N_PROP_RNTRC: TJvDBMaskEdit;
    EMI_N_PROP_TIPO: TJvDBComboBox;
    EMI_N_PROP_CPF_CNPJ: TJvDBMaskEdit;
    EMI_N_PROP_UF: TJvDBLookupCombo;
    EMI_N_PROP_IE: TJvDBMaskEdit;
    EMI_N_PROP_RZSOCIAL: TJvDBMaskEdit;
    EMI_N_PROP_CELULAR: TJvDBMaskEdit;
    pagREBOQUE: TTabSheet;
    JvgGroupBox4: TJvgGroupBox;
    Panel8: TPanel;
    btnReboqueExcluir: TJvSpeedButton;
    btnReboqueIncluir: TJvSpeedButton;
    btnReboqueAlterar: TJvSpeedButton;
    JvDBGrid5: TJvDBGrid;
    pagCIOT: TTabSheet;
    JvgGroupBox5: TJvgGroupBox;
    Panel7: TPanel;
    btnCIOTexcluir: TJvSpeedButton;
    btnCIOTIncluir: TJvSpeedButton;
    Panel18: TPanel;
    Label3: TLabel;
    Label6: TLabel;
    edtCIOT: TJvMaskEdit;
    CIOT_DOC: TJvMaskEdit;
    opCPF: TJvRadioButton;
    opCNPJ: TJvRadioButton;
    btnGerarCIOT: TBitBtn;
    Panel19: TPanel;
    JvDBGrid6: TJvDBGrid;
    pagCONTRATANTES: TTabSheet;
    JvgGroupBox6: TJvgGroupBox;
    Panel9: TPanel;
    btnCONTRATANTESexcluir: TJvSpeedButton;
    btnCONTRATANTESincluir: TJvSpeedButton;
    Panel20: TPanel;
    JvDBGrid7: TJvDBGrid;
    Panel21: TPanel;
    Label22: TLabel;
    DOC_CONTRATANTE: TJvMaskEdit;
    pagVALEpedagio: TTabSheet;
    JvgGroupBox8: TJvgGroupBox;
    Panel10: TPanel;
    btnVALEPEDAGIOexcluir: TJvSpeedButton;
    btnVALEPEDAGIOincluir: TJvSpeedButton;
    btnVALEPEDAGIOalterar: TJvSpeedButton;
    Panel22: TPanel;
    JvDBGrid8: TJvDBGrid;
    VEICULO_CHASSI: TJvDBMaskEdit;
    EMI_N_PROP_BAIRRO: TJvDBMaskEdit;
    EMI_N_PROP_RUA: TJvDBMaskEdit;
    EMI_N_PROP_COMPLEMENTO: TJvDBMaskEdit;
    EMI_N_PROP_CEP: TJvDBMaskEdit;
    EMI_N_PROP_NUMERO: TJvDBMaskEdit;
    EMI_N_PROP_CODIGO_MUNICIPIO: TJvDBMaskEdit;
    LkCbxMotorista: TDBLookupComboBox;
    Label91: TLabel;
    VEICULO_MODELO: TJvDBMaskEdit;
    MemoResp: TMemo;
    memoRespWS: TMemo;
    procedure btnLocalCarregamentoExcluirClick(Sender: TObject);
    procedure btnLocalCarregamentoIncluirClick(Sender: TObject);
    procedure dtsDefaultDataChange(Sender: TObject; Field: TField);
    procedure btnLocalPercursoIncluirClick(Sender: TObject);
    procedure btnLocalPercursoExcluirClick(Sender: TObject);
    procedure dtstabMDFE_UF_PERCURSODataChange(Sender: TObject; Field: TField);
    procedure btnLacresIncluirClick(Sender: TObject);
    procedure btnLacresExcluirClick(Sender: TObject);
    procedure dtstabMDFE_LACREDataChange(Sender: TObject; Field: TField);
    procedure btnSegurosIncluirClick(Sender: TObject);
    procedure btnSegurosAlterarClick(Sender: TObject);
    procedure dtstabMDFE_SEGUROSDataChange(Sender: TObject; Field: TField);
    procedure btnSegurosExcluirClick(Sender: TObject);
    procedure btnCondutoresIncluirClick(Sender: TObject);
    procedure btnCondutoresExcluirClick(Sender: TObject);
    procedure dtstabMDFE_CONDUTORESDataChange(Sender: TObject; Field: TField);
    procedure dtstabMDFE_REBOQUEDataChange(Sender: TObject; Field: TField);
    procedure btnReboqueExcluirClick(Sender: TObject);
    procedure btnReboqueIncluirClick(Sender: TObject);
    procedure btnReboqueAlterarClick(Sender: TObject);
    procedure btnCIOTIncluirClick(Sender: TObject);
    procedure btnCIOTexcluirClick(Sender: TObject);
    procedure dtstabMDFE_CIOTDataChange(Sender: TObject; Field: TField);
    procedure btnCONTRATANTESincluirClick(Sender: TObject);
    procedure btnCONTRATANTESexcluirClick(Sender: TObject);
    procedure dtstabMDFE_CONTRATANTESDataChange(Sender: TObject; Field: TField);
    procedure dtstabMDFE_VALEPEDAGIODataChange(Sender: TObject; Field: TField);
    procedure btnVALEPEDAGIOincluirClick(Sender: TObject);
    procedure btnVALEPEDAGIOalterarClick(Sender: TObject);
    procedure btnVALEPEDAGIOexcluirClick(Sender: TObject);
    procedure btnLOCALdescarregamentoINCLUIRClick(Sender: TObject);
    procedure dtstabMDFE_LOCAL_DESCARREGAMENTODataChange(Sender: TObject; Field: TField);
    procedure FormShow(Sender: TObject);
    procedure btnLOCALdescarregamentoEXCLUIRClick(Sender: TObject);
    procedure dtstabMDFE_CTEDataChange(Sender: TObject; Field: TField);
    procedure btnCTEexcluirClick(Sender: TObject);
    procedure btnCTEincluirClick(Sender: TObject);
    procedure btnCTEalterarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EMI_N_PROPChange(Sender: TObject);
    procedure dtstabMDFE_AUT_DOWNLOADDataChange(Sender: TObject; Field: TField);
    procedure btnDOCDOWNincluirClick(Sender: TObject);
    procedure btnDOCDOWNexcluirClick(Sender: TObject);
    procedure JvSpeedButton3Click(Sender: TObject);
    procedure JvSpeedButton2Click(Sender: TObject);
    procedure JvSpeedButton1Click(Sender: TObject);
    procedure ID_TIPO_EMITENTEChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ID_UF_LOCAL_CARREGAMENTOClick(Sender: TObject);
    procedure ID_UF_FINALClick(Sender: TObject);
    procedure opCPFClick(Sender: TObject);
    procedure opCNPJClick(Sender: TObject);
    procedure ID_MODALIDADEChange(Sender: TObject);
    procedure dtstabMDFE_AQUA_TERMINAL_CARREGDataChange(Sender: TObject; Field: TField);
    procedure btnAQUAtermcarregINCLUIRClick(Sender: TObject);
    procedure dtstabMDFE_AQUA_TERMINAL_DESCARREGDataChange(Sender: TObject; Field: TField);
    procedure btnAQUAtermdescarregINCLUIRClick(Sender: TObject);
    procedure btnAQUAtermcarregEXCLUIRClick(Sender: TObject);
    procedure btnAQUAtermdescarregEXCLUIRClick(Sender: TObject);
    procedure dtstabMDFE_AQUA_COMBOIODataChange(Sender: TObject; Field: TField);
    procedure btnAQUAcomboioINCLUIRClick(Sender: TObject);
    procedure btnAQUAcomboioEXCLUIRClick(Sender: TObject);
    procedure btnAQUAunidcargaEXCLUIRClick(Sender: TObject);
    procedure btnAQUAunidcargaINCLUIRClick(Sender: TObject);
    procedure dtstabMDFE_AQUA_UNID_CARGADataChange(Sender: TObject; Field: TField);
    procedure dtstabMDFE_AQUA_UNID_TRANSDataChange(Sender: TObject; Field: TField);
    procedure btnAQUAunidtransEXCLUIRClick(Sender: TObject);
    procedure btnAQUAunidtransINCLUIRClick(Sender: TObject);
    procedure LcbxVeiculoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGerarCIOTClick(Sender: TObject);
    procedure DOC_CONTRATANTEChange(Sender: TObject);
  private
    sToken: String;
    function GerarCIOT: string;
    procedure InserirRegistroDefault;
    procedure solicitarToken(contrato: TCIOT);
    procedure cadastrarVeiculo(contrato: TCIOT);
    procedure cadastrarProprietarioDoVeiculo(contrato: TCIOT);
    procedure cadastrarMotorista(contrato: TCIOT);
    procedure adicionarOperacaoTransporte(contrato: TCIOT);
    function gerarLogCadastros: String;
  public
    class function RegistroDefault: TRetornoCadastro;
    procedure CalculaTotal;
  end;

var
  frmMDFEcadastro: TfrmMDFEcadastro;

implementation

{$R *.dfm}

class function TfrmMDFEcadastro.RegistroDefault: TRetornoCadastro;
begin
  frmMDFEcadastro := TfrmMDFEcadastro.Create(Nil);
  try
    dtmMDFE.FTOperacao := TRegistroDefault;
    frmMDFEcadastro.FOperacao := TRegistroDefault;

    TFDQuery(frmMDFEcadastro.dtsDefault.DataSet).Close;
    TFDQuery(frmMDFEcadastro.dtsDefault.DataSet).ParamByName('ID_MDFE').AsInteger := 1;
    TFDQuery(frmMDFEcadastro.dtsDefault.DataSet).Open;
    TFDQuery(frmMDFEcadastro.dtsDefault.DataSet).FetchAll;

    if TFDQuery(frmMDFEcadastro.dtsDefault.DataSet).IsEmpty then
      TFDQuery(frmMDFEcadastro.dtsDefault.DataSet).Append;

    with frmMDFEcadastro do
    begin
      ID_SERIE.Enabled := FOperacao <> TRegistroDefault;
      ID_MDFE.Enabled := FOperacao <> TRegistroDefault;
      pagCONTRATANTES.TabVisible := FOperacao <> TRegistroDefault;
      pagREBOQUE.TabVisible := FOperacao <> TRegistroDefault;
      pagCIOT.TabVisible := FOperacao <> TRegistroDefault;
      pagCONTRATANTES.TabVisible := FOperacao <> TRegistroDefault;
      pagVALEpedagio.TabVisible := FOperacao <> TRegistroDefault;
      tabAquaviario.TabVisible := FOperacao <> TRegistroDefault;
      pageINFdoc.TabVisible := FOperacao <> TRegistroDefault;
      tabInformacoesCarga.TabVisible := FOperacao <> TRegistroDefault;
      tabTotalizadores.TabVisible := FOperacao <> TRegistroDefault;
      tabInformacoesAdicionais.TabVisible := FOperacao <> TRegistroDefault;
    end;

    frmMDFEcadastro.ShowModal;
  finally
    FreeAndNil(frmMDFEcadastro);
  end;
end;

procedure TfrmMDFEcadastro.btnCondutoresExcluirClick(Sender: TObject);
begin
  if dtsDefault.DataSet.State in [dsBrowse] then
    dtsDefault.DataSet.Edit;

  TFDQuery(dtstabMDFE_CONDUTORES.DataSet).Delete;
end;

procedure TfrmMDFEcadastro.btnCondutoresIncluirClick(Sender: TObject);
var
  iErr: String;
begin
  iErr := ACBrValidador.ValidarCPF(ACBrUtil.Strings.OnlyNumber(LkCbxMotorista.KeyValue));

  if iErr.Trim.Length > 0 then
    raise Exception.Create(iErr);

  if TFDQuery(dtsDefault.DataSet).State in [dsInsert] then
  begin
    TFDQuery(dtsDefault.DataSet).Post;
    TFDQuery(dtsDefault.DataSet).Edit;
  end;

  if TFDQuery(dtsDefault.DataSet).State in [dsBrowse, dsEdit] then
  begin
    try
      TFDQuery(dtstabMDFE_CONDUTORES.DataSet).Append;
      TFDQuery(dtstabMDFE_CONDUTORES.DataSet).FieldByName('NOME').Value := dtmMDFE.qryMotoristaNOME.AsString;
      TFDQuery(dtstabMDFE_CONDUTORES.DataSet).FieldByName('ID_CPF').Value := LkCbxMotorista.KeyValue;
      TFDQuery(dtstabMDFE_CONDUTORES.DataSet).Prepare;
      TFDQuery(dtstabMDFE_CONDUTORES.DataSet).Post;
      LkCbxMotorista.KeyValue := '';
    except
      on e: Exception do
      begin
        TFDQuery(dtstabMDFE_CONDUTORES.DataSet).Cancel;
        raise Exception.Create(e.Message);
      end;
    end;
  end;
end;

procedure TfrmMDFEcadastro.btnConfirmarClick(Sender: TObject);
begin
  Self.Perform(WM_NEXTDLGCTL, 0, 0);

  case FOperacao of
    TIncluir:
      begin
        dtmMDFE.tabMDFEEMI_N_PROP_RNTRC.Required := dtmMDFE.tabMDFEEMI_N_PROP.AsString = 'S';
        dtmMDFE.tabMDFEEMI_N_PROP_TIPO.Required := dtmMDFE.tabMDFEEMI_N_PROP.AsString = 'S';
        dtmMDFE.tabMDFEEMI_N_PROP_UF.Required := dtmMDFE.tabMDFEEMI_N_PROP.AsString = 'S';
        dtmMDFE.tabMDFEEMI_N_PROP_RZSOCIAL.Required := dtmMDFE.tabMDFEEMI_N_PROP.AsString = 'S';

        if dtmMDFE.tabMDFE_LOCAL_CARREGAMENTO.RecordCount = 0 then
          raise Exception.Create('Favor informar ao menos 1 local de carregamento.');

        if EMI_N_PROP.Checked then
        begin
          if dtmMDFE.tabMDFEEMI_N_PROP_CPF_CNPJ.AsString.Trim.Length = 0 then
            raise Exception.Create('Favor informar o CPF/CNPJ proprietário veiuculo!');
          if dtmMDFE.tabMDFEEMI_N_PROP_IE.AsString.Trim.Length = 0 then
            raise Exception.Create('Favor informar o IE proprietário veiuculo!');
          if dtmMDFE.tabMDFEEMI_N_PROP_RZSOCIAL.AsString.Trim.Length = 0 then
            raise Exception.Create('Favor informar o Razão Social proprietário veiuculo!');
          if dtmMDFE.tabMDFEEMI_N_PROP_RNTRC.AsString.Trim.Length = 0 then
            raise Exception.Create('Favor informar a RNTRC proprietário veiuculo!');
          if dtmMDFE.tabMDFEEMI_N_PROP_UF.AsString.Trim.Length = 0 then
            raise Exception.Create('Favor informar a UF proprietário veiuculo!');

        end;
        if dtmMDFE.tabMDFEID_UF_FINAL.AsString.Trim.Length = 0 then
          raise Exception.Create('Favor informar o local de descarregamento.');

        case dtmMDFE.tabMDFEID_MODALIDADE.AsInteger of
          0:
            begin
              if dtmMDFE.tabMDFEVEICULO_TIPO_CARROCERIA.AsString.Trim.Length = 0 then
                raise Exception.Create('Favor informar o tipo de carroceria do veículo.');

              if dtmMDFE.tabMDFEVEICULO_PLACA.AsString.Trim.Length = 0 then
                raise Exception.Create('Favor informar o tipo a Placa do veículo.');

              if dtmMDFE.tabMDFEVEICULO_TARA.AsString.Trim.Length = 0 then
                raise Exception.Create('Favor informar o tipo a Tara do veículo.');

              if dtmMDFE.tabMDFEVEICULO_UF.AsString.Trim.Length = 0 then
                raise Exception.Create('Favor informar a UF do veículo.');

              if dtmMDFE.tabMDFEVEICULO_TIPO_RODADO.AsString.Trim.Length = 0 then
                raise Exception.Create('Favor informar o tipo rodado do veículo.');

              if dtmMDFE.tabMDFE_CONDUTORES.RecordCount = 0 then
                raise Exception.Create('Favor informar ao menos 1 condutor.');

              case dtmMDFE.tabMDFEID_TIPO_EMITENTE.AsInteger of
                0:
                  begin
                    if dtmMDFE.tabMDFE_CIOT.RecordCount = 0 then
                      raise Exception.Create('Favor informar ao menos 1 CIOT.');
                  end;
              end;
            end;
          2:
            ;
        end;

        case dtmMDFE.tabMDFEID_TIPO_EMITENTE.AsInteger of
          0:
            begin
              if dtmMDFE.tabMDFE_CTE.RecordCount = 0 then
                raise Exception.Create('Favor informar ao menos um CT-e.');

              if dtmMDFE.tabMDFE_SEGUROS.RecordCount = 0 then
                raise Exception.Create('Favor informar os dados do Seguro.');
            end;
          1:
            begin
              if dtmMDFE.tabMDFE_NFE.RecordCount = 0 then
                raise Exception.Create('Favor informar ao menos uma NF-e.');
            end;
        end;
        if (FOperacao = TIncluir) or (dtmMDFE.tabMDFEID_MDFE.Value <= 0) then
          dtmMDFE.tabMDFEID_MDFE.AsInteger := oMDFE.NumeracaoMDFe;
        // dtmMDFE.tabMDFEID_MDFE.AsInteger := oMDFE.GetNEW_ID_MDFE
      end;
  end;

  inherited;
end;

procedure TfrmMDFEcadastro.btnLacresExcluirClick(Sender: TObject);
begin
  TFDQuery(dtstabMDFE_LACRE.DataSet).Delete;
end;

procedure TfrmMDFEcadastro.btnLacresIncluirClick(Sender: TObject);
begin
  if TFDQuery(dtsDefault.DataSet).State in [dsInsert] then
  begin
    TFDQuery(dtsDefault.DataSet).Post;
    TFDQuery(dtsDefault.DataSet).Edit;
  end;

  if TFDQuery(dtsDefault.DataSet).State in [dsBrowse, dsEdit] then
  begin
    if N_LACRE.Text = '' then
      N_LACRE.SetFocus;

    try
      TFDQuery(dtstabMDFE_LACRE.DataSet).Append;
      TFDQuery(dtstabMDFE_LACRE.DataSet).FieldByName('LACRE').Value := N_LACRE.Text;
      TFDQuery(dtstabMDFE_LACRE.DataSet).Prepare;
      TFDQuery(dtstabMDFE_LACRE.DataSet).Post;
    except
      on e: Exception do
      begin
        TFDQuery(dtstabMDFE_LACRE.DataSet).Cancel;
        raise Exception.Create(e.Message);
      end;
    end;
  end;
end;

procedure TfrmMDFEcadastro.btnLocalCarregamentoExcluirClick(Sender: TObject);
begin
  if dtsDefault.DataSet.State in [dsBrowse] then
    dtsDefault.DataSet.Edit;

  TFDQuery(dtstabCIDADES_LOCAL_CARREGAMENTO.DataSet).Delete;
end;

procedure TfrmMDFEcadastro.btnLocalCarregamentoIncluirClick(Sender: TObject);
begin
  if TFDQuery(dtsDefault.DataSet).State in [dsInsert] then
  begin
    TFDQuery(dtsDefault.DataSet).Post;
    TFDQuery(dtsDefault.DataSet).Edit;
  end;

  if TFDQuery(dtsDefault.DataSet).State in [dsBrowse, dsEdit] then
  begin
    if (ID_UF_LOCAL_CARREGAMENTO.Text = '') and (ID_MUNICIPIO_INICIAL.Text = '') then
      ID_UF_LOCAL_CARREGAMENTO.SetFocus;

    try
      TFDQuery(dtstabCIDADES_LOCAL_CARREGAMENTO.DataSet).Append;
      TFDQuery(dtstabCIDADES_LOCAL_CARREGAMENTO.DataSet).FieldByName('ID_UF').Value := ID_UF_LOCAL_CARREGAMENTO.Text;
      TFDQuery(dtstabCIDADES_LOCAL_CARREGAMENTO.DataSet).FieldByName('ID_MUNICIPIO').Value := ID_MUNICIPIO_INICIAL.KeyValue;
      TFDQuery(dtstabCIDADES_LOCAL_CARREGAMENTO.DataSet).FieldByName('DTHR').Value := Now;
      TFDQuery(dtstabCIDADES_LOCAL_CARREGAMENTO.DataSet).Prepare;
      TFDQuery(dtstabCIDADES_LOCAL_CARREGAMENTO.DataSet).Post;
    except
      on e: Exception do
      begin
        TFDQuery(dtstabCIDADES_LOCAL_CARREGAMENTO.DataSet).Cancel;
        raise Exception.Create(e.Message);
      end;
    end;
  end;
end;

procedure TfrmMDFEcadastro.btnLOCALdescarregamentoEXCLUIRClick(Sender: TObject);
begin
  if dtsDefault.DataSet.State in [dsBrowse] then
    dtsDefault.DataSet.Edit;

  TFDQuery(dtstabMDFE_LOCAL_DESCARREGAMENTO.DataSet).Delete;
end;

procedure TfrmMDFEcadastro.btnLOCALdescarregamentoINCLUIRClick(Sender: TObject);
begin
  if TFDQuery(dtsDefault.DataSet).State in [dsInsert] then
  begin
    TFDQuery(dtsDefault.DataSet).Post;
    TFDQuery(dtsDefault.DataSet).Edit;
  end;

  if TFDQuery(dtsDefault.DataSet).State in [dsBrowse, dsEdit] then
  begin
    if (UF_DESCARREGAMENTO.Text = '') and (MUNICIPIO_DESCARREGAMENTO.Text = '') then
      MUNICIPIO_DESCARREGAMENTO.SetFocus;

    try
      TFDQuery(dtstabMDFE_LOCAL_DESCARREGAMENTO.DataSet).Append;
      TFDQuery(dtstabMDFE_LOCAL_DESCARREGAMENTO.DataSet).FieldByName('ID_CIDADES_UF').Value := UF_DESCARREGAMENTO.Text;
      TFDQuery(dtstabMDFE_LOCAL_DESCARREGAMENTO.DataSet).FieldByName('ID_CIDADES_IBGE').Value := MUNICIPIO_DESCARREGAMENTO.Value;
      TFDQuery(dtstabMDFE_LOCAL_DESCARREGAMENTO.DataSet).Prepare;
      TFDQuery(dtstabMDFE_LOCAL_DESCARREGAMENTO.DataSet).Post;
    except
      on e: Exception do
      begin
        TFDQuery(dtstabMDFE_LOCAL_DESCARREGAMENTO.DataSet).Cancel;
        raise Exception.Create(e.Message);
      end;
    end;
  end;
end;

procedure TfrmMDFEcadastro.btnLocalPercursoExcluirClick(Sender: TObject);
begin
  if dtsDefault.DataSet.State in [dsBrowse] then
    dtsDefault.DataSet.Edit;

  TFDQuery(dtstabMDFE_UF_PERCURSO.DataSet).Delete;
end;

procedure TfrmMDFEcadastro.btnLocalPercursoIncluirClick(Sender: TObject);
begin
  if TFDQuery(dtsDefault.DataSet).State in [dsInsert] then
  begin
    TFDQuery(dtsDefault.DataSet).Post;
    TFDQuery(dtsDefault.DataSet).Edit;
  end;

  if TFDQuery(dtsDefault.DataSet).State in [dsBrowse, dsEdit] then
  begin

    if ID_UF_PERCURSO.Text = '' then
      ID_UF_PERCURSO.SetFocus;

    try
      TFDQuery(dtstabMDFE_UF_PERCURSO.DataSet).Append;
      TFDQuery(dtstabMDFE_UF_PERCURSO.DataSet).FieldByName('ID_UF').Value := ID_UF_PERCURSO.Text;
      TFDQuery(dtstabMDFE_UF_PERCURSO.DataSet).FieldByName('DTHR').Value := Now;
      TFDQuery(dtstabMDFE_UF_PERCURSO.DataSet).Prepare;
      TFDQuery(dtstabMDFE_UF_PERCURSO.DataSet).Post;
    except
      on e: Exception do
      begin
        TFDQuery(dtstabMDFE_UF_PERCURSO.DataSet).Cancel;
        raise Exception.Create(e.Message);
      end;
    end;

  end;
end;

procedure TfrmMDFEcadastro.btnReboqueAlterarClick(Sender: TObject);
begin
  TfrmMDFEreboqueCADASTRO.Alterar;
end;

procedure TfrmMDFEcadastro.btnReboqueExcluirClick(Sender: TObject);
begin
  if dtsDefault.DataSet.State in [dsBrowse] then
    dtsDefault.DataSet.Edit;

  TFDQuery(dtstabMDFE_REBOQUE.DataSet).Delete;
end;

procedure TfrmMDFEcadastro.btnReboqueIncluirClick(Sender: TObject);
begin
  if TFDQuery(dtsDefault.DataSet).State in [dsInsert] then
  begin
    TFDQuery(dtsDefault.DataSet).Post;
    TFDQuery(dtsDefault.DataSet).Edit;
  end;

  TfrmMDFEreboqueCADASTRO.Novo;
end;

procedure TfrmMDFEcadastro.btnSegurosAlterarClick(Sender: TObject);
begin
  TfrmMDFEsegurosCADASTRO.Alterar;
end;

procedure TfrmMDFEcadastro.btnSegurosExcluirClick(Sender: TObject);
begin
  TFDQuery(dtstabMDFE_SEGUROS.DataSet).Delete;
end;

procedure TfrmMDFEcadastro.btnSegurosIncluirClick(Sender: TObject);
begin
  if TFDQuery(dtsDefault.DataSet).State in [dsInsert] then
  begin
    TFDQuery(dtsDefault.DataSet).Post;
    TFDQuery(dtsDefault.DataSet).Edit;
  end;

  if TFDQuery(dtsDefault.DataSet).State in [dsBrowse, dsEdit] then
  begin
    TfrmMDFEsegurosCADASTRO.Novo;
  end;
end;

procedure TfrmMDFEcadastro.btnVALEPEDAGIOalterarClick(Sender: TObject);
begin
  TfrmMDFEvalepedagioCADASTRO.Alterar;
end;

procedure TfrmMDFEcadastro.btnVALEPEDAGIOexcluirClick(Sender: TObject);
begin
  if dtsDefault.DataSet.State in [dsBrowse] then
    dtsDefault.DataSet.Edit;

  TFDQuery(dtstabMDFE_VALEPEDAGIO.DataSet).Delete;
end;

procedure TfrmMDFEcadastro.btnVALEPEDAGIOincluirClick(Sender: TObject);
begin
  if TFDQuery(dtsDefault.DataSet).State in [dsInsert] then
  begin
    TFDQuery(dtsDefault.DataSet).Post;
    TFDQuery(dtsDefault.DataSet).Edit;
  end;

  if TFDQuery(dtsDefault.DataSet).State in [dsBrowse, dsEdit] then
  begin
    TfrmMDFEvalepedagioCADASTRO.Novo;
  end;
end;

procedure TfrmMDFEcadastro.CalculaTotal;
var
  TotalPeso: Double;
  ValorTotal: Double;
begin
  TotalPeso := 0;
  ValorTotal := 0;
  try
    dtmMDFE.tabMDFE_NFE.BeginBatch;
    dtmMDFE.tabMDFE_NFE.First;
    while not dtmMDFE.tabMDFE_NFE.Eof do
    begin
      TotalPeso := TotalPeso + dtmMDFE.tabMDFE_NFEPESO.AsCurrency;
      ValorTotal := ValorTotal + dtmMDFE.tabMDFE_NFEVALOR.AsCurrency;
      dtmMDFE.tabMDFE_NFE.Next;
    end;
  finally
    dtmMDFE.tabMDFETOTF_VLR_TOT_MERCADORIA.AsCurrency := ValorTotal;
    dtmMDFE.tabMDFETOTF_PES_BRUTO.AsCurrency := TotalPeso;
    dtmMDFE.tabMDFE_NFE.EndBatch;
  end;

end;

procedure TfrmMDFEcadastro.DOC_CONTRATANTEChange(Sender: TObject);
begin
  inherited;

  // Remove todos os caracteres não numéricos para verificar o comprimento
  var
  TextoNumerico := StringReplace(DOC_CONTRATANTE.Text, '.', '', [rfReplaceAll]);
  TextoNumerico := StringReplace(TextoNumerico, '-', '', [rfReplaceAll]);
  TextoNumerico := StringReplace(TextoNumerico, '/', '', [rfReplaceAll]);

  if Length(TextoNumerico) <= 11 then
  begin
    // Se tiver 11 ou menos dígitos, aplica a máscara de CPF
    DOC_CONTRATANTE.EditMask := '999.999.999-99;1;_';
  end
  else
  begin
    // Se tiver mais de 11 dígitos, aplica a máscara de CNPJ
    DOC_CONTRATANTE.EditMask := '99.999.999/9999-99;1;_';
  end;
end;

procedure TfrmMDFEcadastro.ID_UF_LOCAL_CARREGAMENTOClick(Sender: TObject);
begin
  if Assigned(dtsqryCIDADES_LOCAL_CARREGAMENTO) then
  begin
    if ID_UF_LOCAL_CARREGAMENTO.Text <> '' then
    begin
      TFDQuery(dtsqryCIDADES_LOCAL_CARREGAMENTO.DataSet).Close;
      TFDQuery(dtsqryCIDADES_LOCAL_CARREGAMENTO.DataSet).Params[0].Value := ID_UF_LOCAL_CARREGAMENTO.Text;
      TFDQuery(dtsqryCIDADES_LOCAL_CARREGAMENTO.DataSet).Prepare;
      TFDQuery(dtsqryCIDADES_LOCAL_CARREGAMENTO.DataSet).Open;
    end;
  end;
end;

procedure TfrmMDFEcadastro.InserirRegistroDefault;
begin
  try
    with dtmDefault.qryTmp do
    begin
      Close;
      Open(Format('SELECT * FROM MDFE WHERE ID_EMPRESA = %d AND ID_MDFE = 1 AND ID_SERIE = 10000', [oEmpresa.ID]));
      FetchAll;
    end;

    if not dtmDefault.qryTmp.IsEmpty then
    begin
      with dtsDefault.DataSet do
      begin
        FieldByName('ID_UF_INICIAL').Value := dtmDefault.qryTmp.FieldByName('ID_UF_INICIAL').Value;
        FieldByName('ID_TIPO_EMITENTE').Value := dtmDefault.qryTmp.FieldByName('ID_TIPO_EMITENTE').Value;
        FieldByName('ID_TIPO_TRANSPORTADOR').Value := dtmDefault.qryTmp.FieldByName('ID_TIPO_TRANSPORTADOR').Value;
        FieldByName('ID_MODALIDADE').Value := dtmDefault.qryTmp.FieldByName('ID_MODALIDADE').Value;
        FieldByName('ID_FORMA_EMISSAO').Value := dtmDefault.qryTmp.FieldByName('ID_FORMA_EMISSAO').Value;
        FieldByName('ID_UF_FINAL').Value := dtmDefault.qryTmp.FieldByName('ID_UF_FINAL').Value;
        FieldByName('EMI_N_PROP').Value := dtmDefault.qryTmp.FieldByName('EMI_N_PROP').Value;
        FieldByName('EMI_N_PROP_CPF_CNPJ').Value := dtmDefault.qryTmp.FieldByName('EMI_N_PROP_CPF_CNPJ').Value;
        FieldByName('EMI_N_PROP_IE').Value := dtmDefault.qryTmp.FieldByName('EMI_N_PROP_IE').Value;
        FieldByName('EMI_N_PROP_RZSOCIAL').Value := dtmDefault.qryTmp.FieldByName('EMI_N_PROP_RZSOCIAL').Value;
        FieldByName('EMI_N_PROP_RNTRC').Value := dtmDefault.qryTmp.FieldByName('EMI_N_PROP_RNTRC').Value;
        FieldByName('EMI_N_PROP_UF').Value := dtmDefault.qryTmp.FieldByName('EMI_N_PROP_UF').Value;
        FieldByName('EMI_N_PROP_TIPO').Value := dtmDefault.qryTmp.FieldByName('EMI_N_PROP_TIPO').Value;
        FieldByName('VEICULO_RNTRC').Value := dtmDefault.qryTmp.FieldByName('VEICULO_RNTRC').Value;
        FieldByName('VEICULO_COD_AGENDA_PORT').Value := dtmDefault.qryTmp.FieldByName('VEICULO_COD_AGENDA_PORT').Value;
        FieldByName('VEICULO_CODIGO_INTERNO').Value := dtmDefault.qryTmp.FieldByName('VEICULO_CODIGO_INTERNO').Value;
        FieldByName('VEICULO_TIPO_CARROCERIA').Value := dtmDefault.qryTmp.FieldByName('VEICULO_TIPO_CARROCERIA').Value;
        FieldByName('VEICULO_PLACA').Value := dtmDefault.qryTmp.FieldByName('VEICULO_PLACA').Value;
        FieldByName('VEICULO_TARA').Value := dtmDefault.qryTmp.FieldByName('VEICULO_TARA').Value;
        FieldByName('VEICULO_UF').Value := dtmDefault.qryTmp.FieldByName('VEICULO_UF').Value;
        FieldByName('VEICULO_TIPO_RODADO').Value := dtmDefault.qryTmp.FieldByName('VEICULO_TIPO_RODADO').Value;
        FieldByName('VEICULO_CAPACIDADE_KG').Value := dtmDefault.qryTmp.FieldByName('VEICULO_CAPACIDADE_KG').Value;
        FieldByName('VEICULO_CAPACIDADE_M3').Value := dtmDefault.qryTmp.FieldByName('VEICULO_CAPACIDADE_M3').Value;
        FieldByName('VEICULO_RENAVAN').Value := dtmDefault.qryTmp.FieldByName('VEICULO_RENAVAN').Value;
        Post;
      end;
    end;

    with dtmDefault.qryTmp do
    begin
      Close;
      Open(Format('SELECT * FROM MDFE_LOCAL_CARREGAMENTO WHERE ID_EMPRESA = %d AND ID_MDFE = 1 AND ID_SERIE = 10000',
        [oEmpresa.ID]));
      FetchAll;
    end;

    if not dtmDefault.qryTmp.IsEmpty then
    begin
      with dtstabCIDADES_LOCAL_CARREGAMENTO.DataSet do
      begin
        Append;
        FieldByName('ID_EMPRESA').Value := dtsDefault.DataSet.FieldByName('ID_EMPRESA').Value;
        FieldByName('ID_MDFE').Value := dtsDefault.DataSet.FieldByName('ID_MDFE').Value;
        FieldByName('ID_SERIE').Value := dtsDefault.DataSet.FieldByName('ID_SERIE').Value;
        FieldByName('ID_UF').Value := dtmDefault.qryTmp.FieldByName('ID_UF').Value;
        FieldByName('ID_MUNICIPIO').Value := dtmDefault.qryTmp.FieldByName('ID_MUNICIPIO').Value;
        FieldByName('DTHR').Value := dtmDefault.qryTmp.FieldByName('DTHR').Value;
        Post;
      end;
    end;

    with dtmDefault.qryTmp do
    begin
      Close;
      Open(Format('SELECT * FROM MDFE_UF_PERCURSO WHERE ID_EMPRESA = %d AND ID_MDFE = 1 AND ID_SERIE = 10000', [oEmpresa.ID]));
      FetchAll;
    end;

    if not dtmDefault.qryTmp.IsEmpty then
    begin
      with dtstabMDFE_UF_PERCURSO.DataSet do
      begin
        Append;
        FieldByName('ID_EMPRESA').Value := dtsDefault.DataSet.FieldByName('ID_EMPRESA').Value;
        FieldByName('ID_MDFE').Value := dtsDefault.DataSet.FieldByName('ID_MDFE').Value;
        FieldByName('ID_SERIE').Value := dtsDefault.DataSet.FieldByName('ID_SERIE').Value;
        FieldByName('ID_UF').Value := dtmDefault.qryTmp.FieldByName('ID_UF').Value;
        FieldByName('DTHR').Value := dtmDefault.qryTmp.FieldByName('DTHR').Value;
        Post;
      end;
    end;

    with dtmDefault.qryTmp do
    begin
      Close;
      Open(Format('SELECT * FROM MDFE_LOCAL_DESCARREGAMENTO WHERE ID_EMPRESA = %d AND ID_MDFE = 1 AND ID_SERIE = 10000',
        [oEmpresa.ID]));
      FetchAll;
    end;

    if not dtmDefault.qryTmp.IsEmpty then
    begin
      with dtstabMDFE_UF_PERCURSO.DataSet do
      begin
        Append;
        FieldByName('ID_EMPRESA').Value := dtsDefault.DataSet.FieldByName('ID_EMPRESA').Value;
        FieldByName('ID_MDFE').Value := dtsDefault.DataSet.FieldByName('ID_MDFE').Value;
        FieldByName('ID_SERIE').Value := dtsDefault.DataSet.FieldByName('ID_SERIE').Value;
        FieldByName('ID_CIDADES_UF').Value := dtmDefault.qryTmp.FieldByName('ID_CIDADES_UF').Value;
        FieldByName('ID_CIDADES_IBGE').Value := dtmDefault.qryTmp.FieldByName('ID_CIDADES_IBGE').Value;
        Post;
      end;
    end;

    with dtmDefault.qryTmp do
    begin
      Close;
      Open(Format('SELECT * FROM MDFE_CONDUTORES WHERE ID_EMPRESA = %d AND ID_MDFE = 1 AND ID_SERIE = 10000', [oEmpresa.ID]));
      FetchAll;
    end;

    if not dtmDefault.qryTmp.IsEmpty then
    begin
      with dtstabMDFE_CONDUTORES.DataSet do
      begin
        Append;
        FieldByName('ID_EMPRESA').Value := dtsDefault.DataSet.FieldByName('ID_EMPRESA').Value;
        FieldByName('ID_MDFE').Value := dtsDefault.DataSet.FieldByName('ID_MDFE').Value;
        FieldByName('ID_SERIE').Value := dtsDefault.DataSet.FieldByName('ID_SERIE').Value;
        FieldByName('ID_CPF').Value := dtmDefault.qryTmp.FieldByName('ID_CPF').Value;
        FieldByName('NOME').Value := dtmDefault.qryTmp.FieldByName('NOME').Value;
        Post;
      end;
    end;
  finally
    dtmDefault.qryTmp.Close;
  end;
end;

procedure TfrmMDFEcadastro.dtsDefaultDataChange(Sender: TObject; Field: TField);
begin
  if Assigned(dtstabCIDADES_LOCAL_CARREGAMENTO.DataSet) then
    btnLocalCarregamentoExcluir.Enabled := TFDQuery(dtstabCIDADES_LOCAL_CARREGAMENTO.DataSet).RecordCount > 0;
end;

procedure TfrmMDFEcadastro.dtstabMDFE_AQUA_TERMINAL_CARREGDataChange(Sender: TObject; Field: TField);
begin
  if Assigned(dtstabMDFE_AQUA_TERMINAL_CARREG.DataSet) then
    btnAQUAtermcarregEXCLUIR.Enabled := TFDQuery(dtstabMDFE_AQUA_TERMINAL_CARREG.DataSet).RecordCount > 0;
end;

procedure TfrmMDFEcadastro.dtstabMDFE_AQUA_COMBOIODataChange(Sender: TObject; Field: TField);
begin
  if Assigned(dtstabMDFE_AQUA_COMBOIO.DataSet) then
    btnAQUAcomboioEXCLUIR.Enabled := TFDQuery(dtstabMDFE_AQUA_COMBOIO.DataSet).RecordCount > 0;
end;

procedure TfrmMDFEcadastro.dtstabMDFE_AQUA_TERMINAL_DESCARREGDataChange(Sender: TObject; Field: TField);
begin
  if Assigned(dtstabMDFE_AQUA_TERMINAL_DESCARREG.DataSet) then
    btnAQUAtermdescarregEXCLUIR.Enabled := TFDQuery(dtstabMDFE_AQUA_TERMINAL_DESCARREG.DataSet).RecordCount > 0;
end;

procedure TfrmMDFEcadastro.dtstabMDFE_AQUA_UNID_CARGADataChange(Sender: TObject; Field: TField);
begin
  if Assigned(dtstabMDFE_AQUA_UNID_CARGA.DataSet) then
    btnAQUAunidcargaEXCLUIR.Enabled := TFDQuery(dtstabMDFE_AQUA_UNID_CARGA.DataSet).RecordCount > 0;
end;

procedure TfrmMDFEcadastro.dtstabMDFE_AQUA_UNID_TRANSDataChange(Sender: TObject; Field: TField);
begin
  if Assigned(dtstabMDFE_AQUA_UNID_TRANS.DataSet) then
    btnAQUAunidtransEXCLUIR.Enabled := TFDQuery(dtstabMDFE_AQUA_UNID_TRANS.DataSet).RecordCount > 0;
end;

procedure TfrmMDFEcadastro.dtstabMDFE_AUT_DOWNLOADDataChange(Sender: TObject; Field: TField);
begin
  if Assigned(dtstabMDFE_AUT_DOWNLOAD.DataSet) then
    btnDOCDOWNexcluir.Enabled := TFDQuery(dtstabMDFE_AUT_DOWNLOAD.DataSet).RecordCount > 0;
end;

procedure TfrmMDFEcadastro.dtstabMDFE_CIOTDataChange(Sender: TObject; Field: TField);
begin
  if Assigned(dtstabMDFE_CIOT.DataSet) then
    btnCIOTexcluir.Enabled := TFDQuery(dtstabMDFE_CIOT.DataSet).RecordCount > 0;
end;

procedure TfrmMDFEcadastro.dtstabMDFE_CONDUTORESDataChange(Sender: TObject; Field: TField);
begin
  if Assigned(dtstabMDFE_CONDUTORES.DataSet) then
    btnCondutoresExcluir.Enabled := TFDQuery(dtstabMDFE_CONDUTORES.DataSet).RecordCount > 0;
end;

procedure TfrmMDFEcadastro.dtstabMDFE_CONTRATANTESDataChange(Sender: TObject; Field: TField);
begin
  if Assigned(dtstabMDFE_CONTRATANTES.DataSet) then
    btnCONTRATANTESexcluir.Enabled := TFDQuery(dtstabMDFE_CONTRATANTES.DataSet).RecordCount > 0;
end;

procedure TfrmMDFEcadastro.dtstabMDFE_CTEDataChange(Sender: TObject; Field: TField);
begin
  if Assigned(dtstabMDFE_CTE.DataSet) then
  begin
    btnCTEalterar.Enabled := TFDQuery(dtstabMDFE_CTE.DataSet).RecordCount > 0;
    btnCTEexcluir.Enabled := TFDQuery(dtstabMDFE_CTE.DataSet).RecordCount > 0;
  end;
end;

procedure TfrmMDFEcadastro.dtstabMDFE_LACREDataChange(Sender: TObject; Field: TField);
begin
  if Assigned(dtstabMDFE_LACRE.DataSet) then
    btnLacresExcluir.Enabled := TFDQuery(dtstabMDFE_LACRE.DataSet).RecordCount > 0;
end;

procedure TfrmMDFEcadastro.dtstabMDFE_LOCAL_DESCARREGAMENTODataChange(Sender: TObject; Field: TField);
begin
  if Assigned(dtstabMDFE_LOCAL_DESCARREGAMENTO.DataSet) then
    btnLOCALdescarregamentoEXCLUIR.Enabled := TFDQuery(dtstabMDFE_LOCAL_DESCARREGAMENTO.DataSet).RecordCount > 0;
end;

procedure TfrmMDFEcadastro.dtstabMDFE_REBOQUEDataChange(Sender: TObject; Field: TField);
begin
  if Assigned(dtstabMDFE_REBOQUE.DataSet) then
  begin
    btnReboqueAlterar.Enabled := TFDQuery(dtstabMDFE_REBOQUE.DataSet).RecordCount > 0;
    btnReboqueExcluir.Enabled := TFDQuery(dtstabMDFE_REBOQUE.DataSet).RecordCount > 0;
  end;
end;

procedure TfrmMDFEcadastro.dtstabMDFE_SEGUROSDataChange(Sender: TObject; Field: TField);
begin
  if Assigned(dtstabMDFE_SEGUROS.DataSet) then
  begin
    btnSegurosAlterar.Enabled := TFDQuery(dtstabMDFE_SEGUROS.DataSet).RecordCount > 0;
    btnSegurosExcluir.Enabled := TFDQuery(dtstabMDFE_SEGUROS.DataSet).RecordCount > 0;
  end;
end;

procedure TfrmMDFEcadastro.dtstabMDFE_UF_PERCURSODataChange(Sender: TObject; Field: TField);
begin
  if Assigned(dtstabMDFE_UF_PERCURSO.DataSet) then
    btnLocalPercursoExcluir.Enabled := TFDQuery(dtstabMDFE_UF_PERCURSO.DataSet).RecordCount > 0;
end;

procedure TfrmMDFEcadastro.dtstabMDFE_VALEPEDAGIODataChange(Sender: TObject; Field: TField);
begin
  if Assigned(dtstabMDFE_VALEPEDAGIO.DataSet) then
  begin
    btnVALEPEDAGIOalterar.Enabled := TFDQuery(dtstabMDFE_VALEPEDAGIO.DataSet).RecordCount > 0;
    btnVALEPEDAGIOexcluir.Enabled := TFDQuery(dtstabMDFE_VALEPEDAGIO.DataSet).RecordCount > 0;
  end;
end;

procedure TfrmMDFEcadastro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  TFDQuery(dtsDefault.DataSet).Close;

  inherited;
end;

procedure TfrmMDFEcadastro.FormCreate(Sender: TObject);
begin
  inherited;

  pageDefault.TabIndex := 0;
  pageRodo.TabIndex := 0;
  pagINFdoc.TabIndex := 0;

  sToken := '';
end;

procedure TfrmMDFEcadastro.FormShow(Sender: TObject);
begin
  inherited;

  if (FOperacao = TIncluir) and (oConfigINI.MDFEInserirDefault) then
    InserirRegistroDefault;

  EMI_N_PROPChange(Sender);
  ID_UF_FINALClick(Sender);
  ID_MODALIDADEChange(Sender);
  ID_TIPO_EMITENTEChange(Sender);
end;

procedure TfrmMDFEcadastro.ID_MODALIDADEChange(Sender: TObject);
begin
  tabRodoviario.TabVisible := ID_MODALIDADE.ItemIndex = 0;
  tabAquaviario.TabVisible := ID_MODALIDADE.ItemIndex = 1;
end;

procedure TfrmMDFEcadastro.ID_TIPO_EMITENTEChange(Sender: TObject);
begin
  tabCTe.TabVisible := ID_TIPO_EMITENTE.ItemIndex = 0;
  tabNFe.TabVisible := ID_TIPO_EMITENTE.ItemIndex = 1;
end;

procedure TfrmMDFEcadastro.ID_UF_FINALClick(Sender: TObject);
begin
  if Assigned(dtsqryCIDADES_MUNICIPIO_DESCARREGAMENTO.DataSet) then
  begin
    if ID_UF_FINAL.Text <> '' then
    begin
      TFDQuery(dtsqryCIDADES_MUNICIPIO_DESCARREGAMENTO.DataSet).Close;
      TFDQuery(dtsqryCIDADES_MUNICIPIO_DESCARREGAMENTO.DataSet).Params[0].Value := ID_UF_FINAL.Text;
      TFDQuery(dtsqryCIDADES_MUNICIPIO_DESCARREGAMENTO.DataSet).Prepare;
      TFDQuery(dtsqryCIDADES_MUNICIPIO_DESCARREGAMENTO.DataSet).Open;
    end;
  end;
end;

procedure TfrmMDFEcadastro.JvSpeedButton1Click(Sender: TObject);
begin
  if dtsDefault.DataSet.State in [dsBrowse] then
    dtsDefault.DataSet.Edit;

  TFDQuery(dtstabMDFE_NFE.DataSet).Delete;
  CalculaTotal;
end;

procedure TfrmMDFEcadastro.JvSpeedButton2Click(Sender: TObject);
begin
  inherited;
  if TFDQuery(dtsDefault.DataSet).State in [dsInsert] then
  begin
    TFDQuery(dtsDefault.DataSet).Post;
    TFDQuery(dtsDefault.DataSet).Edit;
  end;

  if MUN_DESC_NFE.Value.Trim.Length = 0 then
  begin
    MUN_DESC_NFE.SetFocus;
    raise Exception.Create('Selecione o município para descarregamento.');
  end;

  if TFDQuery(dtsDefault.DataSet).State in [dsBrowse, dsEdit] then
  begin
    TfrmMDFEnfeCADASTRO.Novo;
    if not dtstabMDFE_NFE.DataSet.Active then
      dtstabMDFE_NFE.DataSet.Active := True;
  end;
  if dtsDefault.DataSet.State in [dsBrowse] then
    dtsDefault.DataSet.Edit;
  CalculaTotal;
end;

procedure TfrmMDFEcadastro.JvSpeedButton3Click(Sender: TObject);
begin
  TfrmMDFEnfeCADASTRO.Alterar;
  if dtsDefault.DataSet.State in [dsBrowse] then
    dtsDefault.DataSet.Edit;
  CalculaTotal;
end;

procedure TfrmMDFEcadastro.LcbxVeiculoClick(Sender: TObject);
begin
  inherited;
  if Assigned(dtmMDFE.QryVeiculo) then
  begin
    if dtmMDFE.QryVeiculoID_VEICULO.AsString <> '' then
    begin
      dtmMDFE.tabMDFEVEICULO_CODIGO_INTERNO.Value := dtmMDFE.QryVeiculoCODIGO_INTERNO.Value;
      dtmMDFE.tabMDFEVEICULO_TIPO_CARROCERIA.Value := dtmMDFE.QryVeiculoTIPO_CARROCERIA.Value;
      dtmMDFE.tabMDFEVEICULO_UF.Value := dtmMDFE.QryVeiculoUF.Value;
      dtmMDFE.tabMDFEVEICULO_TIPO_RODADO.Value := dtmMDFE.QryVeiculoTIPO_RODADO.Value;
      dtmMDFE.tabMDFEVEICULO_PLACA.Value := dtmMDFE.QryVeiculoPLACA.Value;
      dtmMDFE.tabMDFEVEICULO_CAPACIDADE_KG.Value := dtmMDFE.QryVeiculoCAPACIDADE_KG.Value;
      dtmMDFE.tabMDFEVEICULO_CAPACIDADE_M3.Value := dtmMDFE.QryVeiculoCAPACIDADE_M3.Value;
      dtmMDFE.tabMDFEVEICULO_TARA.Value := dtmMDFE.QryVeiculoTARA.Value;
      dtmMDFE.tabMDFEVEICULO_RENAVAN.Value := dtmMDFE.QryVeiculoRENAVAN.Value;
      dtmMDFE.tabMDFEVEICULO_RNTRC.Value := dtmMDFE.QryVeiculoRNTRC.Value;
      dtmMDFE.tabMDFEVEICULO_CHASSI.Value := dtmMDFE.QryVeiculoCHASSI.Value;
      dtmMDFE.tabMDFEVEICULO_MODELO.Value := dtmMDFE.QryVeiculoMODELO.Value;
      dtmMDFE.tabMDFEVEICULO_MARCA.Value := dtmMDFE.QryVeiculoMARCA.Value;
      dtmMDFE.tabMDFEVEICULO_COR.Value := dtmMDFE.QryVeiculoCOR.Value;
      dtmMDFE.tabMDFEVEICULO_COR_DESCRICAO.Value := dtmMDFE.QryVeiculoCOR_DESCRICAO.Value;
      dtmMDFE.tabMDFEVEICULO_ANO_FABRICACAO.Value := dtmMDFE.QryVeiculoANO_FABRICACAO.Value;
      dtmMDFE.tabMDFEVEICULO_ANO_MODELO.Value := dtmMDFE.QryVeiculoANO_MODELO.Value;

      if dtmMDFE.QryVeiculoTIPO_VEICULO.Value = 0 then
        dtmMDFE.tabMDFEEMI_N_PROP.Value := 'N'
      else
        dtmMDFE.tabMDFEEMI_N_PROP.Value := 'S';
    end;
  end;
end;

procedure TfrmMDFEcadastro.opCNPJClick(Sender: TObject);
begin
  CIOT_DOC.Clear;
  CIOT_DOC.OnChange := TEditMascaraCNPJ;
end;

procedure TfrmMDFEcadastro.opCPFClick(Sender: TObject);
begin
  CIOT_DOC.Clear;
  CIOT_DOC.OnChange := TEditMascaraCPF;
end;

procedure TfrmMDFEcadastro.EMI_N_PROPChange(Sender: TObject);
begin
  EMI_N_PROP_CPF_CNPJ.Enabled := EMI_N_PROP.Checked;
  EMI_N_PROP_IE.Enabled := EMI_N_PROP.Checked;
  EMI_N_PROP_RZSOCIAL.Enabled := EMI_N_PROP.Checked;
  EMI_N_PROP_RNTRC.Enabled := EMI_N_PROP.Checked;
  EMI_N_PROP_UF.Enabled := EMI_N_PROP.Checked;
  EMI_N_PROP_TIPO.Enabled := EMI_N_PROP.Checked;
  EMI_N_PROP_CELULAR.Enabled := EMI_N_PROP.Checked;
  EMI_N_PROP_BAIRRO.Enabled := EMI_N_PROP.Checked;
  EMI_N_PROP_RUA.Enabled := EMI_N_PROP.Checked;
  EMI_N_PROP_COMPLEMENTO.Enabled := EMI_N_PROP.Checked;
  EMI_N_PROP_CEP.Enabled := EMI_N_PROP.Checked;
  EMI_N_PROP_NUMERO.Enabled := EMI_N_PROP.Checked;
  EMI_N_PROP_CODIGO_MUNICIPIO.Enabled := EMI_N_PROP.Checked;
end;

procedure TfrmMDFEcadastro.btnCONTRATANTESexcluirClick(Sender: TObject);
begin
  if dtsDefault.DataSet.State in [dsBrowse] then
    dtsDefault.DataSet.Edit;

  TFDQuery(dtstabMDFE_CONTRATANTES.DataSet).Delete;
end;

procedure TfrmMDFEcadastro.btnCONTRATANTESincluirClick(Sender: TObject);
begin
  if TFDQuery(dtsDefault.DataSet).State in [dsInsert] then
  begin
    TFDQuery(dtsDefault.DataSet).Post;
    TFDQuery(dtsDefault.DataSet).Edit;
  end;

  if TFDQuery(dtsDefault.DataSet).State in [dsBrowse, dsEdit] then
  begin
    if DOC_CONTRATANTE.Text = '' then
    begin
      DOC_CONTRATANTE.SetFocus;
      Exit
    end;

    try
      TFDQuery(dtstabMDFE_CONTRATANTES.DataSet).Append;
      TFDQuery(dtstabMDFE_CONTRATANTES.DataSet).FieldByName('CNPJ').Value := Trim(DOC_CONTRATANTE.Text);
      TFDQuery(dtstabMDFE_CONTRATANTES.DataSet).Prepare;
      TFDQuery(dtstabMDFE_CONTRATANTES.DataSet).Post;
    except
      on e: Exception do
      begin
        TFDQuery(dtstabMDFE_CONTRATANTES.DataSet).Cancel;
        raise Exception.Create(e.Message);
      end;
    end;
  end;
end;

procedure TfrmMDFEcadastro.btnCTEalterarClick(Sender: TObject);
begin
  TfrmMDFEcteCADASTRO.Alterar;
end;

procedure TfrmMDFEcadastro.btnCTEexcluirClick(Sender: TObject);
begin
  if dtsDefault.DataSet.State in [dsBrowse] then
    dtsDefault.DataSet.Edit;

  TFDQuery(dtstabMDFE_CTE.DataSet).Delete;
end;

procedure TfrmMDFEcadastro.btnCTEincluirClick(Sender: TObject);
begin
  if TFDQuery(dtsDefault.DataSet).State in [dsInsert] then
  begin
    TFDQuery(dtsDefault.DataSet).Post;
    TFDQuery(dtsDefault.DataSet).Edit;
  end;

  if MUN_DESC_CTE.Value.Trim.Length = 0 then
  begin
    MUN_DESC_CTE.SetFocus;
    raise Exception.Create('Selecione o município para descarregamento.');
  end;

  if TFDQuery(dtsDefault.DataSet).State in [dsBrowse, dsEdit] then
  begin
    TfrmMDFEcteCADASTRO.Novo;
  end;
end;

procedure TfrmMDFEcadastro.btnDOCDOWNexcluirClick(Sender: TObject);
begin
  TFDQuery(dtstabMDFE_AUT_DOWNLOAD.DataSet).Delete;
end;

procedure TfrmMDFEcadastro.btnDOCDOWNincluirClick(Sender: TObject);
begin
  if TFDQuery(dtsDefault.DataSet).State in [dsInsert] then
  begin
    TFDQuery(dtsDefault.DataSet).Post;
    TFDQuery(dtsDefault.DataSet).Edit;
  end;

  if TFDQuery(dtsDefault.DataSet).State in [dsBrowse, dsEdit] then
  begin
    if N_DOC_DOWNLOAD.Text = '' then
      N_DOC_DOWNLOAD.SetFocus;

    try
      TFDQuery(dtstabMDFE_AUT_DOWNLOAD.DataSet).Append;
      TFDQuery(dtstabMDFE_AUT_DOWNLOAD.DataSet).FieldByName('N_DOC').Value := N_DOC_DOWNLOAD.Text;
      TFDQuery(dtstabMDFE_AUT_DOWNLOAD.DataSet).Prepare;
      TFDQuery(dtstabMDFE_AUT_DOWNLOAD.DataSet).Post;
    except
      on e: Exception do
      begin
        TFDQuery(dtstabMDFE_AUT_DOWNLOAD.DataSet).Cancel;
        raise Exception.Create(e.Message);
      end;
    end;
  end;
end;

procedure TfrmMDFEcadastro.btnGerarCIOTClick(Sender: TObject);
begin
  inherited;

  dtmMDFE.configurarCIOT;

  var
  ciotFinal := GerarCIOT;
  edtCIOT.Text := ciotFinal;
end;

function TfrmMDFEcadastro.GerarCIOT: string;
begin
  Result := '';

  try
    ForceDirectories(ExtractFilePath(ParamStr(0)) + 'log');

    dtmMDFE.ACBrCIOT.Contratos.Clear;

    var
    contrato := dtmMDFE.ACBrCIOT.Contratos.Add.CIOT;

    solicitarToken(contrato);

    dtmMDFE.ACBrCIOT.Enviar;

    gerarLogCadastros;

    cadastrarVeiculo(contrato);
    cadastrarProprietarioDoVeiculo(contrato);

    var
    CondutoresDataSet := dtstabMDFE_CONDUTORES.DataSet;
    CondutoresDataSet.First;

    while not CondutoresDataSet.Eof do
    begin
      cadastrarMotorista(contrato);
      CondutoresDataSet.Next;
    end;

    // adicionarOperacaoTransporte(contrato);

    dtmMDFE.ACBrCIOT.Enviar;
    gerarLogCadastros;

  finally
    //
  end;
end;

function TfrmMDFEcadastro.gerarLogCadastros;
begin

  MemoResp.Lines.Text := UTF8Encode(dtmMDFE.ACBrCIOT.WebServices.CIOTEnviar.RetornoWS);
  memoRespWS.Lines.Text := UTF8Encode(dtmMDFE.ACBrCIOT.WebServices.CIOTEnviar.RetWS);

  var
  LogLines := TStringList.Create;

  var
  LogFilePath := ExtractFilePath(ParamStr(0)) + 'log\LOG' + IntToStr(oEmpresa.ID) + FormatDateTime('yyyymmddhhnnss', Now)
    + '.txt';

  with dtmMDFE.ACBrCIOT.WebServices.CIOTEnviar.RetornoEnvio.RetEnvio do
  begin
    LogLines.Add('Retorno do Envio');
    LogLines.Add('Versão...........: ' + IntToStr(Versao));
    LogLines.Add('Sucesso..........: ' + Sucesso);
    LogLines.Add('Protocolo Serviço: ' + ProtocoloServico);
    LogLines.Add('');

    if Mensagem <> '' then
    begin
      LogLines.Add('Retorno do Envio (Exceção)');
      LogLines.Add('Mensagem: ' + Mensagem);
      LogLines.Add('Código..: ' + Codigo);
    end
    else
    begin
      Result := CodigoIdentificacaoOperacao;
      LogLines.Add('Token........................: ' + Token);
      LogLines.Add('Código Identificação Operação: ' + CodigoIdentificacaoOperacao);
      LogLines.Add('Data.........................: ' + DateTimeToStr(Data));
      LogLines.Add('Protocolo....................: ' + Protocolo);
      LogLines.Add('Data Retificação.............: ' + DateTimeToStr(DataRetificacao));
      LogLines.Add('Quantidade Viagens...........: ' + IntToStr(QuantidadeViagens));
      LogLines.Add('Quantidade Pagamentos........: ' + IntToStr(QuantidadePagamentos));
      LogLines.Add('Id Pagamento Cliente.........: ' + IdPagamentoCliente);
      LogLines.Add('Valor Liquido................: ' + FloatToStr(ValorLiquido));
      LogLines.Add('Valor Quebra.................: ' + FloatToStr(ValorQuebra));
      LogLines.Add('Valor Diferenca De Frete.....: ' + FloatToStr(ValorDiferencaDeFrete));

      if dtmMDFE.ACBrCIOT.WebServices.CIOTEnviar.CodRetorno = 200 then
        sToken := Token;

      if DocumentoViagem.Count > 0 then
      begin
        LogLines.Add('Documento Viagem');

        for var i := 0 to DocumentoViagem.Count - 1 do
          LogLines.Add('Mensagem: ' + DocumentoViagem[i].Mensagem);
      end;

      if DocumentoPagamento.Count > 0 then
      begin
        LogLines.Add('Documento Pagamento');

        for var i := 0 to DocumentoPagamento.Count - 1 do
          LogLines.Add('Mensagem: ' + DocumentoPagamento[i].Mensagem);
      end;

      if TipoCarga.Count > 0 then
      begin
        LogLines.Add('  ');
        LogLines.Add('  ');
        LogLines.Add('********* Tipos Cargas ***********');
        LogLines.Add('  ');

        for var i := 0 to TipoCarga.Count - 1 do
          LogLines.Add(IntToStr(TipoCarga[i].Codigo) + ' - ' + TipoCargaToStr(TipoCarga[i].Descricao));
      end;
    end;
  end;
  LogLines.SaveToFile(LogFilePath);
end;

procedure TfrmMDFEcadastro.cadastrarVeiculo(contrato: TCIOT);
begin
  with contrato do
  begin
    // Cadastrar Veiculo
    Integradora.Operacao := opGravarVeiculo;

    with GravarVeiculo do
    begin
      Placa := dtmMDFE.tabMDFEVEICULO_PLACA.AsString;
      Renavam := dtmMDFE.tabMDFEVEICULO_RENAVAN.AsString;
      Chassi := dtmMDFE.tabMDFEVEICULO_CHASSI.AsString;
      RNTRC := dtmMDFE.tabMDFEVEICULO_RNTRC.AsString;
      NumeroDeEixos := dtmMDFE.tabMDFEVEICULO_NUMERO_EIXOS.AsInteger;
      CodigoMunicipio := dtmMDFE.tabMDFEVeiculo_CODIGO_MUNICIPIO.AsInteger;
      Marca := dtmMDFE.tabMDFEVEICULO_MARCA.AsString;
      MODELO := dtmMDFE.tabMDFEVEICULO_MODELO.AsString;
      AnoFabricacao := dtmMDFE.tabMDFEVEICULO_ANO_FABRICACAO.AsInteger;
      AnoModelo := dtmMDFE.tabMDFEVEICULO_ANO_MODELO.AsInteger;
      Cor := dtmMDFE.tabMDFEVEICULO_COR_DESCRICAO.AsString;
      Tara := dtmMDFE.tabMDFEVEICULO_TARA.AsInteger;
      CapacidadeKg := dtmMDFE.tabMDFEVEICULO_CAPACIDADE_KG.AsInteger;
      CapacidadeM3 := dtmMDFE.tabMDFEVEICULO_CAPACIDADE_M3.AsInteger;

      case dtmMDFE.tabMDFEVEICULO_TIPO_RODADO.AsInteger of
        0:
          TipoRodado := TpTipoRodado.trNaoAplicavel;
        1:
          TipoRodado := TpTipoRodado.trTruck;
        2:
          TipoRodado := TpTipoRodado.trToco;
        3:
          TipoRodado := TpTipoRodado.trCavalo;
        { 4:
          TipoRodado := TpTipoRodado.trVan;
          5:
          TipoRodado := TpTipoRodado.trUtilitario;
          6:
          TipoRodado := TpTipoRodado.trOutros; } // Tipos Rodado não mapeados pelo ACBr
      else
        showMessage('Tipo Rodado não mapeado!');
        TipoRodado := TpTipoRodado.trNaoAplicavel;
      end;

      if VEICULO_TIPO_CARROCERIA.ItemIndex = -1 then
      begin
        showMessage('Selecione o Tipo da Carroceria no cadastro de Veículo de Tração');
        Exit;
      end
      else
      begin
        case VEICULO_TIPO_CARROCERIA.ItemIndex of
          0:
            tipoCarroceria := TpTipoCarroceria.tcNaoAplicavel;
          1:
            tipoCarroceria := TpTipoCarroceria.tcAberta;
          2:
            tipoCarroceria := TpTipoCarroceria.tcFechadaOuBau;
          3:
            tipoCarroceria := TpTipoCarroceria.tcGranelera;
          4:
            tipoCarroceria := TpTipoCarroceria.tcPortaContainer;
          5:
            tipoCarroceria := TpTipoCarroceria.tcSider;
        else
          begin
            showMessage('Tipo de carroceria não mapeado!'); // Tipo de Carroceria não mapeados pelo ACBr
            Exit;
          end;
        end;
      end;
    end;
  end;
end;

procedure TfrmMDFEcadastro.cadastrarMotorista(contrato: TCIOT);
begin
  var
  sCPF := dtstabMDFE_CONDUTORES.DataSet.FieldByName('ID_CPF').AsString;
  try
    if dtmMDFE.qryMotoristaEspecifico.Active then
      dtmMDFE.qryMotoristaEspecifico.Close;
    dtmMDFE.qryMotoristaEspecifico.ParamByName('CPF').AsString := sCPF;
    dtmMDFE.qryMotoristaEspecifico.Open;

    if dtmMDFE.qryMotoristaEspecifico.IsEmpty then
      raise Exception.Create('Dados do motorista com CPF ' + sCPF + ' não encontrados.');

    with contrato do
    begin
      Integradora.Operacao := opGravarMotorista;

      with GravarMotorista do
      begin
        CPF := dtmMDFE.qryMotoristaEspecificoCPF.AsString;
        Nome := dtmMDFE.qryMotoristaEspecificoNOME.AsString;
        CNH := dtmMDFE.qryMotoristaEspecificoNUMERO_REGISTRO.AsString;
        DataNascimento := dtmMDFE.qryMotoristaEspecificoDATA_NASCIMENTO.AsDateTime;
        NomeDeSolteiraDaMae := dtmMDFE.qryMotoristaEspecificoNOME_SOLTEIRA_MAE.AsString;

        Endereco.Bairro := dtmMDFE.qryMotoristaEspecificoBAIRRO.AsString;
        Endereco.Rua := dtmMDFE.qryMotoristaEspecificoRUA.AsString;
        Endereco.Numero := dtmMDFE.qryMotoristaEspecificoNUMERO.AsString;
        Endereco.Complemento := dtmMDFE.qryMotoristaEspecificoCOMPLEMENTO.AsString;
        Endereco.CEP := dtmMDFE.qryMotoristaEspecificoCEP.AsString;
        Endereco.CodigoMunicipio := dtmMDFE.qryMotoristaEspecificoCODIGO_MUNICIPIO.AsInteger;

        if not dtmMDFE.qryMotoristaEspecificoCELULAR.IsNull and (dtmMDFE.qryMotoristaEspecificoCELULAR.AsString <> '') then
        begin
          var
          CelularStr := ACBrUtil.Strings.OnlyNumber(dtmMDFE.qryMotoristaEspecificoCELULAR.AsString);
          if Length(CelularStr) >= 10 then
          begin
            Telefones.Celular.DDD := StrToIntDef(Copy(CelularStr, 1, 2), 0);
            Telefones.Celular.Numero := StrToIntDef(Copy(CelularStr, 3, Length(CelularStr) - 2), 0);
          end;
        end;
      end;
    end;
  finally
    //
  end;
end;

procedure TfrmMDFEcadastro.cadastrarProprietarioDoVeiculo(contrato: TCIOT);
begin
  with contrato do
  begin
    Integradora.Operacao := opGravarProprietario;

    with GravarProprietario do
    begin
      if EMI_N_PROP.Checked then
      begin
        CNPJ := EMI_N_PROP_CPF_CNPJ.Text;

        if CNPJ.Length = 13 then
          TipoPessoa := tpJuridica
        else if CNPJ.Length = 11 then
          TipoPessoa := tpFisica;

        RazaoSocial := EMI_N_PROP_RZSOCIAL.Text;
        RNTRC := EMI_N_PROP_RNTRC.Text;

        Endereco.Bairro := EMI_N_PROP_BAIRRO.Text;
        Endereco.Rua := EMI_N_PROP_RUA.Text;
        Endereco.Numero := EMI_N_PROP_NUMERO.Text;
        Endereco.Complemento := EMI_N_PROP_COMPLEMENTO.Text;
        Endereco.CEP := EMI_N_PROP_CEP.Text;
        Endereco.CodigoMunicipio := StrToIntDef(EMI_N_PROP_CODIGO_MUNICIPIO.Text, 0);

        if EMI_N_PROP_CELULAR.toString <> '' then
        begin
          Telefones.Celular.DDD := (EMI_N_PROP_CELULAR.toString[1] + EMI_N_PROP_CELULAR.toString[2]).ToInteger;
          Telefones.Celular.Numero := StrToIntDef(EMI_N_PROP_CELULAR.Text, 0);
        end;

      end
      else
      begin
        CNPJ := dtmMDFE.qryEMPRESACNPJ.AsString;
        RazaoSocial := dtmMDFE.qryEMPRESARAZAOSOCIAL.AsString;
        RNTRC := EMI_N_PROP_RNTRC.Text;
        TipoPessoa := tpJuridica;

        Endereco.Bairro := dtmMDFE.qryEMPRESABAIRRO.AsString;
        Endereco.Rua := dtmMDFE.qryEMPRESAENDERECO.AsString;
        Endereco.Numero := dtmMDFE.qryEMPRESANUMERO.AsString;
        Endereco.Complemento := dtmMDFE.qryEMPRESACOMPLEMENTO.AsString;
        Endereco.CEP := dtmMDFE.qryEMPRESACEP.AsString;

        if not''.IsNullOrWhiteSpace(dtmMDFE.qryEMPRESAID_CIDADES_IBGE.AsString) then
          Endereco.CodigoMunicipio := OnlyNumber(dtmMDFE.qryEMPRESAID_CIDADES_IBGE.AsString).ToInteger;

        if not''.IsNullOrWhiteSpace(dtmMDFE.qryEMPRESATELEFONE.AsString) then
        begin
          var
          telefoneSoNumeros := OnlyNumber(dtmMDFE.qryEMPRESATELEFONE.AsString);
          Telefones.Celular.DDD := StrToInt(Copy(telefoneSoNumeros, 1, 2));

          Telefones.Celular.Numero := StrToIntDef(Copy(telefoneSoNumeros, 3, Length(telefoneSoNumeros)), 0);
        end;
      end;
    end;

  end;
end;

procedure TfrmMDFEcadastro.solicitarToken(contrato: TCIOT);
begin
  with contrato do
  begin
    // Só é necessario se usar usuario e senha e não o certificado
    Integradora.Token := sToken;

    // Login - Solicita Token
    Integradora.Operacao := opLogin;
  end;
end;

procedure TfrmMDFEcadastro.adicionarOperacaoTransporte(contrato: TCIOT);
begin
  with contrato do
  begin
    // Adicionar uma operação de transporte
    Integradora.Operacao := opAdicionar;

    with AdicionarOperacao do
    begin
      (* ***************  DADOS DO CONTRATO  ************* *)
      TipoViagem := Padrao; // TAC_Agregado;
      TipoPagamento := eFRETE;
      EmissaoGratuita := (TipoPagamento = TransferenciaBancaria);
      BloquearNaoEquiparado := False;
      MatrizCNPJ := dtmDefault.tabEMPRESACNPJ.AsString;
      FilialCNPJ := dtmDefault.tabEMPRESACNPJ.AsString;
      // Id / Chave primária da Tabela do banco de dados do CIOT
      IdOperacaoCliente := '1';
      DataInicioViagem := Now;
      DataFimViagem := Now;
      // verificar se essa propriedade se refere à o NCM do produto/item que está sendo transportado
      CodigoNCMNaturezaCarga := 5501;
      PesoCarga := 10;

      if TipoViagem = Padrao then
        // utilizado somente para as viagens do tipo Padrão
        TipoEmbalagem := tePallet;

      // Somente para TipoViagem TAC_Agregado
      if TipoViagem = TAC_Agregado then
      begin
        with Viagens.New do
        begin
          DocumentoViagem := 'CTe';
          CodigoMunicipioOrigem := OnlyNumber(dtmMDFE.tabMDFE_LOCAL_CARREGAMENTOID_MUNICIPIO.AsString).ToInteger;
          CodigoMunicipioDestino := OnlyNumber(dtmMDFE.tabMDFE_LOCAL_DESCARREGAMENTOID_CIDADES_IBGE.AsString).ToInteger;
          CepOrigem := '';
          CepDestino := '';
          DistanciaPercorrida := 100;

          Valores.TotalOperacao := 50;
          Valores.TotalViagem := 50;
          Valores.TotalDeAdiantamento := 10;
          Valores.TotalDeQuitacao := 10;
          Valores.Combustivel := 20;
          Valores.Pedagio := dtmMDFE.tabMDFE_VALEPEDAGIOVALOR.AsCurrency;
          Valores.OutrosCreditos := 1;
          Valores.JustificativaOutrosCreditos := 'Teste';
          Valores.Seguro := 0;
          Valores.OutrosDebitos := 1;
          Valores.JustificativaOutrosDebitos := 'Teste outros Debitos';

          TipoPagamento := eFRETE;

          with NotasFiscais.New do
          begin
            Numero := '12345';
            Serie := '1';
            Data := Date;
            ValorTotal := 100;

            ValorDaMercadoriaPorUnidade := 100;
            CodigoNCMNaturezaCarga := 5501;
            DescricaoDaMercadoria := 'Produto Teste';
            UnidadeDeMedidaDaMercadoria := umKg;
            TipoDeCalculo := SemQuebra;
            ValorDoFretePorUnidadeDeMercadoria := 0; // Se tiver quebra deve ser informado
            QuantidadeDaMercadoriaNoEmbarque := 1;

            ToleranciaDePerdaDeMercadoria.Tipo := tpPorcentagem;
            ToleranciaDePerdaDeMercadoria.Valor := 2; // Valor da tolerância admitido.

            DiferencaDeFrete.Tipo := Integral;
            DiferencaDeFrete.Base := QuantidadeDesembarque;

            DiferencaDeFrete.Tolerancia.Tipo := tpPorcentagem;
            DiferencaDeFrete.Tolerancia.Valor := 5;
            // Valor da tolerância admitido(Nenhum: 0; Porcentagem: 0.00 – 100.00; Absoluto: Livre)

            DiferencaDeFrete.MargemGanho.Tipo := tpPorcentagem;
            DiferencaDeFrete.MargemGanho.Valor := 5;

            DiferencaDeFrete.MargemPerda.Tipo := tpPorcentagem;
            DiferencaDeFrete.MargemPerda.Valor := 5;
          end;
        end;
      end;

      if TipoViagem <> Frota then
      begin
        // Não esperado para TipoViagem Frota.
        with Impostos do
        begin
          IRRF := 0;
          SestSenat := 0;
          INSS := 0;
          ISSQN := 0;
          OutrosImpostos := 0;
          DescricaoOutrosImpostos := '';
        end;
      end;

      with Pagamentos.New do
      begin
        IdPagamentoCliente := '1';
        DataDeLiberacao := Date;
        Valor := 10;
        TipoPagamento := eFRETE;
        // TransferenciaBancaria(EmissaoGratuita = true); eFRETE (EmissaoGratuita = false)
        Categoria := tcpSemCategoria;
        // Para os TipoViagem Frota e TAC_Agregado são suportadas as Categorias Frota e SemCategoria. Para o TipoViagem Padrão todas as categorias são suportadas.
        Documento := ''; // Documento relacionado a viagem.

        InformacoesBancarias.InstituicaoBancaria := '756'; // Bancoob
        InformacoesBancarias.Agencia := '';
        InformacoesBancarias.Conta := '';
        InformacoesBancarias.TipoConta := tcContaCorrente;

        InformacaoAdicional := '';
        // CNPJ que deve ser gerada a Nota Fiscal do abastecimento,
        // sendo da mesma raíz do CNPJ da matriz do contratante,
        // apenas aplicável para Categoria Frota (Abastecimento)
        CnpjFilialAbastecimento := AdicionarOperacao.MatrizCNPJ;
      end;

      // TAC ou seu equiparado, que efetuar o transporte rodoviário de cargas por
      // conta de terceiros e mediante remuneração, indicado no cadastramento da Operação de Transporte.
      // Para o TipoViagem Frota o Contratado será a própria empresa que está declarando a operação.
      with Contratado do
      begin
        CpfOuCnpj := Contratado.CpfOuCnpj;
        RNTRC := Contratado.RNTRC;
      end;

      with Motorista do
      begin
        CpfOuCnpj := Motorista.CpfOuCnpj;
        CNH := Motorista.CNH;

        Celular.DDD := Motorista.Celular.DDD;
        Celular.Numero := Motorista.Celular.Numero;
      end;

      // Destinatário da carga.
      // Na emissão com TipoViagem Padrão seu preenchimento é obrigatório.
      // Na emissão com TipoViagem TAC_Agregado o campo não deve ser preenchido.
      // Não esperado para TipoViagem Frota.
      with Destinatario do
      begin
        NomeOuRazaoSocial := 'sisomcosftteste';
        CpfOuCnpj := '79679396037';

        EMail := 'teste@gmail.com';
        ResponsavelPeloPagamento := False;

        Endereco.Bairro := 'teste 2';
        Endereco.Rua := 'Alabama';
        Endereco.Numero := '34';
        Endereco.Complemento := 'q. 100, l. 2';
        Endereco.CEP := '74000000';
        Endereco.CodigoMunicipio := 0;

        { Telefones.Celular.DDD := 0;
          Telefones.Celular.Numero := 0;

          Telefones.Fixo.DDD := 0;
          Telefones.Fixo.Numero := 0;

          Telefones.Fax.DDD := 0;
          Telefones.Fax.Numero := 0; }
      end;

      with Contratante do
      begin
        NomeOuRazaoSocial := Contratante.NomeOuRazaoSocial;
        CpfOuCnpj := '12345678910';

        EMail := 'teste@teste.com.br';
        ResponsavelPeloPagamento := False;
        RNTRC := '12345678';

        Endereco.Bairro := 'Bela Vista';
        Endereco.Rua := 'Rua Vitória';
        Endereco.Numero := '';
        Endereco.Complemento := '';
        Endereco.CEP := '89870000';
        Endereco.CodigoMunicipio := 4212908;

        Telefones.Celular.DDD := 0;
        Telefones.Celular.Numero := 0;

        Telefones.Fixo.DDD := 49;
        Telefones.Fixo.Numero := 33661012;

        Telefones.Fax.DDD := 0;
        Telefones.Fax.Numero := 0;
      end;

      // É o transportador que contratar outro transportador para realização do
      // transporte de cargas para o qual fora anteriormente contratado,
      // indicado no cadastramento da Operação de Transporte.
      // Não esperado para TipoViagem Frota.
      with Subcontratante do
      begin
        NomeOuRazaoSocial := '';
        CpfOuCnpj := '';

        EMail := '';
        ResponsavelPeloPagamento := False;

        Endereco.Bairro := '';
        Endereco.Rua := '';
        Endereco.Numero := '';
        Endereco.Complemento := '';
        Endereco.CEP := '';
        Endereco.CodigoMunicipio := 0;

        Telefones.Celular.DDD := 0;
        Telefones.Celular.Numero := 0;

        Telefones.Fixo.DDD := 0;
        Telefones.Fixo.Numero := 0;

        Telefones.Fax.DDD := 0;
        Telefones.Fax.Numero := 0;
      end;

      // Aquele que receberá as mercadorias transportadas em consignação,
      // indicado no cadastramento da Operação de Transporte ou nos respectivos documentos fiscais.
      // Não esperado para TipoViagem Frota
      with Consignatario do
      begin
        NomeOuRazaoSocial := '';
        CpfOuCnpj := '';

        EMail := '';
        ResponsavelPeloPagamento := False;

        Endereco.Bairro := '';
        Endereco.Rua := '';
        Endereco.Numero := '';
        Endereco.Complemento := '';
        Endereco.CEP := '';
        Endereco.CodigoMunicipio := 0;

        Telefones.Celular.DDD := 0;
        Telefones.Celular.Numero := 0;

        Telefones.Fixo.DDD := 0;
        Telefones.Fixo.Numero := 0;

        Telefones.Fax.DDD := 0;
        Telefones.Fax.Numero := 0;
      end;

      // Pessoa (física ou jurídica) que contratou o frete pela transportadora.
      // Na emissão com TipoViagem Padrão seu preenchimento é obrigatório.
      // Na emissão com TipoViagem TAC_Agregado o campo não deve ser preenchido.
      with TomadorServico do
      begin
        NomeOuRazaoSocial := '';
        CpfOuCnpj := '';

        EMail := '';
        ResponsavelPeloPagamento := False;

        Endereco.Bairro := '';
        Endereco.Rua := '';
        Endereco.Numero := '';
        Endereco.Complemento := '';
        Endereco.CEP := '';
        Endereco.CodigoMunicipio := 0;

        Telefones.Celular.DDD := 0;
        Telefones.Celular.Numero := 0;

        Telefones.Fixo.DDD := 0;
        Telefones.Fixo.Numero := 0;

        Telefones.Fax.DDD := 0;
        Telefones.Fax.Numero := 0;
      end;

      with Veiculos.New do
      begin
        Placa := 'AAA1234';
      end;

      // Informar um CIOT (se existente) que esteja relacionado à operação de transporte.
      // Por exemplo: No caso da presença de um Subcontratante na operação de transporte
      // informar o CIOT onde o Subcontratante foi o Contratado
      CodigoIdentificacaoOperacaoPrincipal := '';

      with ObservacoesAoTransportador.New do
      begin
        Mensagem := 'teste de obsevação ao transportador';
      end;

      with ObservacoesAoCredenciado.New do
      begin
        Mensagem := 'teste de obsevação ao Credenciado';
      end;

      EntregaDocumentacao := edRedeCredenciada; // Ver como funciona
      QuantidadeSaques := 0; // Quantidade saques que serão realizados pelo Contratado na operação de transporte.
      QuantidadeTransferencias := 0;
      // Quantidade de Transferências  Bancárias que serão solicitadas pelo Contratado na operação de transporte.
      ValorSaques := 0;
      ValorTransferencias := 0;

      // se o tipo de viagem for padrão (TipoViagem := Padrao) devemos
      // informar o valor tpNaoAplicavel ao campo CodigoTipoCarga
      // valores permitidos para o campo:
      // tpNaoAplicavel, tpGranelsolido, tpGranelLiquido, tpFrigorificada,
      // tpConteinerizada, tpCargaGeral, tpNeogranel, tpPerigosaGranelSolido,
      // tpPerigosaGranelLiquido, tpPerigosaCargaFrigorificada,
      // tpPerigosaConteinerizada, tpPerigosaCargaGeral
      if TipoViagem = Padrao then
        CodigoTipoCarga := tpNaoAplicavel;

      AltoDesempenho := True;
      DestinacaoComercial := True;
      FreteRetorno := False;
      CepRetorno := '';
      DistanciaRetorno := 100;
    end;
  end;
end;

procedure TfrmMDFEcadastro.btnAQUAcomboioEXCLUIRClick(Sender: TObject);
begin
  if dtsDefault.DataSet.State in [dsBrowse] then
    dtsDefault.DataSet.Edit;

  TFDQuery(dtstabMDFE_AQUA_COMBOIO.DataSet).Delete;
end;

procedure TfrmMDFEcadastro.btnAQUAcomboioINCLUIRClick(Sender: TObject);
begin
  if TFDQuery(dtsDefault.DataSet).State in [dsInsert] then
  begin
    TFDQuery(dtsDefault.DataSet).Post;
    TFDQuery(dtsDefault.DataSet).Edit;
  end;

  if TFDQuery(dtsDefault.DataSet).State in [dsBrowse, dsEdit] then
  begin
    if (AQUA_COMBOIO_CODIGO.Text = '') and (AQUA_COMBOIO_BALSA.Text = '') then
    begin
      AQUA_COMBOIO_CODIGO.SetFocus;
      Exit;
    end;

    try
      TFDQuery(dtstabMDFE_AQUA_COMBOIO.DataSet).Append;
      TFDQuery(dtstabMDFE_AQUA_COMBOIO.DataSet).FieldByName('ID_COMBOIO').Value := AQUA_COMBOIO_CODIGO.Text;
      TFDQuery(dtstabMDFE_AQUA_COMBOIO.DataSet).FieldByName('BALSA').Value := AQUA_COMBOIO_BALSA.Text;
      TFDQuery(dtstabMDFE_AQUA_COMBOIO.DataSet).Prepare;
      TFDQuery(dtstabMDFE_AQUA_COMBOIO.DataSet).Post;
    except
      on e: Exception do
      begin
        TFDQuery(dtstabMDFE_AQUA_COMBOIO.DataSet).Cancel;
        raise Exception.Create(e.Message);
      end;
    end;
  end;
end;

procedure TfrmMDFEcadastro.btnAQUAtermcarregEXCLUIRClick(Sender: TObject);
begin
  if dtsDefault.DataSet.State in [dsBrowse] then
    dtsDefault.DataSet.Edit;

  TFDQuery(dtstabMDFE_AQUA_TERMINAL_CARREG.DataSet).Delete;
end;

procedure TfrmMDFEcadastro.btnAQUAtermcarregINCLUIRClick(Sender: TObject);
begin
  if TFDQuery(dtsDefault.DataSet).State in [dsInsert] then
  begin
    TFDQuery(dtsDefault.DataSet).Post;
    TFDQuery(dtsDefault.DataSet).Edit;
  end;

  if TFDQuery(dtsDefault.DataSet).State in [dsBrowse, dsEdit] then
  begin
    if (AQUA_LOC_CARR_TERMINAL.Text = '') and (AQUA_LOC_CARR_TEMINAL_NOME.Text = '') then
      AQUA_LOC_CARR_TERMINAL.SetFocus;

    try
      TFDQuery(dtstabMDFE_AQUA_TERMINAL_CARREG.DataSet).Append;
      TFDQuery(dtstabMDFE_AQUA_TERMINAL_CARREG.DataSet).FieldByName('ID_TERMINAL').Value := AQUA_LOC_CARR_TERMINAL.Text;
      TFDQuery(dtstabMDFE_AQUA_TERMINAL_CARREG.DataSet).FieldByName('ID_NOME').Value := AQUA_LOC_CARR_TEMINAL_NOME.Text;
      TFDQuery(dtstabMDFE_AQUA_TERMINAL_CARREG.DataSet).Prepare;
      TFDQuery(dtstabMDFE_AQUA_TERMINAL_CARREG.DataSet).Post;
    except
      on e: Exception do
      begin
        TFDQuery(dtstabMDFE_AQUA_TERMINAL_CARREG.DataSet).Cancel;
        raise Exception.Create(e.Message);
      end;
    end;
  end;
end;

procedure TfrmMDFEcadastro.btnAQUAtermdescarregEXCLUIRClick(Sender: TObject);
begin
  if dtsDefault.DataSet.State in [dsBrowse] then
    dtsDefault.DataSet.Edit;

  TFDQuery(dtstabMDFE_AQUA_TERMINAL_DESCARREG.DataSet).Delete;
end;

procedure TfrmMDFEcadastro.btnAQUAtermdescarregINCLUIRClick(Sender: TObject);
begin
  if TFDQuery(dtsDefault.DataSet).State in [dsInsert] then
  begin
    TFDQuery(dtsDefault.DataSet).Post;
    TFDQuery(dtsDefault.DataSet).Edit;
  end;

  if TFDQuery(dtsDefault.DataSet).State in [dsBrowse, dsEdit] then
  begin
    if (AQUA_LOC_DESCARR_TERMINAL.Text = '') and (AQUA_LOC_DESCARR_TEMINAL_NOME.Text = '') then
      AQUA_LOC_DESCARR_TERMINAL.SetFocus;

    try
      TFDQuery(dtstabMDFE_AQUA_TERMINAL_DESCARREG.DataSet).Append;
      TFDQuery(dtstabMDFE_AQUA_TERMINAL_DESCARREG.DataSet).FieldByName('ID_TERMINAL').Value := AQUA_LOC_DESCARR_TERMINAL.Text;
      TFDQuery(dtstabMDFE_AQUA_TERMINAL_DESCARREG.DataSet).FieldByName('ID_NOME').Value := AQUA_LOC_DESCARR_TEMINAL_NOME.Text;
      TFDQuery(dtstabMDFE_AQUA_TERMINAL_DESCARREG.DataSet).Prepare;
      TFDQuery(dtstabMDFE_AQUA_TERMINAL_DESCARREG.DataSet).Post;
    except
      on e: Exception do
      begin
        TFDQuery(dtstabMDFE_AQUA_TERMINAL_DESCARREG.DataSet).Cancel;
        raise Exception.Create(e.Message);
      end;
    end;
  end;
end;

procedure TfrmMDFEcadastro.btnAQUAunidcargaEXCLUIRClick(Sender: TObject);
begin
  if dtsDefault.DataSet.State in [dsBrowse] then
    dtsDefault.DataSet.Edit;

  TFDQuery(dtstabMDFE_AQUA_UNID_CARGA.DataSet).Delete;
end;

procedure TfrmMDFEcadastro.btnAQUAunidcargaINCLUIRClick(Sender: TObject);
begin
  if TFDQuery(dtsDefault.DataSet).State in [dsInsert] then
  begin
    TFDQuery(dtsDefault.DataSet).Post;
    TFDQuery(dtsDefault.DataSet).Edit;
  end;

  if TFDQuery(dtsDefault.DataSet).State in [dsBrowse, dsEdit] then
  begin
    if (AQUA_UNIDCARGA_IDENT.Text = '') and (AQUA_UNIDCARGA_TIPO.Text = '') then
    begin
      AQUA_UNIDCARGA_IDENT.SetFocus;
      Exit;
    end;

    try
      TFDQuery(dtstabMDFE_AQUA_UNID_CARGA.DataSet).Append;
      TFDQuery(dtstabMDFE_AQUA_UNID_CARGA.DataSet).FieldByName('ID_IDENTIFICACAO').Value := AQUA_UNIDCARGA_IDENT.Text;
      TFDQuery(dtstabMDFE_AQUA_UNID_CARGA.DataSet).FieldByName('ID_UNIDADE').Value := AQUA_UNIDCARGA_TIPO.ItemIndex;
      TFDQuery(dtstabMDFE_AQUA_UNID_CARGA.DataSet).Prepare;
      TFDQuery(dtstabMDFE_AQUA_UNID_CARGA.DataSet).Post;
    except
      on e: Exception do
      begin
        TFDQuery(dtstabMDFE_AQUA_UNID_CARGA.DataSet).Cancel;
        raise Exception.Create(e.Message);
      end;
    end;
  end;
end;

procedure TfrmMDFEcadastro.btnAQUAunidtransEXCLUIRClick(Sender: TObject);
begin
  if dtsDefault.DataSet.State in [dsBrowse] then
    dtsDefault.DataSet.Edit;

  TFDQuery(dtstabMDFE_AQUA_UNID_TRANS.DataSet).Delete;
end;

procedure TfrmMDFEcadastro.btnAQUAunidtransINCLUIRClick(Sender: TObject);
begin
  if TFDQuery(dtsDefault.DataSet).State in [dsInsert] then
  begin
    TFDQuery(dtsDefault.DataSet).Post;
    TFDQuery(dtsDefault.DataSet).Edit;
  end;

  if TFDQuery(dtsDefault.DataSet).State in [dsBrowse, dsEdit] then
  begin
    if (AQUA_UNID_TRANS_IDENT.Text = '') and (AQUA_UNIDTRANS_TIPO.Text = '') then
    begin
      AQUA_UNID_TRANS_IDENT.SetFocus;
      Exit;
    end;

    try
      TFDQuery(dtstabMDFE_AQUA_UNID_TRANS.DataSet).Append;
      TFDQuery(dtstabMDFE_AQUA_UNID_TRANS.DataSet).FieldByName('ID_IDENTIFICACAO').Value := AQUA_UNID_TRANS_IDENT.Text;
      TFDQuery(dtstabMDFE_AQUA_UNID_TRANS.DataSet).FieldByName('ID_UNIDADE').Value := AQUA_UNIDTRANS_TIPO.ItemIndex;
      TFDQuery(dtstabMDFE_AQUA_UNID_TRANS.DataSet).Prepare;
      TFDQuery(dtstabMDFE_AQUA_UNID_TRANS.DataSet).Post;
    except
      on e: Exception do
      begin
        TFDQuery(dtstabMDFE_AQUA_UNID_TRANS.DataSet).Cancel;
        raise Exception.Create(e.Message);
      end;
    end;
  end;
end;

procedure TfrmMDFEcadastro.btnCancelarClick(Sender: TObject);
begin
  inherited;
  dtmMDFE.tabMDFEEMI_N_PROP_RNTRC.Required := False;
  dtmMDFE.tabMDFEEMI_N_PROP_TIPO.Required := False;
  dtmMDFE.tabMDFEEMI_N_PROP_UF.Required := False;
  dtmMDFE.tabMDFEEMI_N_PROP_RZSOCIAL.Required := False;
end;

procedure TfrmMDFEcadastro.btnCIOTexcluirClick(Sender: TObject);
begin
  if dtsDefault.DataSet.State in [dsBrowse] then
    dtsDefault.DataSet.Edit;

  TFDQuery(dtstabMDFE_CIOT.DataSet).Delete;
end;

procedure TfrmMDFEcadastro.btnCIOTIncluirClick(Sender: TObject);
begin
  if TFDQuery(dtsDefault.DataSet).State in [dsInsert] then
  begin
    TFDQuery(dtsDefault.DataSet).Post;
    TFDQuery(dtsDefault.DataSet).Edit;
  end;

  if TFDQuery(dtsDefault.DataSet).State in [dsBrowse, dsEdit] then
  begin
    if edtCIOT.Text = '' then
    begin
      edtCIOT.SetFocus;
      Exit
    end;

    try
      TFDQuery(dtstabMDFE_CIOT.DataSet).Append;
      TFDQuery(dtstabMDFE_CIOT.DataSet).FieldByName('CIOT').Value := Trim(edtCIOT.Text);
      TFDQuery(dtstabMDFE_CIOT.DataSet).FieldByName('CNPJ').Value := ACBrUtil.Strings.OnlyNumber(CIOT_DOC.Text);
      TFDQuery(dtstabMDFE_CIOT.DataSet).Prepare;
      TFDQuery(dtstabMDFE_CIOT.DataSet).Post;
    except
      on e: Exception do
      begin
        TFDQuery(dtstabMDFE_CIOT.DataSet).Cancel;
        raise Exception.Create(e.Message);
      end;
    end;
  end;
end;

end.
