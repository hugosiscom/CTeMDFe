unit udtmMDFE;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.Dialogs, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, ACBrBase, ACBrMail, ACBrMDFeDAMDFeClass,
  ACBrMDFeDAMDFeRLClass, ACBrDFe, ACBrMDFe, pcnConversao, FireDAC.Moni.Base,
  FireDAC.Moni.RemoteClient, ACBrDFeReport, ufrmDefaultCadastro, blcksock,
  ACBrCIOT, ACBrCIOTConversao, ACBrUtil.Base, System.Math, ACBrCTe, ACBrNFe;

type
  TdtmMDFE = class(TDataModule)
    ACBrMail: TACBrMail;
    tabCERTIFICADO_CONFIG: TFDQuery;
    OpenDialog: TOpenDialog;
    ACBrMDFe: TACBrMDFe;
    ACBrMDFeDAMDFeRL: TACBrMDFeDAMDFeRL;
    qryCERTIFICADO_CONFIG: TFDQuery;
    tabMDFE: TFDQuery;
    updEvento: TFDQuery;
    updEnviado: TFDQuery;
    SaveDialog: TSaveDialog;
    tabCERTIFICADO_CONFIGID_EMPRESA: TIntegerField;
    tabCERTIFICADO_CONFIGID_MODELO: TIntegerField;
    tabCERTIFICADO_CONFIGID_CERTIFICADOCONFIG: TIntegerField;
    tabCERTIFICADO_CONFIGCERTIFICADO_NUMERO: TStringField;
    tabCERTIFICADO_CONFIGCERTIFICADO_SENHA: TStringField;
    tabCERTIFICADO_CONFIGWS_UF_DESTINO: TStringField;
    tabCERTIFICADO_CONFIGID_TIPO_AMBIENTE: TIntegerField;
    tabCERTIFICADO_CONFIGID_SSL_TYPE: TIntegerField;
    tabCERTIFICADO_CONFIGWS_PROXY_HOST: TStringField;
    tabCERTIFICADO_CONFIGWS_PROXY_PORTA: TIntegerField;
    tabCERTIFICADO_CONFIGWS_PROXY_USUARIO: TStringField;
    tabCERTIFICADO_CONFIGWS_PROXY_SENHA: TStringField;
    tabCERTIFICADO_CONFIGID_REPORT_ORIENTACAO: TIntegerField;
    tabCERTIFICADO_CONFIGID_FORMA_EMISSAO: TIntegerField;
    tabCERTIFICADO_CONFIGEMAIL_ENVIAR: TStringField;
    tabCERTIFICADO_CONFIGEMAIL_SERVIDOR: TStringField;
    tabCERTIFICADO_CONFIGEMAIL_PORTA: TIntegerField;
    tabCERTIFICADO_CONFIGEMAIL_USUARIO: TStringField;
    tabCERTIFICADO_CONFIGEMAIL_SENHA: TStringField;
    tabCERTIFICADO_CONFIGEMAIL_SENHA_SEGURA: TStringField;
    tabCERTIFICADO_CONFIGTIME_ZONE_MODO: TIntegerField;
    tabCERTIFICADO_CONFIGTIME_ZONE_MANUAL: TIntegerField;
    tabCERTIFICADO_CONFIGMANTER_ARQUIVOS_TEMPORARIOS: TStringField;
    qryCERTIFICADO_CONFIGID_EMPRESA: TIntegerField;
    qryCERTIFICADO_CONFIGID_MODELO: TIntegerField;
    qryCERTIFICADO_CONFIGID_CERTIFICADOCONFIG: TIntegerField;
    qryCERTIFICADO_CONFIGCERTIFICADO_NUMERO: TStringField;
    qryCERTIFICADO_CONFIGCERTIFICADO_SENHA: TStringField;
    qryCERTIFICADO_CONFIGWS_UF_DESTINO: TStringField;
    qryCERTIFICADO_CONFIGID_TIPO_AMBIENTE: TIntegerField;
    qryCERTIFICADO_CONFIGID_SSL_TYPE: TIntegerField;
    qryCERTIFICADO_CONFIGWS_PROXY_HOST: TStringField;
    qryCERTIFICADO_CONFIGWS_PROXY_PORTA: TIntegerField;
    qryCERTIFICADO_CONFIGWS_PROXY_USUARIO: TStringField;
    qryCERTIFICADO_CONFIGWS_PROXY_SENHA: TStringField;
    qryCERTIFICADO_CONFIGID_REPORT_ORIENTACAO: TIntegerField;
    qryCERTIFICADO_CONFIGID_FORMA_EMISSAO: TIntegerField;
    qryCERTIFICADO_CONFIGEMAIL_ENVIAR: TStringField;
    qryCERTIFICADO_CONFIGEMAIL_SERVIDOR: TStringField;
    qryCERTIFICADO_CONFIGEMAIL_PORTA: TIntegerField;
    qryCERTIFICADO_CONFIGEMAIL_USUARIO: TStringField;
    qryCERTIFICADO_CONFIGEMAIL_SENHA: TStringField;
    qryCERTIFICADO_CONFIGEMAIL_SENHA_SEGURA: TStringField;
    qryCERTIFICADO_CONFIGTIME_ZONE_MODO: TIntegerField;
    qryCERTIFICADO_CONFIGTIME_ZONE_MANUAL: TIntegerField;
    qryCERTIFICADO_CONFIGMANTER_ARQUIVOS_TEMPORARIOS: TStringField;
    qryMDFE: TFDQuery;
    qryEMPRESA: TFDQuery;
    qryEMPRESAID_EMPRESA: TIntegerField;
    qryEMPRESAID_REGIME: TIntegerField;
    qryEMPRESAID_INDICADOR_ATIVIDADE: TIntegerField;
    qryEMPRESARAZAOSOCIAL: TStringField;
    qryEMPRESANOMEFANTASIA: TStringField;
    qryEMPRESACNPJ: TStringField;
    qryEMPRESAIE_ESTADUAL: TStringField;
    qryEMPRESACNAE_FISCAL: TStringField;
    qryEMPRESAIE_MUNICIPAL: TStringField;
    qryEMPRESAIE_ESTADUAL_ST: TStringField;
    qryEMPRESAENDERECO: TStringField;
    qryEMPRESANUMERO: TStringField;
    qryEMPRESACOMPLEMENTO: TStringField;
    qryEMPRESABAIRRO: TStringField;
    qryEMPRESAID_CIDADES_IBGE: TIntegerField;
    qryEMPRESAID_CIDADES_UF: TStringField;
    qryEMPRESACEP: TStringField;
    qryEMPRESATELEFONE: TStringField;
    qryEMPRESACELULAR: TStringField;
    qryEMPRESAEMAIL: TStringField;
    qryEMPRESAWEBSITE: TStringField;
    qryEMPRESADATA_ABERTURA: TDateField;
    qryEMPRESACADASTRO_DATA: TSQLTimeStampField;
    qryEMPRESAALTERACAO_DATA: TSQLTimeStampField;
    qryEMPRESARESPONSAVEL: TStringField;
    qryEMPRESALOGOTIPO_LOCAL: TStringField;
    qryEMPRESACTEOS_ID_SERIE: TIntegerField;
    qryEMPRESAMDFE_ID_SERIE: TIntegerField;
    qryEMPRESAUF_IBGE: TIntegerField;
    qryEMPRESACIDADE: TStringField;
    updChave: TFDQuery;
    qryCIDADES_UF: TFDQuery;
    qryCIDADES_UFID_CIDADES_UF: TStringField;
    qryCIDADES_UFCODIBGE: TIntegerField;
    qryCIDADES_UFDESCRICAO: TStringField;
    tabMDFE_LOCAL_CARREGAMENTO: TFDQuery;
    qryCIDADES_LOCAL_CARREGAMENTO: TFDQuery;
    qryCIDADES_LOCAL_CARREGAMENTOID_CIDADES_IBGE: TIntegerField;
    qryCIDADES_LOCAL_CARREGAMENTOID_CIDADES_UF: TStringField;
    qryCIDADES_LOCAL_CARREGAMENTOID_PAIS: TIntegerField;
    qryCIDADES_LOCAL_CARREGAMENTODESCRICAO: TStringField;
    dtstabMDFE: TDataSource;
    tabMDFE_LOCAL_CARREGAMENTOID_EMPRESA: TIntegerField;
    tabMDFE_LOCAL_CARREGAMENTOID_MDFE: TIntegerField;
    tabMDFE_LOCAL_CARREGAMENTOID_SERIE: TIntegerField;
    tabMDFE_LOCAL_CARREGAMENTOID_UF: TStringField;
    tabMDFE_LOCAL_CARREGAMENTOID_MUNICIPIO: TIntegerField;
    tabMDFE_LOCAL_CARREGAMENTODTHR: TSQLTimeStampField;
    qryCIDADES: TFDQuery;
    qryCIDADESID_CIDADES_IBGE: TIntegerField;
    qryCIDADESID_CIDADES_UF: TStringField;
    qryCIDADESID_PAIS: TIntegerField;
    qryCIDADESDESCRICAO: TStringField;
    tabMDFE_LOCAL_CARREGAMENTOlookCIDADE: TStringField;
    tabMDFE_UF_PERCURSO: TFDQuery;
    tabMDFE_LACRE: TFDQuery;
    tabMDFE_SEGUROS: TFDQuery;
    tabMDFE_CONDUTORES: TFDQuery;
    tabMDFE_CONDUTORESID_EMPRESA: TIntegerField;
    tabMDFE_CONDUTORESID_SERIE: TIntegerField;
    tabMDFE_CONDUTORESID_MDFE: TIntegerField;
    tabMDFE_CONDUTORESID_CPF: TStringField;
    tabMDFE_CONDUTORESNOME: TStringField;
    tabMDFE_REBOQUE: TFDQuery;
    tabMDFE_CIOT: TFDQuery;
    tabMDFE_CIOTID_EMPRESA: TIntegerField;
    tabMDFE_CIOTID_MDFE: TIntegerField;
    tabMDFE_CIOTID_SERIE: TIntegerField;
    tabMDFE_CIOTCIOT: TStringField;
    tabMDFE_CIOTCNPJ: TStringField;
    tabMDFE_CONTRATANTES: TFDQuery;
    tabMDFE_CONTRATANTESID_EMPRESA: TIntegerField;
    tabMDFE_CONTRATANTESID_MDFE: TIntegerField;
    tabMDFE_CONTRATANTESID_SERIE: TIntegerField;
    tabMDFE_CONTRATANTESCNPJ: TStringField;
    tabMDFE_VALEPEDAGIO: TFDQuery;
    qryCIDADES_MUNICIPIO_DESCARREGAMENTO: TFDQuery;
    qryCIDADES_MUNICIPIO_DESCARREGAMENTOID_CIDADES_IBGE: TIntegerField;
    qryCIDADES_MUNICIPIO_DESCARREGAMENTOID_CIDADES_UF: TStringField;
    qryCIDADES_MUNICIPIO_DESCARREGAMENTOID_PAIS: TIntegerField;
    qryCIDADES_MUNICIPIO_DESCARREGAMENTODESCRICAO: TStringField;
    tabMDFE_LOCAL_DESCARREGAMENTO: TFDQuery;
    tabMDFE_LOCAL_DESCARREGAMENTOlookCIDADE: TStringField;
    dtstabMDFE_LOCAL_DESCARREGAMENTO: TDataSource;
    tabMDFE_CTElookCIDADE: TStringField;
    tabMDFE_CTE_UNIDTRANS: TFDQuery;
    dtstabMDFE_CTE: TDataSource;
    dtstabMDFE_CTE_UNIDTRANS: TDataSource;
    tabMDFE_CTE_UNIDTRANS_LACREID_EMPRESA: TIntegerField;
    tabMDFE_CTE_UNIDTRANS_LACREID_MDFE: TIntegerField;
    tabMDFE_CTE_UNIDTRANS_LACREID_SERIE: TIntegerField;
    tabMDFE_CTE_UNIDTRANS_LACREID_CHAVE: TStringField;
    tabMDFE_CTE_UNIDTRANS_LACREID_LACRE: TStringField;
    qryMDFE_LOCAL_CARREGAMENTO: TFDQuery;
    dtsqryMDFE: TDataSource;
    qryMDFE_LOCAL_CARREGAMENTOID_MUNICIPIO: TIntegerField;
    qryMDFE_LOCAL_CARREGAMENTOMUNICIPIO: TStringField;
    qryMDFE_CONDUTORES: TFDQuery;
    qryMDFE_CONDUTORESNOME: TStringField;
    qryMDFE_CONDUTORESID_CPF: TStringField;
    qryMDFE_REBOQUE: TFDQuery;
    qryMDFE_VALEPEDAGIO: TFDQuery;
    qryMDFE_LACRE: TFDQuery;
    qryMDFE_LACRELACRE: TStringField;
    qryMDFE_SEGUROS: TFDQuery;
    qryMDFE_CIOT: TFDQuery;
    qryMDFE_CIOTCIOT: TStringField;
    qryMDFE_CIOTCNPJ: TStringField;
    tabMDFE_SEGUROS_AVERBACAO: TFDQuery;
    tabMDFE_SEGUROSID_EMPRESA: TIntegerField;
    tabMDFE_SEGUROSID_MDFE: TIntegerField;
    tabMDFE_SEGUROSID_SERIE: TIntegerField;
    tabMDFE_SEGUROSID_RESPONSAVEL: TIntegerField;
    tabMDFE_SEGUROSID_CNPJCPF: TStringField;
    tabMDFE_SEGUROSNOME: TStringField;
    tabMDFE_SEGUROSCNPJ: TStringField;
    tabMDFE_SEGUROSAPOLICE: TStringField;
    tabMDFE_SEGUROS_AVERBACAOID_EMPRESA: TIntegerField;
    tabMDFE_SEGUROS_AVERBACAOID_MDFE: TIntegerField;
    tabMDFE_SEGUROS_AVERBACAOID_SERIE: TIntegerField;
    tabMDFE_SEGUROS_AVERBACAONAVER: TStringField;
    tabMDFE_SEGUROS_AVERBACAOCNPJ: TStringField;
    tabMDFE_SEGUROS_AVERBACAOAPOLICE: TStringField;
    dtstabMDFE_SEGUROS: TDataSource;
    qryMDFE_SEGUROS_AVERBACAO: TFDQuery;
    dtsqryMDFE_SEGUROS: TDataSource;
    qryMDFE_SEGUROSID_EMPRESA: TIntegerField;
    qryMDFE_SEGUROSID_MDFE: TIntegerField;
    qryMDFE_SEGUROSID_SERIE: TIntegerField;
    qryMDFE_SEGUROSID_RESPONSAVEL: TIntegerField;
    qryMDFE_SEGUROSID_CNPJCPF: TStringField;
    qryMDFE_SEGUROSNOME: TStringField;
    qryMDFE_SEGUROSCNPJ: TStringField;
    qryMDFE_SEGUROSAPOLICE: TStringField;
    qryMDFE_SEGUROS_AVERBACAONAVER: TStringField;
    qryMDFE_LOCAL_DESCARREGAMENTO: TFDQuery;
    qryMDFE_LOCAL_DESCARREGAMENTOID_EMPRESA: TIntegerField;
    qryMDFE_LOCAL_DESCARREGAMENTOID_MDFE: TIntegerField;
    qryMDFE_LOCAL_DESCARREGAMENTOID_SERIE: TIntegerField;
    qryMDFE_LOCAL_DESCARREGAMENTOID_CIDADES_UF: TStringField;
    qryMDFE_LOCAL_DESCARREGAMENTOID_CIDADES_IBGE: TIntegerField;
    qryMDFE_LOCAL_DESCARREGAMENTOCIDADE_NOME: TStringField;
    dtsqryMDFE_LOCAL_DESCARREGAMENTO: TDataSource;
    qryMDFE_CTE: TFDQuery;
    qryMDFE_CTEID_EMPRESA: TIntegerField;
    qryMDFE_CTEID_MDFE: TIntegerField;
    qryMDFE_CTEID_SERIE: TIntegerField;
    qryMDFE_CTEID_CHAVE: TStringField;
    qryMDFE_CTEID_IND_REENTREGA: TStringField;
    qryMDFE_CTEID_CIDADES_IBGE: TIntegerField;
    dtsqryMDFE_CTE: TDataSource;
    qryMDFE_CTE_UNIDTRANS: TFDQuery;
    dtsqryMDFE_CTE_UNIDTRANS: TDataSource;
    qryMDFE_CTE_UNIDTRANS_LACRE: TFDQuery;
    tabMDFE_CTE_CARGTRANS: TFDQuery;
    dtstabMDFE_CTE_CARGTRANS: TDataSource;
    tabMDFE_CTE_CARGTRANS_LACRE: TFDQuery;
    tabMDFE_CTE_CARGTRANS_LACREID_EMPRESA: TIntegerField;
    tabMDFE_CTE_CARGTRANS_LACREID_MDFE: TIntegerField;
    tabMDFE_CTE_CARGTRANS_LACREID_SERIE: TIntegerField;
    tabMDFE_CTE_CARGTRANS_LACREID_CHAVE: TStringField;
    tabMDFE_CTE_CARGTRANS_LACREID_LACRE: TStringField;
    qryMDFE_CTE_CARGTRANS: TFDQuery;
    tabMDFE_CTE_CARGTRANS_LACREID_IDENTIFICACAO: TStringField;
    tabMDFE_CTE_UNIDTRANS_LACREID_IDENTIFICACAO: TStringField;
    tabMDFE_CTE_UNIDTRANS_LACRE: TFDQuery;
    tabMDFE_CTE_CARGTRANS_LACREID_IDENTIFICADOR: TStringField;
    qryMDFE_CTE_UNIDTRANS_LACREID_EMPRESA: TIntegerField;
    qryMDFE_CTE_UNIDTRANS_LACREID_MDFE: TIntegerField;
    qryMDFE_CTE_UNIDTRANS_LACREID_SERIE: TIntegerField;
    qryMDFE_CTE_UNIDTRANS_LACREID_CHAVE: TStringField;
    qryMDFE_CTE_UNIDTRANS_LACREID_IDENTIFICACAO: TStringField;
    qryMDFE_CTE_UNIDTRANS_LACREID_LACRE: TStringField;
    dtsqryMDFE_CTE_CARGTRANS: TDataSource;
    qryMDFE_CTE_CARGTRANS_LACRE: TFDQuery;
    qryMDFE_CTE_CARGTRANS_LACREID_EMPRESA: TIntegerField;
    qryMDFE_CTE_CARGTRANS_LACREID_MDFE: TIntegerField;
    qryMDFE_CTE_CARGTRANS_LACREID_SERIE: TIntegerField;
    qryMDFE_CTE_CARGTRANS_LACREID_CHAVE: TStringField;
    qryMDFE_CTE_CARGTRANS_LACREID_IDENTIFICACAO: TStringField;
    qryMDFE_CTE_CARGTRANS_LACREID_IDENTIFICADOR: TStringField;
    qryMDFE_CTE_CARGTRANS_LACREID_LACRE: TStringField;
    tabMDFE_NFE: TFDQuery;
    dtstabMDFE_NFE: TDataSource;
    tabMDFE_NFE_UNIDTRANS: TFDQuery;
    tabMDFE_NFEID_EMPRESA: TIntegerField;
    tabMDFE_NFEID_MDFE: TIntegerField;
    tabMDFE_NFEID_SERIE: TIntegerField;
    tabMDFE_NFEID_CHAVE: TStringField;
    tabMDFE_NFEID_IND_REENTREGA: TStringField;
    tabMDFE_NFEID_CIDADES_IBGE: TIntegerField;
    dtstabMDFE_NFE_UNIDTRANS: TDataSource;
    tabMDFE_NFE_UNIDTRANS_LACRE: TFDQuery;
    tabMDFE_NFE_CARGTRANS: TFDQuery;
    dtstabMDFE_NFE_CARGTRANS: TDataSource;
    tabMDFE_NFE_CARGTRANS_LACRE: TFDQuery;
    tabMDFE_AUT_DOWNLOAD: TFDQuery;
    tabMDFE_AUT_DOWNLOADID_EMPRESA: TIntegerField;
    tabMDFE_AUT_DOWNLOADID_MDFE: TIntegerField;
    tabMDFE_AUT_DOWNLOADID_SERIE: TIntegerField;
    tabMDFE_AUT_DOWNLOADN_DOC: TStringField;
    tabMDFE_NFElookCIDADE: TStringField;
    qryMDFE_NFE: TFDQuery;
    qryMDFE_NFE_UNIDTRANS: TFDQuery;
    qryMDFE_NFE_UNIDTRANS_LACRE: TFDQuery;
    qryMDFE_NFE_CARGTRANS: TFDQuery;
    qryMDFE_NFE_CARGTRANS_LACRE: TFDQuery;
    dtsqryMDFE_NFE: TDataSource;
    dtsqryMDFE_NFE_UNIDTRANS: TDataSource;
    dtsqryMDFE_NFE_CARGTRANS: TDataSource;
    tabMDFE_NFE_UNIDTRANS_LACREID_EMPRESA: TIntegerField;
    tabMDFE_NFE_UNIDTRANS_LACREID_MDFE: TIntegerField;
    tabMDFE_NFE_UNIDTRANS_LACREID_SERIE: TIntegerField;
    tabMDFE_NFE_UNIDTRANS_LACREID_CHAVE: TStringField;
    tabMDFE_NFE_UNIDTRANS_LACREID_IDENTIFICACAO: TStringField;
    tabMDFE_NFE_UNIDTRANS_LACREID_LACRE: TStringField;
    qryMDFE_NFEID_EMPRESA: TIntegerField;
    qryMDFE_NFEID_MDFE: TIntegerField;
    qryMDFE_NFEID_SERIE: TIntegerField;
    qryMDFE_NFEID_CHAVE: TStringField;
    qryMDFE_NFEID_IND_REENTREGA: TStringField;
    qryMDFE_NFEID_CIDADES_IBGE: TIntegerField;
    qryMDFE_NFE_UNIDTRANS_LACREID_EMPRESA: TIntegerField;
    qryMDFE_NFE_UNIDTRANS_LACREID_MDFE: TIntegerField;
    qryMDFE_NFE_UNIDTRANS_LACREID_SERIE: TIntegerField;
    qryMDFE_NFE_UNIDTRANS_LACREID_CHAVE: TStringField;
    qryMDFE_NFE_UNIDTRANS_LACREID_IDENTIFICACAO: TStringField;
    qryMDFE_NFE_UNIDTRANS_LACREID_LACRE: TStringField;
    qryMDFE_UF_PERCURSO: TFDQuery;
    qryMDFE_UF_PERCURSOID_EMPRESA: TIntegerField;
    qryMDFE_UF_PERCURSOID_MDFE: TIntegerField;
    qryMDFE_UF_PERCURSOID_SERIE: TIntegerField;
    qryMDFE_UF_PERCURSOID_UF: TStringField;
    qryMDFE_UF_PERCURSODTHR: TSQLTimeStampField;
    qryMDFE_CONTRATANTES: TFDQuery;
    qryMDFE_CONTRATANTESID_EMPRESA: TIntegerField;
    qryMDFE_CONTRATANTESID_MDFE: TIntegerField;
    qryMDFE_CONTRATANTESID_SERIE: TIntegerField;
    qryMDFE_CONTRATANTESCNPJ: TStringField;
    tabMDFE_NFE_CARGTRANS_LACREID_EMPRESA: TIntegerField;
    tabMDFE_NFE_CARGTRANS_LACREID_MDFE: TIntegerField;
    tabMDFE_NFE_CARGTRANS_LACREID_SERIE: TIntegerField;
    tabMDFE_NFE_CARGTRANS_LACREID_CHAVE: TStringField;
    tabMDFE_NFE_CARGTRANS_LACREID_IDENTIFICACAO: TStringField;
    tabMDFE_NFE_CARGTRANS_LACREID_IDENTIFICADOR: TIntegerField;
    tabMDFE_NFE_CARGTRANS_LACREID_LACRE: TStringField;
    qryMDFE_NFE_CARGTRANS_LACREID_EMPRESA: TIntegerField;
    qryMDFE_NFE_CARGTRANS_LACREID_MDFE: TIntegerField;
    qryMDFE_NFE_CARGTRANS_LACREID_SERIE: TIntegerField;
    qryMDFE_NFE_CARGTRANS_LACREID_CHAVE: TStringField;
    qryMDFE_NFE_CARGTRANS_LACREID_IDENTIFICACAO: TStringField;
    qryMDFE_NFE_CARGTRANS_LACREID_IDENTIFICADOR: TIntegerField;
    qryMDFE_NFE_CARGTRANS_LACREID_LACRE: TStringField;
    tabMDFE_CTEID_EMPRESA: TIntegerField;
    tabMDFE_CTEID_MDFE: TIntegerField;
    tabMDFE_CTEID_SERIE: TIntegerField;
    tabMDFE_CTEID_CHAVE: TStringField;
    tabMDFE_CTEID_IND_REENTREGA: TStringField;
    tabMDFE_CTEID_CIDADES_UF: TStringField;
    tabMDFE_CTEID_CIDADES_IBGE: TIntegerField;
    tabMDFE_LOCAL_DESCARREGAMENTOID_EMPRESA: TIntegerField;
    tabMDFE_LOCAL_DESCARREGAMENTOID_MDFE: TIntegerField;
    tabMDFE_LOCAL_DESCARREGAMENTOID_SERIE: TIntegerField;
    tabMDFE_LOCAL_DESCARREGAMENTOID_CIDADES_UF: TStringField;
    tabMDFE_LOCAL_DESCARREGAMENTOID_CIDADES_IBGE: TIntegerField;
    tabMDFE_NFEID_CIDADES_UF: TStringField;
    FDMoniRemoteClientLink1: TFDMoniRemoteClientLink;
    tabMDFE_CTE: TFDQuery;
    tabCERTIFICADO_CONFIGLOGOMARCA: TStringField;
    qryCERTIFICADO_CONFIGLOGOMARCA: TStringField;
    tabMDFE_AQUA_TERMINAL_CARREG: TFDQuery;
    tabMDFE_AQUA_TERMINAL_CARREGID_EMPRESA: TIntegerField;
    tabMDFE_AQUA_TERMINAL_CARREGID_MDFE: TIntegerField;
    tabMDFE_AQUA_TERMINAL_CARREGID_SERIE: TIntegerField;
    tabMDFE_AQUA_TERMINAL_CARREGID_TERMINAL: TStringField;
    tabMDFE_AQUA_TERMINAL_CARREGID_NOME: TStringField;
    qryMDFE_AQUA_TERMINAL_CARREG: TFDQuery;
    qryMDFE_AQUA_TERMINAL_CARREGID_EMPRESA: TIntegerField;
    qryMDFE_AQUA_TERMINAL_CARREGID_MDFE: TIntegerField;
    qryMDFE_AQUA_TERMINAL_CARREGID_SERIE: TIntegerField;
    qryMDFE_AQUA_TERMINAL_CARREGID_TERMINAL: TStringField;
    qryMDFE_AQUA_TERMINAL_CARREGID_NOME: TStringField;
    tabMDFE_AQUA_TERMINAL_DESCARREG: TFDQuery;
    tabMDFE_AQUA_TERMINAL_DESCARREGID_EMPRESA: TIntegerField;
    tabMDFE_AQUA_TERMINAL_DESCARREGID_MDFE: TIntegerField;
    tabMDFE_AQUA_TERMINAL_DESCARREGID_SERIE: TIntegerField;
    tabMDFE_AQUA_TERMINAL_DESCARREGID_TERMINAL: TStringField;
    tabMDFE_AQUA_TERMINAL_DESCARREGID_NOME: TStringField;
    qryMDFE_AQUA_TERMINAL_DESCARREG: TFDQuery;
    qryMDFE_AQUA_TERMINAL_DESCARREGID_EMPRESA: TIntegerField;
    qryMDFE_AQUA_TERMINAL_DESCARREGID_MDFE: TIntegerField;
    qryMDFE_AQUA_TERMINAL_DESCARREGID_SERIE: TIntegerField;
    qryMDFE_AQUA_TERMINAL_DESCARREGID_TERMINAL: TStringField;
    qryMDFE_AQUA_TERMINAL_DESCARREGID_NOME: TStringField;
    tabMDFE_AQUA_COMBOIO: TFDQuery;
    qryMDFE_AQUA_COMBOIO: TFDQuery;
    qryMDFE_AQUA_COMBOIOID_EMPRESA: TIntegerField;
    qryMDFE_AQUA_COMBOIOID_MDFE: TIntegerField;
    qryMDFE_AQUA_COMBOIOID_SERIE: TIntegerField;
    qryMDFE_AQUA_COMBOIOID_COMBOIO: TStringField;
    tabMDFE_AQUA_COMBOIOID_EMPRESA: TIntegerField;
    tabMDFE_AQUA_COMBOIOID_MDFE: TIntegerField;
    tabMDFE_AQUA_COMBOIOID_SERIE: TIntegerField;
    tabMDFE_AQUA_COMBOIOID_COMBOIO: TStringField;
    tabMDFE_AQUA_UNID_CARGA: TFDQuery;
    qryMDFE_AQUA_UNID_CARGA: TFDQuery;
    tabMDFE_AQUA_UNID_CARGAID_EMPRESA: TIntegerField;
    tabMDFE_AQUA_UNID_CARGAID_MDFE: TIntegerField;
    tabMDFE_AQUA_UNID_CARGAID_SERIE: TIntegerField;
    tabMDFE_AQUA_UNID_CARGAID_IDENTIFICACAO: TStringField;
    tabMDFE_AQUA_UNID_CARGAID_UNIDADE: TIntegerField;
    qryMDFE_AQUA_UNID_CARGAID_EMPRESA: TIntegerField;
    qryMDFE_AQUA_UNID_CARGAID_MDFE: TIntegerField;
    qryMDFE_AQUA_UNID_CARGAID_SERIE: TIntegerField;
    qryMDFE_AQUA_UNID_CARGAID_IDENTIFICACAO: TStringField;
    qryMDFE_AQUA_UNID_CARGAID_UNIDADE: TIntegerField;
    tabMDFE_AQUA_COMBOIOBALSA: TStringField;
    qryMDFE_AQUA_COMBOIOBALSA: TStringField;
    tabMDFE_AQUA_UNID_TRANS: TFDQuery;
    qryMDFE_AQUA_UNID_TRANS: TFDQuery;
    qryMDFE_AQUA_UNID_TRANSID_EMPRESA: TIntegerField;
    qryMDFE_AQUA_UNID_TRANSID_MDFE: TIntegerField;
    qryMDFE_AQUA_UNID_TRANSID_SERIE: TIntegerField;
    qryMDFE_AQUA_UNID_TRANSID_IDENTIFICACAO: TStringField;
    qryMDFE_AQUA_UNID_TRANSID_UNIDADE: TIntegerField;
    tabMDFE_AQUA_UNID_TRANSID_EMPRESA: TIntegerField;
    tabMDFE_AQUA_UNID_TRANSID_MDFE: TIntegerField;
    tabMDFE_AQUA_UNID_TRANSID_SERIE: TIntegerField;
    tabMDFE_AQUA_UNID_TRANSID_IDENTIFICACAO: TStringField;
    tabMDFE_AQUA_UNID_TRANSID_UNIDADE: TIntegerField;
    tabMDFE_REBOQUEID_EMPRESA: TIntegerField;
    tabMDFE_REBOQUEID_MDFE: TIntegerField;
    tabMDFE_REBOQUEID_SERIE: TIntegerField;
    tabMDFE_REBOQUEINTT: TStringField;
    tabMDFE_REBOQUEPLACA: TStringField;
    tabMDFE_REBOQUEID_TIPO_RODADO: TIntegerField;
    tabMDFE_REBOQUEUF: TStringField;
    tabMDFE_REBOQUECAPKG: TFMTBCDField;
    tabMDFE_REBOQUECAPM3: TFMTBCDField;
    tabMDFE_REBOQUETARA: TFMTBCDField;
    tabMDFE_REBOQUERENAVAN: TStringField;
    tabMDFE_VALEPEDAGIOID_EMPRESA: TIntegerField;
    tabMDFE_VALEPEDAGIOID_MDFE: TIntegerField;
    tabMDFE_VALEPEDAGIOID_SERIE: TIntegerField;
    tabMDFE_VALEPEDAGIOCNPJFORN: TStringField;
    tabMDFE_VALEPEDAGIOCNPJPG: TStringField;
    tabMDFE_VALEPEDAGIONCOMPRA: TStringField;
    tabMDFE_VALEPEDAGIOVALOR: TFMTBCDField;
    tabMDFE_CTE_CARGTRANSID_EMPRESA: TIntegerField;
    tabMDFE_CTE_CARGTRANSID_MDFE: TIntegerField;
    tabMDFE_CTE_CARGTRANSID_SERIE: TIntegerField;
    tabMDFE_CTE_CARGTRANSID_CHAVE: TStringField;
    tabMDFE_CTE_CARGTRANSID_IDENTIFICACAO: TStringField;
    tabMDFE_CTE_CARGTRANSID_TIPO: TIntegerField;
    tabMDFE_CTE_CARGTRANSID_IDENTIFICADOR: TStringField;
    tabMDFE_CTE_CARGTRANSQUANTIDADE: TFMTBCDField;
    tabMDFE_NFE_CARGTRANSID_EMPRESA: TIntegerField;
    tabMDFE_NFE_CARGTRANSID_MDFE: TIntegerField;
    tabMDFE_NFE_CARGTRANSID_SERIE: TIntegerField;
    tabMDFE_NFE_CARGTRANSID_CHAVE: TStringField;
    tabMDFE_NFE_CARGTRANSID_IDENTIFICACAO: TStringField;
    tabMDFE_NFE_CARGTRANSID_TIPO: TIntegerField;
    tabMDFE_NFE_CARGTRANSID_IDENTIFICADOR: TIntegerField;
    tabMDFE_NFE_CARGTRANSQUANTIDADE: TFMTBCDField;
    tabMDFE_NFE_UNIDTRANSID_EMPRESA: TIntegerField;
    tabMDFE_NFE_UNIDTRANSID_MDFE: TIntegerField;
    tabMDFE_NFE_UNIDTRANSID_SERIE: TIntegerField;
    tabMDFE_NFE_UNIDTRANSID_CHAVE: TStringField;
    tabMDFE_NFE_UNIDTRANSID_TIPO: TIntegerField;
    tabMDFE_NFE_UNIDTRANSID_IDENTIFICACAO: TStringField;
    tabMDFE_NFE_UNIDTRANSQUANTIDADE: TFMTBCDField;
    qryMDFEID_EMPRESA: TIntegerField;
    qryMDFEID_MDFE: TIntegerField;
    qryMDFEID_SERIE: TIntegerField;
    qryMDFEDATAHORA_EMISSAO: TSQLTimeStampField;
    qryMDFEDATAHORA_INICIO_VIAGEM: TSQLTimeStampField;
    qryMDFEID_UF_INICIAL: TStringField;
    qryMDFEID_TIPO_EMITENTE: TIntegerField;
    qryMDFEID_TIPO_TRANSPORTADOR: TIntegerField;
    qryMDFEID_MODALIDADE: TIntegerField;
    qryMDFEID_FORMA_EMISSAO: TIntegerField;
    qryMDFEID_UF_FINAL: TStringField;
    qryMDFEVEICULO_RNTRC: TStringField;
    qryMDFEVEICULO_COD_AGENDA_PORT: TStringField;
    qryMDFEVEICULO_CODIGO_INTERNO: TStringField;
    qryMDFEVEICULO_TIPO_CARROCERIA: TIntegerField;
    qryMDFEVEICULO_PLACA: TStringField;
    qryMDFEVEICULO_TARA: TFMTBCDField;
    qryMDFEVEICULO_UF: TStringField;
    qryMDFEVEICULO_RENAVAN: TStringField;
    qryMDFEVEICULO_TIPO_RODADO: TIntegerField;
    qryMDFEVEICULO_CAPACIDADE_KG: TFMTBCDField;
    qryMDFEVEICULO_CAPACIDADE_M3: TFMTBCDField;
    qryMDFEEMI_N_PROP: TStringField;
    qryMDFEEMI_N_PROP_TIPO: TIntegerField;
    qryMDFEEMI_N_PROP_UF: TStringField;
    qryMDFEEMI_N_PROP_RNTRC: TStringField;
    qryMDFEEMI_N_PROP_CPF_CNPJ: TStringField;
    qryMDFEEMI_N_PROP_RZSOCIAL: TStringField;
    qryMDFEEMI_N_PROP_IE: TStringField;
    qryMDFETOTF_VLR_TOT_MERCADORIA: TFMTBCDField;
    qryMDFETOTF_COD_UNIDADE: TIntegerField;
    qryMDFETOTF_PES_BRUTO: TFMTBCDField;
    qryMDFEINF_ADIC_FISCO: TMemoField;
    qryMDFEINF_ADIC_CONTRIBUINTE: TMemoField;
    qryMDFEID_SITUACAO: TStringField;
    qryMDFEXML_CHAVE: TStringField;
    qryMDFEXML_PROTOCOLO: TStringField;
    qryMDFEXML_PROCOCOLO_DATAHORA: TSQLTimeStampField;
    qryMDFEXML_STATUS_CODIGO: TIntegerField;
    qryMDFEXML_XMOTIVO: TStringField;
    qryMDFEXML_STRING: TMemoField;
    qryMDFEXML_STRING_PROTOCOLO: TMemoField;
    qryMDFEXML_CANC_DATAHORA: TSQLTimeStampField;
    qryMDFEXML_CANC_PROTOCOLO: TStringField;
    qryMDFEXML_CANC_STRING: TMemoField;
    qryMDFEAQUA_CNPJ: TStringField;
    qryMDFEAQUA_EMBARCACAO_TIPO: TStringField;
    qryMDFEAQUA_EMBARCACAO_CODIGO: TStringField;
    qryMDFEAQUA_EMBARCACAO_VIAGEM_NUMERO: TStringField;
    qryMDFEAQUA_EMBARCACAO_NOME: TStringField;
    qryMDFEAQUA_EMBARCACAO_CODPORTO_EMB: TStringField;
    qryMDFEAQUA_EMBARCACAO_CODPORTO_DEST: TStringField;
    qryMDFE_REBOQUEINTT: TStringField;
    qryMDFE_REBOQUEPLACA: TStringField;
    qryMDFE_REBOQUEID_TIPO_RODADO: TIntegerField;
    qryMDFE_REBOQUEUF: TStringField;
    qryMDFE_REBOQUECAPKG: TFMTBCDField;
    qryMDFE_REBOQUECAPM3: TFMTBCDField;
    qryMDFE_REBOQUETARA: TFMTBCDField;
    qryMDFE_REBOQUERENAVAN: TStringField;
    qryMDFE_VALEPEDAGIOCNPJFORN: TStringField;
    qryMDFE_VALEPEDAGIOCNPJPG: TStringField;
    qryMDFE_VALEPEDAGIONCOMPRA: TStringField;
    qryMDFE_VALEPEDAGIOVALOR: TFMTBCDField;
    qryMDFE_CTE_UNIDTRANSID_EMPRESA: TIntegerField;
    qryMDFE_CTE_UNIDTRANSID_MDFE: TIntegerField;
    qryMDFE_CTE_UNIDTRANSID_SERIE: TIntegerField;
    qryMDFE_CTE_UNIDTRANSID_CHAVE: TStringField;
    qryMDFE_CTE_UNIDTRANSID_TIPO: TIntegerField;
    qryMDFE_CTE_UNIDTRANSID_IDENTIFICACAO: TStringField;
    qryMDFE_CTE_UNIDTRANSQUANTIDADE: TFMTBCDField;
    qryMDFE_CTE_CARGTRANSID_EMPRESA: TIntegerField;
    qryMDFE_CTE_CARGTRANSID_MDFE: TIntegerField;
    qryMDFE_CTE_CARGTRANSID_SERIE: TIntegerField;
    qryMDFE_CTE_CARGTRANSID_CHAVE: TStringField;
    qryMDFE_CTE_CARGTRANSID_IDENTIFICACAO: TStringField;
    qryMDFE_CTE_CARGTRANSID_TIPO: TIntegerField;
    qryMDFE_CTE_CARGTRANSID_IDENTIFICADOR: TStringField;
    qryMDFE_CTE_CARGTRANSQUANTIDADE: TFMTBCDField;
    qryMDFE_NFE_UNIDTRANSID_EMPRESA: TIntegerField;
    qryMDFE_NFE_UNIDTRANSID_MDFE: TIntegerField;
    qryMDFE_NFE_UNIDTRANSID_SERIE: TIntegerField;
    qryMDFE_NFE_UNIDTRANSID_CHAVE: TStringField;
    qryMDFE_NFE_UNIDTRANSID_TIPO: TIntegerField;
    qryMDFE_NFE_UNIDTRANSID_IDENTIFICACAO: TStringField;
    qryMDFE_NFE_UNIDTRANSQUANTIDADE: TFMTBCDField;
    qryMDFE_NFE_CARGTRANSID_EMPRESA: TIntegerField;
    qryMDFE_NFE_CARGTRANSID_MDFE: TIntegerField;
    qryMDFE_NFE_CARGTRANSID_SERIE: TIntegerField;
    qryMDFE_NFE_CARGTRANSID_CHAVE: TStringField;
    qryMDFE_NFE_CARGTRANSID_IDENTIFICACAO: TStringField;
    qryMDFE_NFE_CARGTRANSID_TIPO: TIntegerField;
    qryMDFE_NFE_CARGTRANSID_IDENTIFICADOR: TIntegerField;
    qryMDFE_NFE_CARGTRANSQUANTIDADE: TFMTBCDField;
    qryCERTIFICADO_CONFIGEMAIL_SENHA_TLS: TStringField;
    QryMotorista: TFDQuery;
    QryMotoristaID_EMPRESA: TIntegerField;
    QryMotoristaID_MOTORISTA: TIntegerField;
    QryMotoristaNOME: TStringField;
    QryMotoristaCPF: TStringField;
    DtsMotorista: TDataSource;
    QryVeiculo: TFDQuery;
    DtsVeiculo: TDataSource;
    QryVeiculoID_EMPRESA: TIntegerField;
    QryVeiculoID_VEICULO: TIntegerField;
    QryVeiculoRNTRC: TStringField;
    QryVeiculoCOD_AGENDA_PORT: TStringField;
    QryVeiculoCODIGO_INTERNO: TStringField;
    QryVeiculoTIPO_CARROCERIA: TIntegerField;
    QryVeiculoPLACA: TStringField;
    QryVeiculoUF: TStringField;
    QryVeiculoRENAVAN: TStringField;
    QryVeiculoTIPO_RODADO: TIntegerField;
    QryVeiculoCAPACIDADE_KG: TFMTBCDField;
    QryVeiculoCAPACIDADE_M3: TFMTBCDField;
    QryVeiculoDESCRICAO: TStringField;
    QryVeiculoTIPO_VEICULO: TIntegerField;
    QryVeiculoTARA: TFMTBCDField;
    QryVeiculoCOR: TStringField;
    QryVeiculoCOR_DESCRICAO: TStringField;
    QryVeiculoCODIGO_MARCA_MODELO: TStringField;
    QryVeiculoVALOR_UNITARIO: TFMTBCDField;
    QryVeiculoFRETE_UNITARIO: TFMTBCDField;
    QryVeiculoCHASSI: TStringField;
    tabMDFE_NFEVALOR: TFMTBCDField;
    tabMDFE_NFEPESO: TFMTBCDField;
    updEncerrado: TFDQuery;
    tabCERTIFICADO_CONFIGVERSAO_PROCESSO_EMISSAO: TStringField;
    ACBrCIOT: TACBrCIOT;
    QryConfigCIOT: TFDQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    StringField4: TStringField;
    IntegerField6: TIntegerField;
    StringField5: TStringField;
    StringField6: TStringField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    StringField7: TStringField;
    StringField8: TStringField;
    IntegerField9: TIntegerField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    IntegerField10: TIntegerField;
    IntegerField11: TIntegerField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    QryMotoristaRENACH: TStringField;
    QryMotoristaNUMERO_REGISTRO: TStringField;
    QryMotoristaCODIGO_SEGURANCA: TStringField;
    QryMotoristaCATEGORIA: TStringField;
    QryMotoristaDATA_NASCIMENTO: TDateField;
    QryMotoristaBAIRRO: TStringField;
    QryMotoristaRUA: TStringField;
    QryMotoristaNUMERO: TStringField;
    QryMotoristaCOMPLEMENTO: TStringField;
    QryMotoristaCEP: TIntegerField;
    QryMotoristaCODIGO_MUNICIPIO: TIntegerField;
    QryMotoristaCELULAR: TLargeintField;
    tabMDFE_CTE_UNIDTRANSID_EMPRESA: TIntegerField;
    tabMDFE_CTE_UNIDTRANSID_MDFE: TIntegerField;
    tabMDFE_CTE_UNIDTRANSID_SERIE: TIntegerField;
    tabMDFE_CTE_UNIDTRANSID_CHAVE: TStringField;
    tabMDFE_CTE_UNIDTRANSID_TIPO: TIntegerField;
    tabMDFE_CTE_UNIDTRANSID_IDENTIFICACAO: TStringField;
    tabMDFE_CTE_UNIDTRANSQUANTIDADE: TFMTBCDField;
    QryVeiculoMARCA: TStringField;
    QryVeiculoMODELO: TStringField;
    QryVeiculoANO_FABRICACAO: TIntegerField;
    QryVeiculoANO_MODELO: TIntegerField;
    QryVeiculoNUMERO_EIXOS: TSmallintField;
    QryVeiculoCODIGO_MUNICIPIO: TIntegerField;
    qryMotoristaEspecifico: TFDQuery;
    qryMotoristaEspecificoID_EMPRESA: TIntegerField;
    qryMotoristaEspecificoID_MOTORISTA: TIntegerField;
    qryMotoristaEspecificoNOME: TStringField;
    qryMotoristaEspecificoCPF: TStringField;
    qryMotoristaEspecificoRENACH: TStringField;
    qryMotoristaEspecificoNUMERO_REGISTRO: TStringField;
    qryMotoristaEspecificoCODIGO_SEGURANCA: TStringField;
    qryMotoristaEspecificoCATEGORIA: TStringField;
    qryMotoristaEspecificoDATA_NASCIMENTO: TDateField;
    qryMotoristaEspecificoBAIRRO: TStringField;
    qryMotoristaEspecificoRUA: TStringField;
    qryMotoristaEspecificoCOMPLEMENTO: TStringField;
    qryMotoristaEspecificoCEP: TIntegerField;
    qryMotoristaEspecificoCODIGO_MUNICIPIO: TIntegerField;
    qryMotoristaEspecificoCELULAR: TLargeintField;
    qryMotoristaEspecificoNUMERO: TStringField;
    qryMotoristaEspecificoNOME_SOLTEIRA_MAE: TStringField;
    tabMDFE_LOCAL_DESCARREGAMENTOCEP: TStringField;
    tabMDFE_LOCAL_CARREGAMENTOCEP: TStringField;
    tabMDFE_NFEXML_NFE: TBlobField;
    tabMDFE_CTEXML_CTE: TBlobField;
    ACBrCTe: TACBrCTe;
    tabMDFE_SEGUROSVALOR_SEGURO: TFMTBCDField;
    ACBrNFe: TACBrNFe;
    tabMDFEID_EMPRESA: TIntegerField;
    tabMDFEID_MDFE: TIntegerField;
    tabMDFEID_SERIE: TIntegerField;
    tabMDFEDATAHORA_EMISSAO: TSQLTimeStampField;
    tabMDFEDATAHORA_INICIO_VIAGEM: TSQLTimeStampField;
    tabMDFEID_UF_INICIAL: TStringField;
    tabMDFEID_TIPO_EMITENTE: TIntegerField;
    tabMDFEID_TIPO_TRANSPORTADOR: TIntegerField;
    tabMDFEID_MODALIDADE: TIntegerField;
    tabMDFEID_FORMA_EMISSAO: TIntegerField;
    tabMDFEID_UF_FINAL: TStringField;
    tabMDFEVEICULO_RNTRC: TStringField;
    tabMDFEVEICULO_COD_AGENDA_PORT: TStringField;
    tabMDFEVEICULO_CODIGO_INTERNO: TStringField;
    tabMDFEVEICULO_TIPO_CARROCERIA: TIntegerField;
    tabMDFEVEICULO_PLACA: TStringField;
    tabMDFEVEICULO_TARA: TFMTBCDField;
    tabMDFEVEICULO_UF: TStringField;
    tabMDFEVEICULO_RENAVAN: TStringField;
    tabMDFEVEICULO_TIPO_RODADO: TIntegerField;
    tabMDFEVEICULO_CAPACIDADE_KG: TFMTBCDField;
    tabMDFEVEICULO_CAPACIDADE_M3: TFMTBCDField;
    tabMDFEEMI_N_PROP: TStringField;
    tabMDFEEMI_N_PROP_TIPO: TIntegerField;
    tabMDFEEMI_N_PROP_UF: TStringField;
    tabMDFEEMI_N_PROP_RNTRC: TStringField;
    tabMDFEEMI_N_PROP_CPF_CNPJ: TStringField;
    tabMDFEEMI_N_PROP_RZSOCIAL: TStringField;
    tabMDFEEMI_N_PROP_IE: TStringField;
    tabMDFETOTF_VLR_TOT_MERCADORIA: TFMTBCDField;
    tabMDFETOTF_COD_UNIDADE: TIntegerField;
    tabMDFETOTF_PES_BRUTO: TFMTBCDField;
    tabMDFEINF_ADIC_FISCO: TMemoField;
    tabMDFEINF_ADIC_CONTRIBUINTE: TMemoField;
    tabMDFEID_SITUACAO: TStringField;
    tabMDFEXML_CHAVE: TStringField;
    tabMDFEXML_PROTOCOLO: TStringField;
    tabMDFEXML_PROCOCOLO_DATAHORA: TSQLTimeStampField;
    tabMDFEXML_STATUS_CODIGO: TIntegerField;
    tabMDFEXML_XMOTIVO: TStringField;
    tabMDFEXML_STRING: TMemoField;
    tabMDFEXML_STRING_PROTOCOLO: TMemoField;
    tabMDFEXML_CANC_DATAHORA: TSQLTimeStampField;
    tabMDFEXML_CANC_PROTOCOLO: TStringField;
    tabMDFEXML_CANC_STRING: TMemoField;
    tabMDFEAQUA_CNPJ: TStringField;
    tabMDFEAQUA_EMBARCACAO_TIPO: TStringField;
    tabMDFEAQUA_EMBARCACAO_CODIGO: TStringField;
    tabMDFEAQUA_EMBARCACAO_VIAGEM_NUMERO: TStringField;
    tabMDFEAQUA_EMBARCACAO_NOME: TStringField;
    tabMDFEAQUA_EMBARCACAO_CODPORTO_EMB: TStringField;
    tabMDFEAQUA_EMBARCACAO_CODPORTO_DEST: TStringField;
    tabMDFEVEICULO_CHASSI: TStringField;
    tabMDFEMDFE_1FLD: TLargeintField;
    tabMDFEEMI_N_PROP_BAIRRO: TStringField;
    tabMDFEEMI_N_PROP_RUA: TStringField;
    tabMDFEEMI_N_PROP_NUMERO: TStringField;
    tabMDFEEMI_N_PROP_COMPLEMENTO: TStringField;
    tabMDFEEMI_N_PROP_CEP: TIntegerField;
    tabMDFEEMI_N_PROP_CODIGO_MUNICIPIO: TIntegerField;
    tabMDFEEMI_N_PROP_CELULAR: TLargeintField;
    tabMDFEVEICULO_MARCA: TStringField;
    tabMDFEVEICULO_MODELO: TStringField;
    tabMDFEVEICULO_COR: TStringField;
    tabMDFEVEICULO_COR_DESCRICAO: TStringField;
    tabMDFEVEICULO_ANO_FABRICACAO: TIntegerField;
    tabMDFEVEICULO_ANO_MODELO: TIntegerField;
    tabMDFEVEICULO_NUMERO_EIXOS: TSmallintField;
    tabMDFEVEICULO_CODIGO_MUNICIPIO: TIntegerField;
    tabMDFETIPO_VIAGEM_INDEX: TSmallintField;
    tabMDFEDATAHORA_FIM_VIAGEM: TSQLTimeStampField;
    tabMDFETIPO_EMBALAGEM_INDEX: TSmallintField;
    tabMDFEDISTANCIA_PERCORRIDA: TFMTBCDField;
    tabMDFETOTAL_VIAGEM: TFMTBCDField;
    tabMDFETOTAL_ADIANTAMENTO: TFMTBCDField;
    tabMDFETOTAL_QUITACAO: TFMTBCDField;
    tabMDFETOTAL_COMBUSTIVEL: TFMTBCDField;
    tabMDFEOUTROS_CREDITOS: TFMTBCDField;
    tabMDFEOUTROS_DEBITOS: TFMTBCDField;
    tabMDFEJUSTIFICATIVA_OUTROS_CREDITOS: TStringField;
    tabMDFEJUSTIFICATIVA_OUTROS_DEBITOS: TStringField;
    tabMDFEOBS_TRANSPORTADOR: TStringField;
    tabMDFEOBS_CREDENCIADO: TStringField;
    tabMDFEDISTANCIA_RETORNO: TFMTBCDField;
    procedure qryCERTIFICADO_CONFIGBeforeOpen(DataSet: TDataSet);
    procedure tabMDFENewRecord(DataSet: TDataSet);
    procedure tabMDFEBeforePost(DataSet: TDataSet);
    procedure tabMDFEBeforeOpen(DataSet: TDataSet);
    procedure ACBrMDFeStatusChange(Sender: TObject);
    procedure qryMDFEBeforeOpen(DataSet: TDataSet);
    procedure qryMDFEAfterOpen(DataSet: TDataSet);
    procedure qryEMPRESABeforeOpen(DataSet: TDataSet);
    procedure tabMDFEAfterOpen(DataSet: TDataSet);
    procedure schMDFEAfterApplyUpdate(Sender: TObject);
    procedure tabMDFE_SEGUROSBeforePost(DataSet: TDataSet);
    procedure tabMDFE_CONDUTORESBeforePost(DataSet: TDataSet);
    procedure tabMDFE_LACREBeforePost(DataSet: TDataSet);
    procedure tabMDFE_UF_PERCURSOBeforePost(DataSet: TDataSet);
    procedure tabMDFE_LOCAL_CARREGAMENTOBeforePost(DataSet: TDataSet);
    procedure tabMDFE_CTENewRecord(DataSet: TDataSet);
    procedure tabMDFE_SEGUROS_AVERBACAOAfterPost(DataSet: TDataSet);
    procedure tabMDFE_NFENewRecord(DataSet: TDataSet);
    procedure tabMDFE_VALEPEDAGIONewRecord(DataSet: TDataSet);
    procedure tabMDFE_CIOTBeforePost(DataSet: TDataSet);
    procedure tabMDFE_NFE_UNIDTRANS_LACREUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow;
      ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
    procedure tabMDFE_REBOQUEBeforePost(DataSet: TDataSet);
    procedure tabMDFE_CONTRATANTESBeforePost(DataSet: TDataSet);
    procedure tabMDFE_VALEPEDAGIOBeforePost(DataSet: TDataSet);
    procedure tabMDFE_LOCAL_DESCARREGAMENTOBeforePost(DataSet: TDataSet);
    procedure tabMDFE_CTEBeforePost(DataSet: TDataSet);
    procedure tabMDFE_CTE_UNIDTRANSBeforePost(DataSet: TDataSet);
    procedure tabMDFE_CTE_UNIDTRANS_LACREBeforePost(DataSet: TDataSet);
    procedure tabMDFE_CTE_CARGTRANSBeforePost(DataSet: TDataSet);
    procedure tabMDFE_CTE_CARGTRANS_LACREBeforePost(DataSet: TDataSet);
    procedure tabMDFE_SEGUROS_AVERBACAOBeforePost(DataSet: TDataSet);
    procedure tabMDFE_AUT_DOWNLOADBeforePost(DataSet: TDataSet);
    procedure tabMDFEUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest;
      var AAction: TFDErrorAction);
    procedure tabMDFE_LOCAL_CARREGAMENTOUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow;
      ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
    procedure tabMDFE_UF_PERCURSOUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow;
      ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
    procedure tabMDFE_CONDUTORESUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow;
      ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
    procedure tabMDFE_REBOQUEUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow;
      ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
    procedure tabMDFE_CIOTUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest;
      var AAction: TFDErrorAction);
    procedure tabMDFE_CONTRATANTESUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow;
      ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
    procedure tabMDFE_VALEPEDAGIOUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow;
      ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
    procedure tabMDFE_LOCAL_DESCARREGAMENTOUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow;
      ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
    procedure tabMDFE_CTEUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest;
      var AAction: TFDErrorAction);
    procedure tabMDFE_CTE_UNIDTRANSUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow;
      ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
    procedure tabMDFE_CTE_UNIDTRANS_LACREUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow;
      ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
    procedure tabMDFE_CTE_CARGTRANSUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow;
      ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
    procedure tabMDFE_CTE_CARGTRANS_LACREUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow;
      ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
    procedure tabMDFE_SEGUROSUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow;
      ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
    procedure tabMDFE_SEGUROS_AVERBACAOUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow;
      ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
    procedure tabMDFE_LACREUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest;
      var AAction: TFDErrorAction);
    procedure tabMDFE_AUT_DOWNLOADUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow;
      ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
    procedure tabMDFE_NFEUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest;
      var AAction: TFDErrorAction);
    procedure tabMDFE_NFE_UNIDTRANSUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow;
      ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
    procedure tabMDFE_NFE_CARGTRANSUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow;
      ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
    procedure tabMDFE_NFE_CARGTRANS_LACREUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow;
      ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
    procedure tabMDFE_NFEBeforePost(DataSet: TDataSet);
    procedure tabMDFE_AQUA_TERMINAL_CARREGBeforePost(DataSet: TDataSet);
    procedure tabMDFE_AQUA_TERMINAL_CARREGUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow;
      ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
    procedure tabMDFE_AQUA_TERMINAL_DESCARREGBeforePost(DataSet: TDataSet);
    procedure tabMDFE_AQUA_TERMINAL_DESCARREGUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow;
      ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
    procedure tabMDFE_AQUA_COMBOIOBeforePost(DataSet: TDataSet);
    procedure tabMDFE_AQUA_COMBOIOUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow;
      ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
    procedure tabMDFE_AQUA_UNID_CARGABeforePost(DataSet: TDataSet);
    procedure tabMDFE_AQUA_UNID_CARGAUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow;
      ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
    procedure tabMDFE_AQUA_UNID_TRANSBeforePost(DataSet: TDataSet);
    procedure tabMDFE_AQUA_UNID_TRANSUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow;
      ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
    procedure QryMotoristaBeforeOpen(DataSet: TDataSet);
    procedure QryVeiculoBeforeOpen(DataSet: TDataSet);

    procedure atualizarSSLLibsCombo;
  private
  public

    FTOperacao: TOperacao;
    procedure Configurar;
    procedure configurarCIOT;
    function SalvarEvento(vID, vID_SERIE, vNumeroLote: Integer; vDataHoraEvento: TDateTime;
      vJustificativa, vTipo: String): Boolean;
    function GerarMDFE(vID: Integer; vID_SERIE: Integer): String;
    procedure Enviar;
  end;

var
  dtmMDFE: TdtmMDFE;

const
  SQL_COUNT_NFE: String = ' SELECT                                 '#13 + '   COALESCE(COUNT(MDFE_NFE.ID_CHAVE),0) '#13 +
    ' FROM                                   '#13 + '   MDFE_NFE                             '#13 +
    ' WHERE                                  '#13 + '   1=1                                  '#13 +
    '   AND MDFE_NFE.ID_EMPRESA = %d         '#13 + '   AND MDFE_NFE.ID_MDFE    = %d         '#13 +
    '   AND MDFE_NFE.ID_SERIE   = %d         ';

  SQL_COUNT_CTE: String = ' SELECT                                 '#13 + '   COALESCE(COUNT(MDFE_CTE.ID_CHAVE),0) '#13 +
    ' FROM                                   '#13 + '   MDFE_CTE                             '#13 +
    ' WHERE                                  '#13 + '   1=1                                  '#13 +
    '   AND MDFE_CTE.ID_EMPRESA = %d         '#13 + '   AND MDFE_CTE.ID_MDFE    = %d         '#13 +
    '   AND MDFE_CTE.ID_SERIE   = %d         ';

implementation

uses
  udtmDefault, uclassEMPRESA, ufuncoes, uclassMDFE, pmdfeConversaoMDFe,
  ACBrDFeSSL, ufrmMensagemEspera, ACBrUtil.Strings, Vcl.Forms, Winapi.Windows,
  ACBrValidador;

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

function TdtmMDFE.SalvarEvento(vID, vID_SERIE, vNumeroLote: Integer; vDataHoraEvento: TDateTime;
  vJustificativa, vTipo: String): Boolean;
begin
  with ACBrMDFe.WebServices do
  begin
    updEvento.ParamByName('ID_EMPRESA').Value := oEmpresa.ID;
    updEvento.ParamByName('ID_MDFE').Value := vID;
    updEvento.ParamByName('ID_SERIE').Value := vID_SERIE;
    updEvento.ParamByName('ID_MDFE_EVENTO').Value := oMDFE.GetNEW_ID_MDFE_EVENTO(vID, vID_SERIE);
    updEvento.ParamByName('TIPO').Value := vTipo;
    updEvento.ParamByName('DTHR_EVENTO').Value := vDataHoraEvento;
    updEvento.ParamByName('LOTE').Value := vNumeroLote;
    updEvento.ParamByName('DTHR_PROTOCOLO').Value := EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.dhRegEvento;
    updEvento.ParamByName('NUMERO_PROTOCOLO').Value := EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nProt;
    updEvento.ParamByName('STATUS').Value := EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat;
    updEvento.ParamByName('MOTIVO').Value := EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo;
    updEvento.ParamByName('OBSERVACAO').Value := vJustificativa;
    updEvento.ParamByName('XML').Value := EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.XML;
    updEvento.ParamByName('SEQUENCIA').Value := oMDFE.GetNEW_ID_MDFE_EVENTO_SEQUENCIA(vID, vID_SERIE, vTipo);
    updEvento.Prepare;
    Result := updEvento.OpenOrExecute;
  end;
end;

procedure TdtmMDFE.schMDFEAfterApplyUpdate(Sender: TObject);
begin
  tabMDFE.CommitUpdates;
  tabMDFE_LOCAL_CARREGAMENTO.CommitUpdates;
  tabMDFE_UF_PERCURSO.CommitUpdates;
  tabMDFE_CONDUTORES.CommitUpdates;
  tabMDFE_SEGUROS.CommitUpdates;
  tabMDFE_LACRE.CommitUpdates;
  tabMDFE_REBOQUE.CommitUpdates;
  tabMDFE_CIOT.CommitUpdates;
  tabMDFE_CONTRATANTES.CommitUpdates;
  tabMDFE_VALEPEDAGIO.CommitUpdates;
  tabMDFE_LOCAL_DESCARREGAMENTO.CommitUpdates;
  tabMDFE_CTE.CommitUpdates;
  tabMDFE_CTE_UNIDTRANS.CommitUpdates;
  tabMDFE_CTE_UNIDTRANS_LACRE.CommitUpdates;
  tabMDFE_SEGUROS_AVERBACAO.CommitUpdates;
  tabMDFE_CTE_CARGTRANS.CommitUpdates;
  tabMDFE_CTE_CARGTRANS_LACRE.CommitUpdates;
  tabMDFE_AUT_DOWNLOAD.CommitUpdates;

  tabMDFE_NFE.CommitUpdates;
  tabMDFE_NFE_UNIDTRANS.CommitUpdates;
  tabMDFE_NFE_UNIDTRANS_LACRE.CommitUpdates;
  tabMDFE_NFE_CARGTRANS.CommitUpdates;
end;

procedure TdtmMDFE.ACBrMDFeStatusChange(Sender: TObject);
var
  Ambiente: String;
  Mensagem: String;
begin
  case ACBrMDFe.Configuracoes.WebServices.Ambiente of
    taProducao:
      Ambiente := 'Ambiente de Produção';
    taHomologacao:
      Ambiente := 'Ambiente de Homologação';
  end;

  Mensagem := '';
  case ACBrMDFe.Status of
    stMDFeIdle:
      FecharEspera;
    stMDFeStatusServico:
      Mensagem := Ambiente + #13 + 'Verificando Status do servico...';
    stMDFeRecepcao:
      Mensagem := Ambiente + #13 + 'Enviando dados da MDF-e...';
    stMDFeRetRecepcao:
      Mensagem := Ambiente + #13 + 'Recebendo dados da MDF-e...';
    stMDFeConsulta:
      Mensagem := Ambiente + #13 + 'Consultando MDF-e...';
    stMDFeRecibo:
      Mensagem := Ambiente + #13 + 'Consultando recibo de lote...';
    stMDFeEmail:
      Mensagem := Ambiente + #13 + 'Enviando Manifesto Eletrônico por e-mail...';
    stMDFeEvento:
      Mensagem := Ambiente + #13 + 'Enviando evento...';
  end;

  if Mensagem <> '' then
    AbrirEspera(Self, Mensagem);
end;

procedure TdtmMDFE.Configurar;
var
  PathApp, PathArqMDFe, PathPDF, PathArquivos, PathSchemas, PathTmp: string;
begin
  // caminhos de pastas gerais
  PathApp := ExtractFilePath(ParamStr(0));
  PathSchemas := IncludeTrailingPathDelimiter(PathApp + 'SCHEMAS\MDFE');

  // caminhos de pastas especificos por cnpj
  PathArqMDFe := IncludeTrailingPathDelimiter(PathApp + 'DOCUMENTOS');
  PathPDF := IncludeTrailingPathDelimiter(PathArqMDFe + 'PDF');
  PathArquivos := IncludeTrailingPathDelimiter(PathArqMDFe + 'ARQUIVOS');
  PathTmp := IncludeTrailingPathDelimiter(PathArqMDFe + 'TMP');

  if not DirectoryExists(PathPDF) then
    ForceDirectories(PathPDF);

  if not DirectoryExists(PathArquivos) then
    ForceDirectories(PathArquivos);

  if not DirectoryExists(PathTmp) then
    ForceDirectories(PathTmp);

  // configuração do ACBRNFE
  ACBrMDFe.Configuracoes.Arquivos.AdicionarLiteral := True;
  ACBrMDFe.Configuracoes.Arquivos.EmissaoPathMDFe := True;
  ACBrMDFe.Configuracoes.Arquivos.SepararPorMes := True;
  ACBrMDFe.Configuracoes.Arquivos.SepararPorCNPJ := True;
  ACBrMDFe.Configuracoes.Arquivos.SepararPorModelo := True;
  ACBrMDFe.Configuracoes.Arquivos.Salvar := True;
  ACBrMDFe.Configuracoes.Arquivos.PathMDFe := PathArquivos;
  ACBrMDFe.Configuracoes.Arquivos.PathEvento := PathArquivos;
  ACBrMDFe.Configuracoes.Arquivos.PathSalvar := PathTmp;
  ACBrMDFe.Configuracoes.Arquivos.PathSchemas := PathSchemas;

  // configurações gerais
  ACBrMDFe.Configuracoes.Geral.FormaEmissao := teNormal;
  ACBrMDFe.Configuracoes.Geral.Salvar := True;
  ACBrMDFe.Configuracoes.Geral.VersaoDF := ve300;

  ACBrMDFe.Configuracoes.Geral.SSLLib := libWinCrypt;
  ACBrMDFe.Configuracoes.Geral.SSLXmlSignLib := xsLibXml2;

  ACBrMDFe.Configuracoes.Geral.ExibirErroSchema := True;
  ACBrMDFe.Configuracoes.Geral.FormatoAlerta := '[ %TAGNIVEL%%TAG% ] %DESCRICAO% - %MSG%';

  // certificado
  try

    qryCERTIFICADO_CONFIG.Close;
    qryCERTIFICADO_CONFIG.Open;
    case qryCERTIFICADO_CONFIGID_SSL_TYPE.AsInteger of
      0:
        ACBrMDFe.SSL.SSLType := LT_all;
      1:
        ACBrMDFe.SSL.SSLType := LT_SSLv2;
      2:
        ACBrMDFe.SSL.SSLType := LT_SSLv3;
      3:
        ACBrMDFe.SSL.SSLType := LT_TLSv1;
      4:
        ACBrMDFe.SSL.SSLType := LT_TLSv1_1;
      5:
        ACBrMDFe.SSL.SSLType := LT_TLSv1_2;
      6:
        ACBrMDFe.SSL.SSLType := LT_SSHv2;
    end;

    ACBrMDFe.Configuracoes.Certificados.NumeroSerie := qryCERTIFICADO_CONFIGCERTIFICADO_NUMERO.AsString.Trim;
    ACBrMDFe.Configuracoes.Certificados.Senha := qryCERTIFICADO_CONFIGCERTIFICADO_SENHA.AsString.Trim;

    ACBrMDFe.Configuracoes.WebServices.TimeOut := 18000; // tempo limite de espera pelo webservice
    ACBrMDFe.Configuracoes.WebServices.AguardarConsultaRet := 5000;
    // tempo padrão que vai aguardar para consultar após enviar a NF-e
    ACBrMDFe.Configuracoes.WebServices.IntervaloTentativas := 3000; // Intervalo entre as tentativas de envio
    ACBrMDFe.Configuracoes.WebServices.Tentativas := 10; // quantidade de tentativas de envio
    ACBrMDFe.Configuracoes.WebServices.AjustaAguardaConsultaRet := True;
    // ajustar "AguardarConsultaRet" com o valor retornado pelo webservice
    ACBrMDFe.Configuracoes.WebServices.Salvar := True;

    ACBrMDFe.Configuracoes.WebServices.UF := qryCERTIFICADO_CONFIGWS_UF_DESTINO.AsString.Trim;
    ACBrMDFe.Configuracoes.WebServices.Visualizar := False;

    case StrToIntDef(qryCERTIFICADO_CONFIGID_TIPO_AMBIENTE.AsString, 1) of
      0:
        ACBrMDFe.Configuracoes.WebServices.Ambiente := taProducao;
      1:
        ACBrMDFe.Configuracoes.WebServices.Ambiente := taHomologacao
    end;

    // proxy de acesso
    ACBrMDFe.Configuracoes.WebServices.ProxyHost := qryCERTIFICADO_CONFIGWS_PROXY_HOST.AsString.Trim;
    ACBrMDFe.Configuracoes.WebServices.ProxyPort := qryCERTIFICADO_CONFIGWS_PROXY_PORTA.AsString.Trim;
    ACBrMDFe.Configuracoes.WebServices.ProxyUser := qryCERTIFICADO_CONFIGWS_PROXY_USUARIO.AsString.Trim;
    ACBrMDFe.Configuracoes.WebServices.ProxyPass := qryCERTIFICADO_CONFIGWS_PROXY_SENHA.AsString.Trim;

    // Email
    ACBrMail.IsHTML := False;
    { todo: terminar cadastro de configuração adicionar e-mail do emitente }
    // ACBrMail.From := qryCTeOSConfigEMAIL.AsString.Trim;
    // todo
    // ACBrMail1.FromName := dtmContainer.Empresa.RazaoSocial;
    ACBrMail.Host := qryCERTIFICADO_CONFIGEMAIL_SERVIDOR.AsString.Trim;
    ACBrMail.Port := qryCERTIFICADO_CONFIGEMAIL_PORTA.AsString.Trim;
    ACBrMail.Username := qryCERTIFICADO_CONFIGEMAIL_USUARIO.AsString.Trim;
    ACBrMail.Password := qryCERTIFICADO_CONFIGEMAIL_SENHA.AsString.Trim;
    ACBrMail.SetSSL := qryCERTIFICADO_CONFIGEMAIL_SENHA_SEGURA.AsString.Trim = 'S';
    ACBrMail.SetTLS := qryCERTIFICADO_CONFIGEMAIL_SENHA_TLS.AsString.Trim = 'S';

    // DANFE ( GERAL )
    ACBrMDFe.DAMDFE.PathPDF := PathPDF;
    ACBrMDFe.DAMDFE.Logo := qryCERTIFICADO_CONFIGLOGOMARCA.AsString;
  finally
    qryCERTIFICADO_CONFIG.Close;
  end;
end;

procedure TdtmMDFE.Enviar;
var
  vNumLote, xMotivo: String;
  cStat: Integer;
  Status: Integer;
  ChaveMDfe: String;
begin
  ACBrMDFe.Manifestos.Assinar;

  try
    ACBrMDFe.Manifestos.Validar;
  except
    on E: Exception do
    begin
      raise Exception.Create('Erro ao enviar !  cStat: ' + sLineBreak + IntToStr(dtmMDFE.ACBrMDFe.WebServices.Retorno.cStat) +
        ';  ' + sLineBreak + E.Message);
    end;
  end;

  // salva chave e xml antes de enviar
  if qryMDFEXML_CHAVE.AsString = '' then
    ChaveMDfe := Copy(ACBrMDFe.Manifestos.Items[0].MDFe.infMDFe.ID, 5, 44)
  else
    ChaveMDfe := qryMDFEXML_CHAVE.AsString;
  updChave.ParamByName('XML_CHAVE').Value := ChaveMDfe; // Copy(ACBrMDFE.Manifestos.Items[0].MDFe.infMDFe.Id,5,44);
  updChave.ParamByName('XML_STRING').Value := ACBrMDFe.Manifestos.Items[0].XML;
  updChave.ParamByName('ID_EMPRESA').Value := qryMDFEID_EMPRESA.AsInteger;
  updChave.ParamByName('ID_MDFE').Value := qryMDFEID_MDFE.AsInteger;
  updChave.ParamByName('ID_SERIE').Value := qryMDFEID_SERIE.AsInteger;
  updChave.Prepare;
  updChave.ExecSQL;

  dtmDefault.cnx_BD.CommitRetaining;

  try

    vNumLote := FormatDateTime('yyyymmddhhmmss', Now);
    // ACBrMDFE.Enviar(vNumLote);
    ACBrMDFe.Enviar(vNumLote, True, True);

    cStat := ACBrMDFe.Manifestos.Items[0].MDFe.procMDFe.cStat;
    xMotivo := ACBrMDFe.Manifestos.Items[0].MDFe.procMDFe.xMotivo;

    case cStat of
      100: // autorizado
        begin
          updEnviado.ParamByName('ID_SITUACAO').AsString := 'E';
          updEnviado.ParamByName('ID_MDFE').AsInteger := qryMDFEID_MDFE.AsInteger;
          updEnviado.ParamByName('ID_SERIE').AsInteger := qryMDFEID_SERIE.AsInteger;
          updEnviado.ParamByName('ID_EMPRESA').AsInteger := qryMDFEID_EMPRESA.AsInteger;
          updEnviado.ParamByName('XML_CHAVE').AsAnsiString := dtmMDFE.ACBrMDFe.Manifestos.Items[0].MDFe.procMDFe.chDFe;
          updEnviado.ParamByName('XML_PROTOCOLO').AsString := dtmMDFE.ACBrMDFe.Manifestos.Items[0].MDFe.procMDFe.nProt;
          updEnviado.ParamByName('XML_STRING_PROTOCOLO').AsString := dtmMDFE.ACBrMDFe.Manifestos.Items[0].XMLAssinado;
          updEnviado.ParamByName('XML_PROCOCOLO_DATAHORA').AsDateTime := dtmMDFE.ACBrMDFe.Manifestos.Items[0]
            .MDFe.procMDFe.dhRecbto;

          updEnviado.ParamByName('XML_XMOTIVO').AsAnsiString := ACBrMDFe.Manifestos.Items[0].MDFe.procMDFe.xMotivo;
          updEnviado.ParamByName('XML_STATUS_CODIGO').AsInteger := dtmMDFE.ACBrMDFe.WebServices.Consulta.cStat;
          updEnviado.Prepare;
          updEnviado.ExecSQL;

          dtmDefault.cnx_BD.CommitRetaining;

          Application.MessageBox('MDF-e enviado com sucesso!', 'Aviso!', MB_ICONEXCLAMATION);
        end
    else
      begin
        raise Exception.CreateFmt('Código de retorno não esperado: %d - %s', [cStat, xMotivo]);
      end;
    end;
  except
    on E: Exception do
    begin
      ShowMessage('Erro ' + E.Message);
      cStat := dtmMDFE.ACBrMDFe.WebServices.Retorno.cStat;
      case cStat of
        539, 228, 204, 205:
          begin
            // dtmMDFE.ACBrMDFe.Manifestos.Clear;
            dtmMDFE.ACBrMDFe.WebServices.Consulta.MDFeChave := ChaveMDfe;
            dtmMDFE.ACBrMDFe.WebServices.Consulta.Executar;
            if (dtmMDFE.ACBrMDFe.WebServices.Consulta.cStat = 100) or (dtmMDFE.ACBrMDFe.WebServices.Consulta.cStat = 132) then
            begin
              Status := dtmMDFE.ACBrMDFe.WebServices.Consulta.cStat;
              ChaveMDfe := dtmMDFE.ACBrMDFe.WebServices.Consulta.MDFeChave;
              dtmMDFE.updEnviado.ParamByName('ID_MDFE').AsInteger := qryMDFEID_MDFE.AsInteger;
              dtmMDFE.updEnviado.ParamByName('ID_SERIE').AsInteger := qryMDFEID_SERIE.AsInteger;
              dtmMDFE.updEnviado.ParamByName('ID_EMPRESA').AsInteger := oEmpresa.ID;
              // dtmMDFE.updEnviado.ParamByName('XML_CHAVE').AsAnsiString := dtmMDFE.ACBrMDFe.WebServices.Consulta.MDFeChave	;
              dtmMDFE.updEnviado.ParamByName('XML_CHAVE').AsAnsiString := ChaveMDfe;
              // dtmMDFE.ACBrMDFe.WebServices.Consulta.MDFeChave	;

              dtmMDFE.updEnviado.ParamByName('XML_PROTOCOLO').AsString := dtmMDFE.ACBrMDFe.WebServices.Consulta.Protocolo;
              /// dtmMDFE.ACBrMDFe.Manifestos.Items[0].MDFe.procMDFe.nProt;

              dtmMDFE.updEnviado.ParamByName('XML_PROCOCOLO_DATAHORA').AsDateTime :=
                dtmMDFE.ACBrMDFe.WebServices.Consulta.dhRecbto;
              dtmMDFE.updEnviado.ParamByName('ID_SITUACAO').AsString := 'E';
              dtmMDFE.updEnviado.ParamByName('XML_XMOTIVO').AsAnsiString := '100 - MDF-e autorizado.';
              dtmMDFE.updEnviado.ParamByName('XML_STATUS_CODIGO').AsInteger := dtmMDFE.ACBrMDFe.WebServices.Consulta.cStat;

              dtmMDFE.ACBrMDFe.WebServices.Consulta.MDFeChave := ChaveMDfe;
              dtmMDFE.ACBrMDFe.Consultar;
              dtmMDFE.ACBrMDFe.Manifestos.Items[0].GravarXml;
              dtmMDFE.updEnviado.ParamByName('XML_STRING_PROTOCOLO').AsString := dtmMDFE.ACBrMDFe.Manifestos.Items[0].XMLAssinado;
              dtmMDFE.updEnviado.Prepare;
              dtmMDFE.updEnviado.ExecSQL;

              dtmDefault.cnx_BD.CommitRetaining;

              AtualizarTabela(qryMDFE, qryMDFEID_MDFE.FieldName, qryMDFEID_MDFE.AsString);

              Application.MessageBox(PWideChar('MDF-e autorizado para uso.'#13#13'Chave de acesso: '#13 + ChaveMDfe),
                'Autorizado', MB_ICONINFORMATION + MB_OK);
            end;
          end;
      end;

      { begin
        dtmDefault.cnx_BD.RollbackRetaining;

        Application.MessageBox(
        PChar(
        'Erro ao enviar !  cStat: ' +
        IntToStr(dtmMDFE.ACBrMDFe.WebServices.Retorno.cStat) +
        ';  ' + E.Message
        ),'Aviso!!',MB_ICONEXCLAMATION );
        end; }
    end;
  end;
end;

function TdtmMDFE.GerarMDFE(vID, vID_SERIE: Integer): String;
var
  vQtd: Integer;
begin
  qryMDFE.Close;
  qryMDFE.ParamByName('ID_MDFE').AsInteger := vID;
  qryMDFE.ParamByName('ID_SERIE').AsInteger := vID_SERIE;
  qryMDFE.Open;

  if qryMDFE.IsEmpty then
    raise Exception.Create('MDF-e não encontrado na base de dados, por favor tente novamente!');

  with ACBrMDFe.Manifestos.ADD.MDFe do
  begin
    //
    // Dados de Identificação do MDF-e
    //
    Ide.cUF := qryEMPRESAUF_IBGE.AsInteger;

    // TpcnTipoAmbiente = (taProducao, taHomologacao);
    case qryCERTIFICADO_CONFIGID_TIPO_AMBIENTE.AsInteger of
      0:
        Ide.tpAmb := taProducao;
      1:
        Ide.tpAmb := taHomologacao;
    end;

    // TMDFeTpEmitente = ( teTransportadora, teTranspCargaPropria );
    case qryMDFEID_TIPO_EMITENTE.AsInteger of
      0:
        Ide.tpEmit := teTransportadora;
      1:
        Ide.tpEmit := teTranspCargaPropria;
    end;

    Ide.modelo := '58';
    Ide.serie := qryMDFEID_SERIE.AsInteger;
    Ide.nMDF := qryMDFEID_MDFE.AsInteger;
    Ide.cMDF := qryMDFEID_MDFE.AsInteger + 2;
    Ide.dhEmi := qryMDFEDATAHORA_EMISSAO.AsDateTime;

    case qryMDFEID_MODALIDADE.AsInteger of
      0:
        Ide.modal := moRodoviario;
      1:
        Ide.modal := moAereo;
      2:
        Ide.modal := moAquaviario;
      3:
        Ide.modal := moFerroviario;
    end;

    case qryMDFEID_FORMA_EMISSAO.AsInteger of
      0:
        Ide.tpEmis := teNormal;
      1:
        Ide.tpEmis := teContingencia;
    end;

    case StrToIntDef(qryMDFEID_TIPO_TRANSPORTADOR.AsString, 9) of
      0:
        Ide.tpTransp := ttETC;
      1:
        Ide.tpTransp := ttTAC;
      2:
        Ide.tpTransp := ttCTC;
      9:
        Ide.tpTransp := ttNenhum;
    end;

    // TpcnProcessoEmissao = (peAplicativoContribuinte, peAvulsaFisco, peAvulsaContribuinte, peContribuinteAplicativoFisco);
    Ide.procEmi := peAplicativoContribuinte;
    Ide.verProc := '1.0';
    Ide.UFIni := qryMDFEID_UF_INICIAL.AsString;
    Ide.UFFim := qryMDFEID_UF_FINAL.AsString;

    // responsável técnico pelo sistema
    infRespTec.CNPJ := '';
    infRespTec.xContato := '';
    infRespTec.email := '';
    infRespTec.fone := '';
    infRespTec.CNPJ := '';

    // estes dois ainda não são obrigatórios pois não existe cadastro centralizado
    infRespTec.idCSRT := 0;
    infRespTec.hashCSRT := '';

    qryMDFE_UF_PERCURSO.First;
    while not qryMDFE_UF_PERCURSO.Eof do
    begin
      with Ide.infPercurso.New do
      begin
        UFPer := qryMDFE_UF_PERCURSOID_UF.AsString.Trim;
      end;

      qryMDFE_UF_PERCURSO.Next;
    end;

    qryMDFE_LOCAL_CARREGAMENTO.First;
    while not qryMDFE_LOCAL_CARREGAMENTO.Eof do
    begin
      with Ide.infMunCarrega.New do
      begin
        cMunCarrega := qryMDFE_LOCAL_CARREGAMENTOID_MUNICIPIO.AsInteger;
        xMunCarrega := qryMDFE_LOCAL_CARREGAMENTOMUNICIPIO.AsString;
      end;

      qryMDFE_LOCAL_CARREGAMENTO.Next;
    end;

    // Dados do Emitente
    Emit.CNPJCPF := OnlyNumber(qryEMPRESACNPJ.AsString.Trim);
    Emit.IE := OnlyNumber(qryEMPRESAIE_ESTADUAL.AsString.Trim);
    Emit.xNome := qryEMPRESARAZAOSOCIAL.AsString.Trim;
    Emit.xFant := qryEMPRESANOMEFANTASIA.AsString.Trim;
    Emit.EnderEmit.xLgr := qryEMPRESAENDERECO.AsString.Trim;
    Emit.EnderEmit.nro := qryEMPRESANUMERO.AsString.Trim;
    Emit.EnderEmit.xCpl := qryEMPRESACOMPLEMENTO.AsString.Trim;
    Emit.EnderEmit.xBairro := qryEMPRESABAIRRO.AsString.Trim;
    Emit.EnderEmit.cMun := qryEMPRESAID_CIDADES_IBGE.AsInteger;
    Emit.EnderEmit.xMun := qryEMPRESACIDADE.AsString.Trim;
    Emit.EnderEmit.CEP := StrToIntDef(OnlyNumber(qryEMPRESACEP.AsString.Trim), 0);
    Emit.EnderEmit.UF := qryEMPRESAID_CIDADES_UF.AsString;
    Emit.EnderEmit.fone := OnlyNumber(qryEMPRESATELEFONE.AsString);
    Emit.EnderEmit.email := qryEMPRESAEMAIL.AsString;

    rodo.RNTRC := qryMDFEVEICULO_RNTRC.AsString.Trim;

    qryMDFE_CIOT.First;
    while not qryMDFE_CIOT.Eof do
    begin
      with rodo.infANTT.infCIOT.New do
      begin
        CIOT := qryMDFE_CIOTCIOT.AsString;
        CNPJCPF := OnlyNumber(qryMDFE_CIOTCNPJ.AsString);
      end;

      qryMDFE_CIOT.Next;
    end;

    qryMDFE_CONTRATANTES.First;
    while not qryMDFE_CONTRATANTES.Eof do
    begin
      with rodo.infANTT.infContratante.New do
      begin
        CNPJCPF := OnlyNumber(qryMDFE_CONTRATANTESCNPJ.AsString.Trim);
      end;

      qryMDFE_CONTRATANTES.Next;
    end;

    case Ide.modal of
      moRodoviario:
        begin
          rodo.veicTracao.cInt := qryMDFEVEICULO_CODIGO_INTERNO.AsString;
          rodo.veicTracao.placa := qryMDFEVEICULO_PLACA.AsString;
          rodo.veicTracao.RENAVAM := qryMDFEVEICULO_RENAVAN.AsString;
          rodo.veicTracao.tara := qryMDFEVEICULO_TARA.AsInteger;
          rodo.veicTracao.capKG := qryMDFEVEICULO_CAPACIDADE_KG.AsInteger;
          rodo.veicTracao.capM3 := qryMDFEVEICULO_CAPACIDADE_M3.AsInteger;

          case qryMDFEVEICULO_TIPO_RODADO.AsInteger of
            0:
              rodo.veicTracao.tpRod := TpcteTipoRodado.trNaoAplicavel;
            1:
              rodo.veicTracao.tpRod := TpcteTipoRodado.trTruck;
            2:
              rodo.veicTracao.tpRod := TpcteTipoRodado.trToco;
            3:
              rodo.veicTracao.tpRod := trCavaloMecanico;
            4:
              rodo.veicTracao.tpRod := trVAN;
            5:
              rodo.veicTracao.tpRod := trUtilitario;
            6:
              rodo.veicTracao.tpRod := trOutros;
          end;

          case qryMDFEVEICULO_TIPO_CARROCERIA.AsInteger of
            0:
              rodo.veicTracao.tpCar := TpcteTipoCarroceria.tcNaoAplicavel;
            1:
              rodo.veicTracao.tpCar := TpcteTipoCarroceria.tcAberta;
            2:
              rodo.veicTracao.tpCar := tcFechada;
            3:
              rodo.veicTracao.tpCar := tcGraneleira;
            4:
              rodo.veicTracao.tpCar := TpcteTipoCarroceria.tcPortaContainer;
            5:
              rodo.veicTracao.tpCar := TpcteTipoCarroceria.tcSider;
          end;

          rodo.veicTracao.UF := qryMDFEVEICULO_UF.AsString.Trim;

          qryMDFE_CONDUTORES.First;
          while not qryMDFE_CONDUTORES.Eof do
          begin
            with rodo.veicTracao.condutor.New do
            begin
              xNome := qryMDFE_CONDUTORESNOME.AsString.Trim;
              CPF := OnlyNumber(qryMDFE_CONDUTORESID_CPF.AsString.Trim);
            end;

            qryMDFE_CONDUTORES.Next;
          end;

          qryMDFE_REBOQUE.First;
          while not qryMDFE_REBOQUE.Eof do
          begin
            with rodo.veicReboque.New do
            begin
              cInt := qryMDFE_REBOQUEINTT.AsString.Trim;
              placa := qryMDFE_REBOQUEPLACA.AsString.Trim;
              RENAVAM := qryMDFE_REBOQUERENAVAN.AsString.Trim;
              tara := qryMDFE_REBOQUETARA.AsInteger;
              capKG := qryMDFE_REBOQUECAPKG.AsInteger;
              capM3 := qryMDFE_REBOQUECAPM3.AsInteger;

              case qryMDFE_REBOQUEID_TIPO_RODADO.AsInteger of
                0:
                  tpCar := TpcteTipoCarroceria.tcNaoAplicavel;
                1:
                  tpCar := TpcteTipoCarroceria.tcAberta;
                2:
                  tpCar := tcFechada;
                3:
                  tpCar := tcGraneleira;
                4:
                  tpCar := TpcteTipoCarroceria.tcPortaContainer;
                5:
                  tpCar := TpcteTipoCarroceria.tcSider;
              end;

              UF := qryMDFE_REBOQUEUF.AsString.Trim;
            end;

            qryMDFE_REBOQUE.Next;
          end;

          qryMDFE_VALEPEDAGIO.First;
          while not qryMDFE_VALEPEDAGIO.Eof do
          begin
            with rodo.valePed.disp.New do
            begin
              CNPJForn := OnlyNumber(qryMDFE_VALEPEDAGIOCNPJFORN.AsString.Trim);
              CNPJPg := OnlyNumber(qryMDFE_VALEPEDAGIOCNPJPG.AsString.Trim);
              nCompra := OnlyNumber(qryMDFE_VALEPEDAGIONCOMPRA.AsString.Trim);
              if StrToCurrDef(qryMDFE_VALEPEDAGIONCOMPRA.AsString, 0.00) > 0.00 then
                vValePed := qryMDFE_VALEPEDAGIONCOMPRA.AsCurrency;
            end;

            qryMDFE_VALEPEDAGIO.Next
          end;
        end;
      moAereo:
        ;
      moAquaviario:
        begin
          aquav.CNPJAgeNav := OnlyNumber(qryMDFEAQUA_CNPJ.AsString.Trim);
          aquav.irin := 'Z1';
          aquav.tpEmb := qryMDFEAQUA_EMBARCACAO_TIPO.AsString.Trim;
          aquav.cEmbar := qryMDFEAQUA_EMBARCACAO_CODIGO.AsString.Trim;
          aquav.xEmbar := qryMDFEAQUA_EMBARCACAO_NOME.AsString.Trim;
          aquav.nViagem := qryMDFEAQUA_EMBARCACAO_VIAGEM_NUMERO.AsString.Trim;
          aquav.cPrtEmb := qryMDFEAQUA_EMBARCACAO_CODPORTO_EMB.AsString.Trim;
          aquav.cPrtDest := qryMDFEAQUA_EMBARCACAO_CODPORTO_DEST.AsString.Trim;
          aquav.prtTrans := 'X1';
          aquav.tpNav := tnInterior; // tnInterior, tnCabotagem

          qryMDFE_AQUA_TERMINAL_CARREG.First;
          while not qryMDFE_AQUA_TERMINAL_CARREG.Eof do
          begin
            with aquav.infTermCarreg.New do
            begin
              cTermCarreg := qryMDFE_AQUA_TERMINAL_CARREGID_TERMINAL.AsString.Trim;
              xTermCarreg := qryMDFE_AQUA_TERMINAL_CARREGID_NOME.AsString.Trim;
            end;

            qryMDFE_AQUA_TERMINAL_CARREG.Next;
          end;

          qryMDFE_AQUA_TERMINAL_DESCARREG.First;
          while not qryMDFE_AQUA_TERMINAL_DESCARREG.Eof do
          begin
            with aquav.infTermDescarreg.New do
            begin
              cTermDescarreg := qryMDFE_AQUA_TERMINAL_DESCARREGID_TERMINAL.AsString.Trim;
              xTermDescarreg := qryMDFE_AQUA_TERMINAL_DESCARREGID_NOME.AsString.Trim;
            end;

            qryMDFE_AQUA_TERMINAL_DESCARREG.Next;
          end;

          qryMDFE_AQUA_COMBOIO.First;
          while not qryMDFE_AQUA_COMBOIO.Eof do
          begin
            with aquav.infEmbComb.New do
            begin
              cEmbComb := qryMDFE_AQUA_COMBOIOID_COMBOIO.AsString.Trim;
              xBalsa := qryMDFE_AQUA_COMBOIOBALSA.AsString.Trim;
            end;

            qryMDFE_AQUA_COMBOIO.Next;
          end;

          qryMDFE_AQUA_UNID_CARGA.First;
          while not qryMDFE_AQUA_UNID_CARGA.Eof do
          begin
            with aquav.infUnidCargaVazia.New do
            begin
              idUnidCargaVazia := qryMDFE_AQUA_UNID_CARGAID_IDENTIFICACAO.AsString.Trim;
              case qryMDFE_AQUA_UNID_CARGAID_UNIDADE.AsInteger of
                0:
                  tpUnidCargaVazia := ucContainer; // ucContainer, ucULD, ucPallet, ucOutros
                1:
                  tpUnidCargaVazia := ucULD;
                2:
                  tpUnidCargaVazia := ucPallet;
                3:
                  tpUnidCargaVazia := ucOutros;
              end;
            end;

            qryMDFE_AQUA_UNID_CARGA.Next;
          end;

          qryMDFE_AQUA_UNID_TRANS.First;
          while not qryMDFE_AQUA_UNID_TRANS.Eof do
          begin
            with aquav.infUnidTranspVazia.New do
            begin
              idUnidTranspVazia := qryMDFE_AQUA_UNID_TRANSID_IDENTIFICACAO.AsString;
              case qryMDFE_AQUA_UNID_TRANSID_UNIDADE.AsInteger of
                0:
                  tpUnidTranspVazia := utRodoTracao;
                // utRodoTracao, utRodoReboque, utNavio, utBalsa, utAeronave, utVagao, utOutros
                1:
                  tpUnidTranspVazia := utRodoReboque;
                2:
                  tpUnidTranspVazia := utNavio;
                3:
                  tpUnidTranspVazia := utBalsa;
                4:
                  tpUnidTranspVazia := utAeronave;
                5:
                  tpUnidTranspVazia := utVagao;
                6:
                  tpUnidTranspVazia := utOutros;
              end;
            end;

            qryMDFE_AQUA_UNID_TRANS.Next;
          end;
        end;
      moFerroviario:
        ;
    end;

    qryMDFE_LOCAL_DESCARREGAMENTO.First;
    while not qryMDFE_LOCAL_DESCARREGAMENTO.Eof do
    begin
      with infDoc.infMunDescarga.New do
      begin
        cMunDescarga := qryMDFE_LOCAL_DESCARREGAMENTOID_CIDADES_IBGE.AsInteger;
        xMunDescarga := qryMDFE_LOCAL_DESCARREGAMENTOCIDADE_NOME.AsString.Trim;

        case qryMDFEID_TIPO_EMITENTE.AsInteger of
          0:
            begin
              // CT-e
              while not qryMDFE_CTE.Eof do
              begin
                with infCTe.New do
                begin
                  chCTe := qryMDFE_CTEID_CHAVE.AsString.Trim;

                  while not qryMDFE_CTE_UNIDTRANS.Eof do
                  begin
                    with infUnidTransp.New do
                    begin
                      qtdRat := qryMDFE_CTE_UNIDTRANSQUANTIDADE.AsCurrency;

                      case qryMDFE_CTE_UNIDTRANSID_TIPO.AsInteger of
                        0:
                          tpUnidTransp := utRodoTracao;
                        1:
                          tpUnidTransp := utRodoReboque;
                        2:
                          tpUnidTransp := utNavio;
                        3:
                          tpUnidTransp := utBalsa;
                        4:
                          tpUnidTransp := utAeronave;
                        5:
                          tpUnidTransp := utVagao;
                        6:
                          tpUnidTransp := utOutros;
                      end;
                      idUnidTransp := qryMDFE_CTE_UNIDTRANSID_IDENTIFICACAO.AsString.Trim;

                      while not qryMDFE_CTE_UNIDTRANS_LACRE.Eof do
                      begin
                        with lacUnidTransp.New do
                        begin
                          nLacre := qryMDFE_CTE_UNIDTRANS_LACREID_LACRE.AsString.Trim;
                        end;

                        qryMDFE_CTE_UNIDTRANS_LACRE.Next;
                      end;

                      while not qryMDFE_CTE_CARGTRANS.Eof do
                      begin
                        with infUnidCarga.New do
                        begin
                          qtdRat := qryMDFE_CTE_CARGTRANSQUANTIDADE.AsCurrency;

                          case qryMDFE_CTE_CARGTRANSID_TIPO.AsInteger of
                            0:
                              tpUnidCarga := ucContainer;
                            1:
                              tpUnidCarga := ucULD;
                            2:
                              tpUnidCarga := ucPallet;
                            3:
                              tpUnidCarga := ucOutros;
                          end;

                          idUnidCarga := qryMDFE_CTE_CARGTRANSID_IDENTIFICADOR.AsString.Trim;

                          while not qryMDFE_CTE_CARGTRANS_LACRE.Eof do
                          begin
                            with lacUnidCarga.New do
                            begin
                              nLacre := qryMDFE_CTE_CARGTRANS_LACREID_LACRE.AsString.Trim;
                            end;

                            qryMDFE_CTE_CARGTRANS_LACRE.Next;
                          end;
                        end;

                        qryMDFE_CTE_CARGTRANS.Next;
                      end;
                    end;

                    qryMDFE_CTE_UNIDTRANS.Next;
                  end;
                end;

                qryMDFE_CTE.Next;
              end;
            end;
          1:
            begin
              // NF-e
              while not qryMDFE_NFE.Eof do
              begin
                with infNFe.New do
                begin
                  chNFe := qryMDFE_NFEID_CHAVE.AsString.Trim;

                  while not qryMDFE_NFE_UNIDTRANS.Eof do
                  begin
                    with infUnidTransp.New do
                    begin
                      qtdRat := qryMDFE_NFE_UNIDTRANSQUANTIDADE.AsCurrency;

                      case qryMDFE_NFE_UNIDTRANSID_TIPO.AsInteger of
                        0:
                          tpUnidTransp := utRodoTracao;
                        1:
                          tpUnidTransp := utRodoReboque;
                        2:
                          tpUnidTransp := utNavio;
                        3:
                          tpUnidTransp := utBalsa;
                        4:
                          tpUnidTransp := utAeronave;
                        5:
                          tpUnidTransp := utVagao;
                        6:
                          tpUnidTransp := utOutros;
                      end;
                      idUnidTransp := qryMDFE_NFE_UNIDTRANSID_IDENTIFICACAO.AsString.Trim;

                      while not qryMDFE_NFE_UNIDTRANS_LACRE.Eof do
                      begin
                        with lacUnidTransp.New do
                        begin
                          nLacre := qryMDFE_NFE_UNIDTRANS_LACREID_LACRE.AsString.Trim;
                        end;

                        qryMDFE_NFE_UNIDTRANS_LACRE.Next;
                      end;

                      while not qryMDFE_NFE_CARGTRANS.Eof do
                      begin
                        with infUnidCarga.New do
                        begin
                          qtdRat := qryMDFE_NFE_CARGTRANSQUANTIDADE.AsCurrency;

                          case qryMDFE_NFE_CARGTRANSID_TIPO.AsInteger of
                            0:
                              tpUnidCarga := ucContainer;
                            1:
                              tpUnidCarga := ucULD;
                            2:
                              tpUnidCarga := ucPallet;
                            3:
                              tpUnidCarga := ucOutros;
                          end;

                          idUnidCarga := qryMDFE_NFE_CARGTRANSID_IDENTIFICADOR.AsString.Trim;

                          while not qryMDFE_NFE_CARGTRANS_LACRE.Eof do
                          begin
                            with lacUnidCarga.New do
                            begin
                              nLacre := qryMDFE_NFE_CARGTRANS_LACREID_LACRE.AsString.Trim;
                            end;

                            qryMDFE_NFE_CARGTRANS_LACRE.Next;
                          end;
                        end;

                        qryMDFE_NFE_CARGTRANS.Next;
                      end;
                    end;

                    qryMDFE_NFE_UNIDTRANS.Next;
                  end;
                end;

                qryMDFE_NFE.Next;
              end;

            end;
        end;
      end;

      qryMDFE_LOCAL_DESCARREGAMENTO.Next;
    end;

    vQtd := dtmDefault.cnx_BD.ExecSQLScalar(Format(SQL_COUNT_NFE, [qryMDFEID_EMPRESA.AsInteger, qryMDFEID_MDFE.AsInteger,
      qryMDFEID_SERIE.AsInteger]));
    vQtd := dtmDefault.cnx_BD.ExecSQLScalar(Format(SQL_COUNT_CTE, [qryMDFEID_EMPRESA.AsInteger, qryMDFEID_MDFE.AsInteger,
      qryMDFEID_SERIE.AsInteger]));

    // TMDFeTpEmitente = ( teTransportadora, teTranspCargaPropria );
    case Ide.tpEmit of
      teTransportadora:
        begin
          tot.qNFe := 0;
          tot.qCTe := dtmDefault.cnx_BD.ExecSQLScalar
            (Format(SQL_COUNT_CTE, [qryMDFEID_EMPRESA.AsInteger, qryMDFEID_MDFE.AsInteger, qryMDFEID_SERIE.AsInteger]));
        end;
      teTranspCargaPropria:
        begin
          tot.qNFe := dtmDefault.cnx_BD.ExecSQLScalar
            (Format(SQL_COUNT_NFE, [qryMDFEID_EMPRESA.AsInteger, qryMDFEID_MDFE.AsInteger, qryMDFEID_SERIE.AsInteger]));
          tot.qCTe := 0;
        end;
    end;

    tot.vCarga := qryMDFETOTF_VLR_TOT_MERCADORIA.AsCurrency;
    tot.qCarga := qryMDFETOTF_PES_BRUTO.AsFloat;

    case qryMDFETOTF_COD_UNIDADE.AsInteger + 1 of
      1:
        tot.cUnid := uKG;
      2:
        tot.cUnid := uTON;
    else
      raise Exception.Create('Erro, unidade de medida inválida para o MDF-e, permitido somente KG ou TON')
    end;

    qryMDFE_LACRE.First;
    while not qryMDFE_LACRE.Eof do
    begin
      with lacres.New do
      begin
        nLacre := qryMDFE_LACRELACRE.AsString.Trim;
      end;

      qryMDFE_LACRE.Next;
    end;

    qryMDFE_SEGUROS.First;
    while not qryMDFE_SEGUROS.Eof do
    begin
      with seg.New do
      begin
        case qryMDFE_SEGUROSID_RESPONSAVEL.AsInteger of
          0:
            respSeg := rsEmitente;
          1:
            respSeg := rsTomadorServico;
        end;

        CNPJCPF := OnlyNumber(qryMDFE_SEGUROSID_CNPJCPF.AsString);
        xSeg := qryMDFE_SEGUROSNOME.AsString.Trim;
        CNPJ := OnlyNumber(qryMDFE_SEGUROSCNPJ.AsString);
        nApol := qryMDFE_SEGUROSAPOLICE.AsString.Trim;

        while not qryMDFE_SEGUROS_AVERBACAO.Eof do
        begin
          with aver.New do
          begin
            nAver := qryMDFE_SEGUROS_AVERBACAONAVER.AsString.Trim;
          end;

          qryMDFE_SEGUROS_AVERBACAO.Next;
        end;
      end;

      qryMDFE_SEGUROS.Next;
    end;

    infAdic.infCpl := qryMDFEINF_ADIC_CONTRIBUINTE.AsString.Trim;
    infAdic.infAdFisco := qryMDFEINF_ADIC_FISCO.AsString.Trim;
  end;

  ACBrMDFe.Manifestos.GerarMDFE;
end;

procedure TdtmMDFE.qryCERTIFICADO_CONFIGBeforeOpen(DataSet: TDataSet);
begin
  TFDQuery(DataSet).ParamByName('ID_EMPRESA').AsInteger := oEmpresa.ID;
end;

procedure TdtmMDFE.qryEMPRESABeforeOpen(DataSet: TDataSet);
begin
  TFDQuery(DataSet).ParamByName('ID_EMPRESA').AsInteger := oEmpresa.ID;
end;

procedure TdtmMDFE.qryMDFEAfterOpen(DataSet: TDataSet);
begin
  qryCERTIFICADO_CONFIG.Active := DataSet.Active;
  qryEMPRESA.Active := DataSet.Active;
  qryMDFE_LOCAL_CARREGAMENTO.Active := DataSet.Active;
  qryMDFE_UF_PERCURSO.Active := DataSet.Active;
  qryMDFE_CONDUTORES.Active := DataSet.Active;
  qryMDFE_REBOQUE.Active := DataSet.Active;
  qryMDFE_VALEPEDAGIO.Active := DataSet.Active;
  qryMDFE_LOCAL_DESCARREGAMENTO.Active := DataSet.Active;
  qryMDFE_CTE.Active := DataSet.Active;
  qryMDFE_CTE_UNIDTRANS.Active := DataSet.Active;
  qryMDFE_CTE_UNIDTRANS_LACRE.Active := DataSet.Active;
  qryMDFE_CTE_CARGTRANS.Active := DataSet.Active;
  qryMDFE_CTE_CARGTRANS_LACRE.Active := DataSet.Active;
  qryMDFE_NFE.Active := DataSet.Active;
  qryMDFE_NFE_UNIDTRANS.Active := DataSet.Active;
  qryMDFE_NFE_UNIDTRANS_LACRE.Active := DataSet.Active;
  qryMDFE_NFE_CARGTRANS.Active := DataSet.Active;
  qryMDFE_NFE_CARGTRANS_LACRE.Active := DataSet.Active;
  qryMDFE_LACRE.Active := DataSet.Active;
  qryMDFE_CIOT.Active := DataSet.Active;
  qryMDFE_CONTRATANTES.Active := DataSet.Active;
  qryMDFE_SEGUROS.Active := DataSet.Active;
  qryMDFE_SEGUROS_AVERBACAO.Active := DataSet.Active;
  qryMDFE_AQUA_TERMINAL_CARREG.Active := DataSet.Active;
  qryMDFE_AQUA_TERMINAL_DESCARREG.Active := DataSet.Active;
  qryMDFE_AQUA_COMBOIO.Active := DataSet.Active;
  qryMDFE_AQUA_UNID_CARGA.Active := DataSet.Active;
  qryMDFE_AQUA_UNID_TRANS.Active := DataSet.Active;
end;

procedure TdtmMDFE.qryMDFEBeforeOpen(DataSet: TDataSet);
begin
  TFDQuery(DataSet).ParamByName('ID_EMPRESA').AsInteger := oEmpresa.ID;
end;

procedure TdtmMDFE.QryMotoristaBeforeOpen(DataSet: TDataSet);
begin
  TFDQuery(DataSet).ParamByName('ID_EMPRESA').AsInteger := oEmpresa.ID;
end;

procedure TdtmMDFE.QryVeiculoBeforeOpen(DataSet: TDataSet);
begin
  TFDQuery(DataSet).ParamByName('ID_EMPRESA').AsInteger := oEmpresa.ID;
end;

procedure TdtmMDFE.tabMDFEAfterOpen(DataSet: TDataSet);
begin
  tabMDFE_LOCAL_CARREGAMENTO.Active := DataSet.Active;
  tabMDFE_UF_PERCURSO.Active := DataSet.Active;
  tabMDFE_LOCAL_DESCARREGAMENTO.Active := DataSet.Active;
  tabMDFE_CIOT.Active := DataSet.Active;
  tabMDFE_CONTRATANTES.Active := DataSet.Active;
  tabMDFE_VALEPEDAGIO.Active := DataSet.Active;
  tabMDFE_REBOQUE.Active := DataSet.Active;
  tabMDFE_CONDUTORES.Active := DataSet.Active;
  tabMDFE_CTE.Active := DataSet.Active;
  tabMDFE_CTE_UNIDTRANS.Active := DataSet.Active;
  tabMDFE_CTE_UNIDTRANS_LACRE.Active := DataSet.Active;
  tabMDFE_CTE_CARGTRANS.Active := DataSet.Active;
  tabMDFE_CTE_CARGTRANS_LACRE.Active := DataSet.Active;
  tabMDFE_NFE.Active := DataSet.Active;
  tabMDFE_NFE_UNIDTRANS.Active := DataSet.Active;
  tabMDFE_NFE_UNIDTRANS_LACRE.Active := DataSet.Active;
  tabMDFE_NFE_CARGTRANS.Active := DataSet.Active;
  tabMDFE_NFE_CARGTRANS_LACRE.Active := DataSet.Active;
  tabMDFE_LACRE.Active := DataSet.Active;
  tabMDFE_SEGUROS.Active := DataSet.Active;
  tabMDFE_SEGUROS_AVERBACAO.Active := DataSet.Active;
  tabMDFE_AUT_DOWNLOAD.Active := DataSet.Active;
  tabMDFE_AQUA_TERMINAL_CARREG.Active := DataSet.Active;
  tabMDFE_AQUA_TERMINAL_DESCARREG.Active := DataSet.Active;
  tabMDFE_AQUA_COMBOIO.Active := DataSet.Active;
  tabMDFE_AQUA_UNID_CARGA.Active := DataSet.Active;
  tabMDFE_AQUA_UNID_TRANS.Active := DataSet.Active;

  qryCIDADES.Active := DataSet.Active;
  qryCIDADES_UF.Active := DataSet.Active;
  QryMotorista.Active := DataSet.Active;
  QryVeiculo.Active := DataSet.Active;
end;

procedure TdtmMDFE.tabMDFEBeforeOpen(DataSet: TDataSet);
begin
  if oEmpresa.MDFE_ID_SERIE < 0 then
    raise Exception.Create('Erro com o número de série do MDF-e, favor conferir no cadastro do Emitente.');

  TFDQuery(DataSet).ParamByName('ID_EMPRESA').AsInteger := oEmpresa.ID;
  TFDQuery(DataSet).ParamByName('ID_SERIE').AsInteger := oEmpresa.MDFE_ID_SERIE;

  if FTOperacao = TRegistroDefault then
    TFDQuery(DataSet).ParamByName('ID_SERIE').AsInteger := 10000;
end;

procedure TdtmMDFE.tabMDFEBeforePost(DataSet: TDataSet);
begin
  VerificarCamposObrigatorios(DataSet);
end;

procedure TdtmMDFE.tabMDFENewRecord(DataSet: TDataSet);
begin
  with DataSet do
  begin
    FieldByName('ID_EMPRESA').AsInteger := oEmpresa.ID;
    if FTOperacao = TRegistroDefault then
    begin
      FieldByName('ID_MDFE').AsInteger := 1;
      FieldByName('ID_SERIE').AsInteger := 10000;
    end
    else
    begin
      // FieldByName('ID_MDFE').AsInteger := oMDFE.GetNEW_ID_MDFE;
      FieldByName('ID_MDFE').AsInteger := -1;
      FieldByName('ID_SERIE').AsInteger := oEmpresa.MDFE_ID_SERIE;
    end;

    FieldByName('DATAHORA_EMISSAO').AsDateTime := Now;
    FieldByName('DATAHORA_INICIO_VIAGEM').AsDateTime := Now;
    FieldByName('ID_UF_INICIAL').AsString := oEmpresa.ID_UF;
    FieldByName('ID_TIPO_EMITENTE').AsInteger := 0;
    FieldByName('ID_MODALIDADE').AsInteger := 0;
    FieldByName('ID_FORMA_EMISSAO').AsInteger := 0;
    FieldByName('ID_SITUACAO').AsString := 'A';
    FieldByName('EMI_N_PROP').AsString := 'N';
    FieldByName('TOTF_VLR_TOT_MERCADORIA').AsCurrency := 0.00;
    FieldByName('TOTF_PES_BRUTO').AsCurrency := 0.00;
    FieldByName('TOTF_COD_UNIDADE').AsInteger := 0;
  end;
end;

procedure TdtmMDFE.tabMDFEUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest;
  var AAction: TFDErrorAction);
begin
  dtmDefault.TratarErro(AException);
end;

procedure TdtmMDFE.tabMDFE_AQUA_TERMINAL_CARREGBeforePost(DataSet: TDataSet);
begin
  VerificarCamposObrigatorios(DataSet);
end;

procedure TdtmMDFE.tabMDFE_AQUA_TERMINAL_CARREGUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow;
  ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  dtmDefault.TratarErro(AException);
end;

procedure TdtmMDFE.tabMDFE_AQUA_COMBOIOBeforePost(DataSet: TDataSet);
begin
  VerificarCamposObrigatorios(DataSet);
end;

procedure TdtmMDFE.tabMDFE_AQUA_COMBOIOUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow;
  ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  dtmDefault.TratarErro(AException);
end;

procedure TdtmMDFE.tabMDFE_AQUA_TERMINAL_DESCARREGBeforePost(DataSet: TDataSet);
begin
  VerificarCamposObrigatorios(DataSet);
end;

procedure TdtmMDFE.tabMDFE_AQUA_TERMINAL_DESCARREGUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow;
  ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  dtmDefault.TratarErro(AException);
end;

procedure TdtmMDFE.tabMDFE_AQUA_UNID_CARGABeforePost(DataSet: TDataSet);
begin
  VerificarCamposObrigatorios(DataSet);
end;

procedure TdtmMDFE.tabMDFE_AQUA_UNID_CARGAUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow;
  ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  dtmDefault.TratarErro(AException);
end;

procedure TdtmMDFE.tabMDFE_AQUA_UNID_TRANSBeforePost(DataSet: TDataSet);
begin
  VerificarCamposObrigatorios(DataSet);
end;

procedure TdtmMDFE.tabMDFE_AQUA_UNID_TRANSUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow;
  ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  dtmDefault.TratarErro(AException);
end;

procedure TdtmMDFE.tabMDFE_AUT_DOWNLOADBeforePost(DataSet: TDataSet);
begin
  VerificarCamposObrigatorios(DataSet);
end;

procedure TdtmMDFE.tabMDFE_AUT_DOWNLOADUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow;
  ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  dtmDefault.TratarErro(AException);
end;

procedure TdtmMDFE.tabMDFE_CIOTBeforePost(DataSet: TDataSet);
var
  iErr: String;
begin
  if tabMDFE_CIOTCIOT.AsString.Trim.Length <> 12 then
    raise Exception.Create('Número do CIOT não é válido');

  if tabMDFE_CIOTCNPJ.AsString.Trim.Length = 0 then
    raise Exception.Create('Documento do Responsável inválido');

  if Length(OnlyNumber(tabMDFE_CIOTCNPJ.AsString.Trim)) > 11 then
    iErr := ACBrValidador.ValidarCNPJ(OnlyNumber(tabMDFE_CIOTCNPJ.AsString.Trim))
  else
    iErr := ACBrValidador.ValidarCPF(OnlyNumber(tabMDFE_CIOTCNPJ.AsString.Trim));

  if iErr.Trim.Length > 0 then
    raise Exception.Create(iErr);

  VerificarCamposObrigatorios(DataSet);
end;

procedure TdtmMDFE.tabMDFE_CIOTUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow;
  ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  dtmDefault.TratarErro(AException);
end;

procedure TdtmMDFE.tabMDFE_CONDUTORESBeforePost(DataSet: TDataSet);
begin
  VerificarCamposObrigatorios(DataSet);
end;

procedure TdtmMDFE.tabMDFE_CONDUTORESUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow;
  ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  dtmDefault.TratarErro(AException);
end;

procedure TdtmMDFE.tabMDFE_CONTRATANTESBeforePost(DataSet: TDataSet);
begin
  VerificarCamposObrigatorios(DataSet);
end;

procedure TdtmMDFE.tabMDFE_CONTRATANTESUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow;
  ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  dtmDefault.TratarErro(AException);
end;

procedure TdtmMDFE.tabMDFE_CTEBeforePost(DataSet: TDataSet);
begin
  VerificarCamposObrigatorios(DataSet);
end;

procedure TdtmMDFE.tabMDFE_CTENewRecord(DataSet: TDataSet);
begin
  TFDQuery(DataSet).FieldByName('ID_IND_REENTREGA').AsString := 'N';
end;

procedure TdtmMDFE.tabMDFE_CTEUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow;
  ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  dtmDefault.TratarErro(AException);
end;

procedure TdtmMDFE.tabMDFE_CTE_CARGTRANSBeforePost(DataSet: TDataSet);
begin
  VerificarCamposObrigatorios(DataSet);
end;

procedure TdtmMDFE.tabMDFE_CTE_CARGTRANSUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow;
  ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  dtmDefault.TratarErro(AException);
end;

procedure TdtmMDFE.tabMDFE_CTE_CARGTRANS_LACREBeforePost(DataSet: TDataSet);
begin
  VerificarCamposObrigatorios(DataSet);
end;

procedure TdtmMDFE.tabMDFE_CTE_CARGTRANS_LACREUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow;
  ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  dtmDefault.TratarErro(AException);
end;

procedure TdtmMDFE.tabMDFE_CTE_UNIDTRANSBeforePost(DataSet: TDataSet);
begin
  VerificarCamposObrigatorios(DataSet);
end;

procedure TdtmMDFE.tabMDFE_CTE_UNIDTRANSUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow;
  ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  dtmDefault.TratarErro(AException);
end;

procedure TdtmMDFE.tabMDFE_CTE_UNIDTRANS_LACREBeforePost(DataSet: TDataSet);
begin
  VerificarCamposObrigatorios(DataSet);
end;

procedure TdtmMDFE.tabMDFE_CTE_UNIDTRANS_LACREUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow;
  ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  dtmDefault.TratarErro(AException);
end;

procedure TdtmMDFE.tabMDFE_LACREBeforePost(DataSet: TDataSet);
begin
  VerificarCamposObrigatorios(DataSet);
end;

procedure TdtmMDFE.tabMDFE_LACREUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow;
  ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  dtmDefault.TratarErro(AException);
end;

procedure TdtmMDFE.tabMDFE_LOCAL_CARREGAMENTOBeforePost(DataSet: TDataSet);
begin
  VerificarCamposObrigatorios(DataSet);
end;

procedure TdtmMDFE.tabMDFE_LOCAL_CARREGAMENTOUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow;
  ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  dtmDefault.TratarErro(AException);
end;

procedure TdtmMDFE.tabMDFE_LOCAL_DESCARREGAMENTOBeforePost(DataSet: TDataSet);
begin
  VerificarCamposObrigatorios(DataSet);
end;

procedure TdtmMDFE.tabMDFE_LOCAL_DESCARREGAMENTOUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow;
  ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  dtmDefault.TratarErro(AException);
end;

procedure TdtmMDFE.tabMDFE_NFEBeforePost(DataSet: TDataSet);
begin
  TFDQuery(DataSet).FieldByName('ID_CIDADES_UF').AsString := tabMDFE_LOCAL_DESCARREGAMENTOID_CIDADES_UF.AsString;
  TFDQuery(DataSet).FieldByName('ID_CIDADES_IBGE').AsInteger := tabMDFE_LOCAL_DESCARREGAMENTOID_CIDADES_IBGE.AsInteger;

  VerificarCamposObrigatorios(DataSet);
end;

procedure TdtmMDFE.tabMDFE_NFENewRecord(DataSet: TDataSet);
begin
  TFDQuery(DataSet).FieldByName('ID_IND_REENTREGA').AsString := 'N';
end;

procedure TdtmMDFE.tabMDFE_NFEUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow;
  ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  dtmDefault.TratarErro(AException);
end;

procedure TdtmMDFE.tabMDFE_NFE_CARGTRANSUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow;
  ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  dtmDefault.TratarErro(AException);
end;

procedure TdtmMDFE.tabMDFE_NFE_CARGTRANS_LACREUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow;
  ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  dtmDefault.TratarErro(AException);
end;

procedure TdtmMDFE.tabMDFE_NFE_UNIDTRANSUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow;
  ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  dtmDefault.TratarErro(AException);
end;

procedure TdtmMDFE.tabMDFE_NFE_UNIDTRANS_LACREUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow;
  ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  dtmDefault.TratarErro(AException);
end;

procedure TdtmMDFE.tabMDFE_REBOQUEBeforePost(DataSet: TDataSet);
begin
  VerificarCamposObrigatorios(DataSet);
end;

procedure TdtmMDFE.tabMDFE_REBOQUEUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow;
  ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  dtmDefault.TratarErro(AException);
end;

procedure TdtmMDFE.tabMDFE_SEGUROSBeforePost(DataSet: TDataSet);
begin
  VerificarCamposObrigatorios(DataSet);
end;

procedure TdtmMDFE.tabMDFE_SEGUROSUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow;
  ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  dtmDefault.TratarErro(AException);
end;

procedure TdtmMDFE.tabMDFE_SEGUROS_AVERBACAOAfterPost(DataSet: TDataSet);
begin
  if tabMDFE_SEGUROS.State in [dsBrowse] then
    tabMDFE_SEGUROS.Edit;
end;

procedure TdtmMDFE.tabMDFE_SEGUROS_AVERBACAOBeforePost(DataSet: TDataSet);
begin
  VerificarCamposObrigatorios(DataSet);
end;

procedure TdtmMDFE.tabMDFE_SEGUROS_AVERBACAOUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow;
  ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  dtmDefault.TratarErro(AException);
end;

procedure TdtmMDFE.tabMDFE_UF_PERCURSOBeforePost(DataSet: TDataSet);
begin
  VerificarCamposObrigatorios(DataSet);
end;

procedure TdtmMDFE.tabMDFE_UF_PERCURSOUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow;
  ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  dtmDefault.TratarErro(AException);
end;

procedure TdtmMDFE.tabMDFE_VALEPEDAGIOBeforePost(DataSet: TDataSet);
begin
  VerificarCamposObrigatorios(DataSet);
end;

procedure TdtmMDFE.tabMDFE_VALEPEDAGIONewRecord(DataSet: TDataSet);
begin
  tabMDFE_VALEPEDAGIOVALOR.AsCurrency := 0.00;
end;

procedure TdtmMDFE.tabMDFE_VALEPEDAGIOUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow;
  ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  dtmDefault.TratarErro(AException);
end;

procedure TdtmMDFE.configurarCIOT;
var
  Ok: Boolean;
begin
  dtmDefault.tabCERTIFICADO_CONFIG.Close;

  dtmDefault.tabCERTIFICADO_CONFIG.ParamByName('ID_EMPRESA').AsInteger := oEmpresa.ID;
  dtmDefault.tabCERTIFICADO_CONFIG.ParamByName('ID_MODELO').AsInteger := 58;

  dtmDefault.tabCERTIFICADO_CONFIG.Open;

  // ACBrCIOT.Configuracoes.Certificados.ArquivoPFX := dtmDefault.tabCERTIFICADO_CONFIGCAMINHO_CERTIFICADO.AsString;
  ACBrCIOT.Configuracoes.Certificados.NumeroSerie := dtmDefault.tabCERTIFICADO_CONFIGNUMERO_SERIE_CERTIFICADO_CIOT.AsString;
  ACBrCIOT.Configuracoes.Certificados.Senha := dtmDefault.tabCERTIFICADO_CONFIGSENHA_CERTIFICADO_CIOT.AsString;

  ACBrCIOT.SSL.DescarregarCertificado;

  // Não for informado nenhuma informação a respeito do certificado
  // o componente será configurado para não carregar o certificado.
  ACBrCIOT.SSL.UseCertificateHTTP := (dtmDefault.tabCERTIFICADO_CONFIGNUMERO_SERIE_CERTIFICADO_CIOT.AsString <> '');

  with ACBrCIOT.Configuracoes.Geral do
  begin
    SSLLib := TSSLLib(dtmDefault.tabCertificado_configSSL_LIB_INDEX.AsInteger);
    SSLCryptLib := TSSLCryptLib(dtmDefault.tabCertificado_configCRYPT_LIB_INDEX.AsInteger);
    SSLHttpLib := TSSLHttpLib(dtmDefault.tabCertificado_configHTTP_LIB_INDEX.AsInteger);
    SSLXmlSignLib := TSSLXmlSignLib(dtmDefault.tabCertificado_configXML_SIGN_LIB__INDEX.AsInteger);
    ACBrCIOT.SSL.SSLType := TSSLType(dtmDefault.tabCERTIFICADO_CONFIGID_SSL_TYPE.AsInteger);

    Salvar := dtmDefault.tabCERTIFICADO_CONFIGMANTER_ARQUIVOS_TEMPORARIOS.AsBoolean;
    RetirarAcentos := dtmDefault.tabCERTIFICADO_CONFIGRETIRAR_ACENTO.AsBoolean;
    FormatoAlerta := dtmDefault.tabCERTIFICADO_CONFIGFORMATO_ALERTA.AsString;

    FormaEmissao := TpcnTipoEmissao(dtmDefault.tabCertificado_configFORMA_EMISSAO_INDEX.AsInteger);
    VersaoDF := TVersaoCIOT(dtmDefault.tabCERTIFICADO_CONFIGVERSAO_DF_CIOT_INDEX.AsInteger);

    // iNone, ieFrete, iRepom, iPamcard
    case dtmDefault.tabCertificado_configINTEGRADORA_INDEX.AsInteger of
      0:
        Integradora := TCIOTIntegradora.iNone;
      1:
        Integradora := TCIOTIntegradora.ieFrete;
      2:
        Integradora := TCIOTIntegradora.iRepom;
      3:
        Integradora := TCIOTIntegradora.iPamcard;
    else
      raise Exception.Create('Integradora não mapeada!');
    end;

    Usuario := Trim(dtmDefault.tabCertificado_configGERAL_USUARIO.AsString);
    Senha := Trim(dtmDefault.tabCertificado_configGERAL_SENHA.AsString);
    HashIntegrador := Trim(dtmDefault.tabCertificado_configGERAL_HASH_INTEGRADOR.AsString);
  end;

  with ACBrCIOT.Configuracoes.WebServices do
  begin
    UF := dtmDefault.tabCERTIFICADO_CONFIGWS_UF_DESTINO.AsString;
    Ambiente := StrToTpAmb(Ok, IntToStr(dtmDefault.tabCERTIFICADO_CONFIGID_TIPO_AMBIENTE.AsInteger + 1));
    Visualizar := True;
    Salvar := True;

    AjustaAguardaConsultaRet := dtmDefault.tabCertificado_configAJUSTE_AUTOMATICO_AGUARDAR.AsBoolean;

    var
    aguardar := dtmDefault.tabCertificado_configAGUARDAR_SEGUNDOS.AsString;
    if NaoEstaVazio(aguardar) then
      AguardarConsultaRet := ifThen(StrToInt(aguardar) < 1000, StrToInt(aguardar) * 1000, StrToInt(aguardar));

    if NaoEstaVazio(dtmDefault.tabCertificado_configTENTATIVAS.AsString) then
      Tentativas := dtmDefault.tabCertificado_configTENTATIVAS.AsInteger;

    if NaoEstaVazio(dtmDefault.tabCertificado_configINTERVALO_SEGUNDOS.AsString) then
      IntervaloTentativas := ifThen(dtmDefault.tabCertificado_configINTERVALO_SEGUNDOS.AsInteger < 1000,
        dtmDefault.tabCertificado_configINTERVALO_SEGUNDOS.AsInteger * 1000,
        dtmDefault.tabCertificado_configINTERVALO_SEGUNDOS.AsInteger);

    TimeOut := dtmDefault.tabCERTIFICADO_CONFIGWS_TIMEOUT.AsInteger;
    ProxyHost := dtmDefault.tabCERTIFICADO_CONFIGWS_PROXY_HOST.AsString;
    ProxyPort := dtmDefault.tabCERTIFICADO_CONFIGWS_PROXY_PORTA.AsString;
    ProxyUser := dtmDefault.tabCERTIFICADO_CONFIGWS_PROXY_USUARIO.AsString;
    ProxyPass := dtmDefault.tabCERTIFICADO_CONFIGWS_PROXY_SENHA.AsString;
  end;

  with ACBrCIOT.Configuracoes.Arquivos do
  begin

    Salvar := dtmDefault.tabCERTIFICADO_CONFIGMANTER_ARQUIVOS_TEMPORARIOS.AsBoolean;
    var
    PathApp := ExtractFilePath(ParamStr(0));
    PathSchemas := IncludeTrailingPathDelimiter(PathApp + 'SCHEMAS\MDFE');
    PathCIOT := PathApp;

    SepararPorMes := True;
    AdicionarLiteral := True;
    EmissaoPathCIOT := True;
    SepararPorCNPJ := True;
    SepararPorModelo := True;
  end;
end;

procedure TdtmMDFE.atualizarSSLLibsCombo;
begin
  dtmDefault.tabCERTIFICADO_CONFIG.Edit;

  dtmDefault.tabCERTIFICADO_CONFIGID_SSL_TYPE.AsInteger := Integer(ACBrCIOT.Configuracoes.Geral.SSLLib);
  dtmDefault.tabCertificado_configCRYPT_LIB_INDEX.AsInteger := Integer(ACBrCIOT.Configuracoes.Geral.SSLCryptLib);
  dtmDefault.tabCertificado_configHTTP_LIB_INDEX.AsInteger := Integer(ACBrCIOT.Configuracoes.Geral.SSLHttpLib);
  dtmDefault.tabCertificado_configXML_SIGN_LIB__INDEX.AsInteger := Integer(ACBrCIOT.Configuracoes.Geral.SSLXmlSignLib);
end;

end.
