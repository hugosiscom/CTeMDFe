object dtmMDFE: TdtmMDFE
  Height = 1101
  Width = 1338
  object ACBrMail: TACBrMail
    Host = '127.0.0.1'
    Port = '25'
    SetSSL = False
    SetTLS = False
    Attempts = 3
    DefaultCharset = UTF_8
    IDECharset = CP1252
    Left = 31
    Top = 128
  end
  object tabCERTIFICADO_CONFIG: TFDQuery
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  CERTIFICADO_CONFIG'
      'WHERE'
      '  1=1'
      '  AND CERTIFICADO_CONFIG.ID_EMPRESA = :ID_EMPRESA'
      '  AND CERTIFICADO_CONFIG.ID_MODELO = 58'
      ''
      '')
    Left = 31
    Top = 184
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object tabCERTIFICADO_CONFIGID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabCERTIFICADO_CONFIGID_MODELO: TIntegerField
      FieldName = 'ID_MODELO'
      Origin = 'ID_MODELO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabCERTIFICADO_CONFIGID_CERTIFICADOCONFIG: TIntegerField
      FieldName = 'ID_CERTIFICADOCONFIG'
      Origin = 'ID_CERTIFICADOCONFIG'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabCERTIFICADO_CONFIGCERTIFICADO_NUMERO: TStringField
      FieldName = 'CERTIFICADO_NUMERO'
      Origin = 'CERTIFICADO_NUMERO'
      Size = 40
    end
    object tabCERTIFICADO_CONFIGCERTIFICADO_SENHA: TStringField
      FieldName = 'CERTIFICADO_SENHA'
      Origin = 'CERTIFICADO_SENHA'
      Size = 40
    end
    object tabCERTIFICADO_CONFIGWS_UF_DESTINO: TStringField
      FieldName = 'WS_UF_DESTINO'
      Origin = 'WS_UF_DESTINO'
      FixedChar = True
      Size = 2
    end
    object tabCERTIFICADO_CONFIGID_TIPO_AMBIENTE: TIntegerField
      FieldName = 'ID_TIPO_AMBIENTE'
      Origin = 'ID_TIPO_AMBIENTE'
    end
    object tabCERTIFICADO_CONFIGID_SSL_TYPE: TIntegerField
      FieldName = 'ID_SSL_TYPE'
      Origin = 'ID_SSL_TYPE'
    end
    object tabCERTIFICADO_CONFIGWS_PROXY_HOST: TStringField
      FieldName = 'WS_PROXY_HOST'
      Origin = 'WS_PROXY_HOST'
      Size = 200
    end
    object tabCERTIFICADO_CONFIGWS_PROXY_PORTA: TIntegerField
      FieldName = 'WS_PROXY_PORTA'
      Origin = 'WS_PROXY_PORTA'
    end
    object tabCERTIFICADO_CONFIGWS_PROXY_USUARIO: TStringField
      FieldName = 'WS_PROXY_USUARIO'
      Origin = 'WS_PROXY_USUARIO'
      Size = 60
    end
    object tabCERTIFICADO_CONFIGWS_PROXY_SENHA: TStringField
      FieldName = 'WS_PROXY_SENHA'
      Origin = 'WS_PROXY_SENHA'
      Size = 60
    end
    object tabCERTIFICADO_CONFIGID_REPORT_ORIENTACAO: TIntegerField
      FieldName = 'ID_REPORT_ORIENTACAO'
      Origin = 'ID_REPORT_ORIENTACAO'
    end
    object tabCERTIFICADO_CONFIGID_FORMA_EMISSAO: TIntegerField
      FieldName = 'ID_FORMA_EMISSAO'
      Origin = 'ID_FORMA_EMISSAO'
    end
    object tabCERTIFICADO_CONFIGEMAIL_ENVIAR: TStringField
      FieldName = 'EMAIL_ENVIAR'
      Origin = 'EMAIL_ENVIAR'
      FixedChar = True
      Size = 1
    end
    object tabCERTIFICADO_CONFIGEMAIL_SERVIDOR: TStringField
      FieldName = 'EMAIL_SERVIDOR'
      Origin = 'EMAIL_SERVIDOR'
      Size = 200
    end
    object tabCERTIFICADO_CONFIGEMAIL_PORTA: TIntegerField
      FieldName = 'EMAIL_PORTA'
      Origin = 'EMAIL_PORTA'
    end
    object tabCERTIFICADO_CONFIGEMAIL_USUARIO: TStringField
      FieldName = 'EMAIL_USUARIO'
      Origin = 'EMAIL_USUARIO'
      Size = 60
    end
    object tabCERTIFICADO_CONFIGEMAIL_SENHA: TStringField
      FieldName = 'EMAIL_SENHA'
      Origin = 'EMAIL_SENHA'
      Size = 60
    end
    object tabCERTIFICADO_CONFIGEMAIL_SENHA_SEGURA: TStringField
      FieldName = 'EMAIL_SENHA_SEGURA'
      Origin = 'EMAIL_SENHA_SEGURA'
      FixedChar = True
      Size = 1
    end
    object tabCERTIFICADO_CONFIGTIME_ZONE_MODO: TIntegerField
      FieldName = 'TIME_ZONE_MODO'
      Origin = 'TIME_ZONE_MODO'
    end
    object tabCERTIFICADO_CONFIGTIME_ZONE_MANUAL: TIntegerField
      FieldName = 'TIME_ZONE_MANUAL'
      Origin = 'TIME_ZONE_MANUAL'
    end
    object tabCERTIFICADO_CONFIGMANTER_ARQUIVOS_TEMPORARIOS: TStringField
      FieldName = 'MANTER_ARQUIVOS_TEMPORARIOS'
      Origin = 'MANTER_ARQUIVOS_TEMPORARIOS'
      FixedChar = True
      Size = 1
    end
    object tabCERTIFICADO_CONFIGLOGOMARCA: TStringField
      FieldName = 'LOGOMARCA'
      Origin = 'LOGOMARCA'
      Size = 300
    end
    object tabCERTIFICADO_CONFIGVERSAO_PROCESSO_EMISSAO: TStringField
      FieldName = 'VERSAO_PROCESSO_EMISSAO'
      Origin = 'VERSAO_PROCESSO_EMISSAO'
      Size = 11
    end
  end
  object OpenDialog: TOpenDialog
    Left = 31
    Top = 238
  end
  object ACBrMDFe: TACBrMDFe
    MAIL = ACBrMail
    OnStatusChange = ACBrMDFeStatusChange
    Configuracoes.Geral.SSLLib = libWinCrypt
    Configuracoes.Geral.SSLCryptLib = cryWinCrypt
    Configuracoes.Geral.SSLHttpLib = httpWinHttp
    Configuracoes.Geral.SSLXmlSignLib = xsLibXml2
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.Salvar = True
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    DAMDFE = ACBrMDFeDAMDFeRL
    Left = 31
    Top = 16
  end
  object ACBrMDFeDAMDFeRL: TACBrMDFeDAMDFeRL
    Sistema = 'Siscomsoft - www.siscmsoft.com.br'
    MargemInferior = 0.800000000000000000
    MargemSuperior = 0.800000000000000000
    MargemEsquerda = 0.600000000000000000
    MargemDireita = 0.510000000000000000
    ExpandeLogoMarcaConfig.Altura = 0
    ExpandeLogoMarcaConfig.Esquerda = 0
    ExpandeLogoMarcaConfig.Topo = 0
    ExpandeLogoMarcaConfig.Largura = 0
    ExpandeLogoMarcaConfig.Dimensionar = False
    ExpandeLogoMarcaConfig.Esticar = True
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = ',0.00'
    CasasDecimais.MaskvUnCom = ',0.00'
    CasasDecimais.Aliquota = 2
    CasasDecimais.MaskAliquota = ',0.00'
    ACBrMDFe = ACBrMDFe
    ImprimeHoraSaida = False
    TipoDAMDFe = tiSemGeracao
    TamanhoPapel = tpA4
    Cancelada = False
    Encerrado = False
    ImprimeDadosExtras = [deValorTotal, deRelacaoDFe]
    ExibirMunicipioDescarregamento = False
    PrintDialog = True
    Left = 31
    Top = 72
  end
  object qryCERTIFICADO_CONFIG: TFDQuery
    BeforeOpen = qryCERTIFICADO_CONFIGBeforeOpen
    CachedUpdates = True
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  CERTIFICADO_CONFIG'
      'WHERE'
      '  1=1'
      '  AND CERTIFICADO_CONFIG.ID_EMPRESA = :ID_EMPRESA'
      '  AND CERTIFICADO_CONFIG.ID_MODELO = 58'
      ''
      '')
    Left = 1143
    Top = 72
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryCERTIFICADO_CONFIGID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCERTIFICADO_CONFIGID_MODELO: TIntegerField
      FieldName = 'ID_MODELO'
      Origin = 'ID_MODELO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCERTIFICADO_CONFIGID_CERTIFICADOCONFIG: TIntegerField
      FieldName = 'ID_CERTIFICADOCONFIG'
      Origin = 'ID_CERTIFICADOCONFIG'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCERTIFICADO_CONFIGCERTIFICADO_NUMERO: TStringField
      FieldName = 'CERTIFICADO_NUMERO'
      Origin = 'CERTIFICADO_NUMERO'
      Size = 40
    end
    object qryCERTIFICADO_CONFIGCERTIFICADO_SENHA: TStringField
      FieldName = 'CERTIFICADO_SENHA'
      Origin = 'CERTIFICADO_SENHA'
      Size = 40
    end
    object qryCERTIFICADO_CONFIGWS_UF_DESTINO: TStringField
      FieldName = 'WS_UF_DESTINO'
      Origin = 'WS_UF_DESTINO'
      FixedChar = True
      Size = 2
    end
    object qryCERTIFICADO_CONFIGID_TIPO_AMBIENTE: TIntegerField
      FieldName = 'ID_TIPO_AMBIENTE'
      Origin = 'ID_TIPO_AMBIENTE'
    end
    object qryCERTIFICADO_CONFIGID_SSL_TYPE: TIntegerField
      FieldName = 'ID_SSL_TYPE'
      Origin = 'ID_SSL_TYPE'
    end
    object qryCERTIFICADO_CONFIGWS_PROXY_HOST: TStringField
      FieldName = 'WS_PROXY_HOST'
      Origin = 'WS_PROXY_HOST'
      Size = 200
    end
    object qryCERTIFICADO_CONFIGWS_PROXY_PORTA: TIntegerField
      FieldName = 'WS_PROXY_PORTA'
      Origin = 'WS_PROXY_PORTA'
    end
    object qryCERTIFICADO_CONFIGWS_PROXY_USUARIO: TStringField
      FieldName = 'WS_PROXY_USUARIO'
      Origin = 'WS_PROXY_USUARIO'
      Size = 60
    end
    object qryCERTIFICADO_CONFIGWS_PROXY_SENHA: TStringField
      FieldName = 'WS_PROXY_SENHA'
      Origin = 'WS_PROXY_SENHA'
      Size = 60
    end
    object qryCERTIFICADO_CONFIGID_REPORT_ORIENTACAO: TIntegerField
      FieldName = 'ID_REPORT_ORIENTACAO'
      Origin = 'ID_REPORT_ORIENTACAO'
    end
    object qryCERTIFICADO_CONFIGID_FORMA_EMISSAO: TIntegerField
      FieldName = 'ID_FORMA_EMISSAO'
      Origin = 'ID_FORMA_EMISSAO'
    end
    object qryCERTIFICADO_CONFIGEMAIL_ENVIAR: TStringField
      FieldName = 'EMAIL_ENVIAR'
      Origin = 'EMAIL_ENVIAR'
      FixedChar = True
      Size = 1
    end
    object qryCERTIFICADO_CONFIGEMAIL_SERVIDOR: TStringField
      FieldName = 'EMAIL_SERVIDOR'
      Origin = 'EMAIL_SERVIDOR'
      Size = 200
    end
    object qryCERTIFICADO_CONFIGEMAIL_PORTA: TIntegerField
      FieldName = 'EMAIL_PORTA'
      Origin = 'EMAIL_PORTA'
    end
    object qryCERTIFICADO_CONFIGEMAIL_USUARIO: TStringField
      FieldName = 'EMAIL_USUARIO'
      Origin = 'EMAIL_USUARIO'
      Size = 60
    end
    object qryCERTIFICADO_CONFIGEMAIL_SENHA: TStringField
      FieldName = 'EMAIL_SENHA'
      Origin = 'EMAIL_SENHA'
      Size = 60
    end
    object qryCERTIFICADO_CONFIGEMAIL_SENHA_SEGURA: TStringField
      FieldName = 'EMAIL_SENHA_SEGURA'
      Origin = 'EMAIL_SENHA_SEGURA'
      FixedChar = True
      Size = 1
    end
    object qryCERTIFICADO_CONFIGTIME_ZONE_MODO: TIntegerField
      FieldName = 'TIME_ZONE_MODO'
      Origin = 'TIME_ZONE_MODO'
    end
    object qryCERTIFICADO_CONFIGTIME_ZONE_MANUAL: TIntegerField
      FieldName = 'TIME_ZONE_MANUAL'
      Origin = 'TIME_ZONE_MANUAL'
    end
    object qryCERTIFICADO_CONFIGMANTER_ARQUIVOS_TEMPORARIOS: TStringField
      FieldName = 'MANTER_ARQUIVOS_TEMPORARIOS'
      Origin = 'MANTER_ARQUIVOS_TEMPORARIOS'
      FixedChar = True
      Size = 1
    end
    object qryCERTIFICADO_CONFIGLOGOMARCA: TStringField
      FieldName = 'LOGOMARCA'
      Origin = 'LOGOMARCA'
      Size = 300
    end
    object qryCERTIFICADO_CONFIGEMAIL_SENHA_TLS: TStringField
      FieldName = 'EMAIL_SENHA_TLS'
      Origin = 'EMAIL_SENHA_TLS'
      FixedChar = True
      Size = 1
    end
  end
  object tabMDFE: TFDQuery
    BeforeOpen = tabMDFEBeforeOpen
    AfterOpen = tabMDFEAfterOpen
    AfterClose = tabMDFEAfterOpen
    BeforePost = tabMDFEBeforePost
    OnNewRecord = tabMDFENewRecord
    OnUpdateError = tabMDFEUpdateError
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'SELECT'
      '  MDFE.*'
      'FROM'
      '  MDFE'
      'WHERE'
      '  1=1'
      '  AND ID_MDFE = :ID_MDFE'
      '  AND ID_SERIE = :ID_SERIE'
      '  AND ID_EMPRESA = :ID_EMPRESA')
    Left = 201
    Top = 16
    ParamData = <
      item
        Name = 'ID_MDFE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object tabMDFEID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMDFEID_MDFE: TIntegerField
      FieldName = 'ID_MDFE'
      Origin = 'ID_MDFE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMDFEID_SERIE: TIntegerField
      FieldName = 'ID_SERIE'
      Origin = 'ID_SERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMDFEDATAHORA_EMISSAO: TSQLTimeStampField
      FieldName = 'DATAHORA_EMISSAO'
      Origin = 'DATAHORA_EMISSAO'
      Required = True
    end
    object tabMDFEDATAHORA_INICIO_VIAGEM: TSQLTimeStampField
      FieldName = 'DATAHORA_INICIO_VIAGEM'
      Origin = 'DATAHORA_INICIO_VIAGEM'
    end
    object tabMDFEID_UF_INICIAL: TStringField
      FieldName = 'ID_UF_INICIAL'
      Origin = 'ID_UF_INICIAL'
      FixedChar = True
      Size = 8
    end
    object tabMDFEID_TIPO_EMITENTE: TIntegerField
      FieldName = 'ID_TIPO_EMITENTE'
      Origin = 'ID_TIPO_EMITENTE'
    end
    object tabMDFEID_TIPO_TRANSPORTADOR: TIntegerField
      FieldName = 'ID_TIPO_TRANSPORTADOR'
      Origin = 'ID_TIPO_TRANSPORTADOR'
    end
    object tabMDFEID_MODALIDADE: TIntegerField
      FieldName = 'ID_MODALIDADE'
      Origin = 'ID_MODALIDADE'
    end
    object tabMDFEID_FORMA_EMISSAO: TIntegerField
      FieldName = 'ID_FORMA_EMISSAO'
      Origin = 'ID_FORMA_EMISSAO'
    end
    object tabMDFEID_UF_FINAL: TStringField
      FieldName = 'ID_UF_FINAL'
      Origin = 'ID_UF_FINAL'
      FixedChar = True
      Size = 8
    end
    object tabMDFEVEICULO_RNTRC: TStringField
      FieldName = 'VEICULO_RNTRC'
      Origin = 'VEICULO_RNTRC'
      Size = 10
    end
    object tabMDFEVEICULO_COD_AGENDA_PORT: TStringField
      FieldName = 'VEICULO_COD_AGENDA_PORT'
      Origin = 'VEICULO_COD_AGENDA_PORT'
    end
    object tabMDFEVEICULO_CODIGO_INTERNO: TStringField
      FieldName = 'VEICULO_CODIGO_INTERNO'
      Origin = 'VEICULO_CODIGO_INTERNO'
      Size = 10
    end
    object tabMDFEVEICULO_TIPO_CARROCERIA: TIntegerField
      FieldName = 'VEICULO_TIPO_CARROCERIA'
      Origin = 'VEICULO_TIPO_CARROCERIA'
    end
    object tabMDFEVEICULO_PLACA: TStringField
      FieldName = 'VEICULO_PLACA'
      Origin = 'VEICULO_PLACA'
      Size = 10
    end
    object tabMDFEVEICULO_TARA: TFMTBCDField
      FieldName = 'VEICULO_TARA'
      Origin = 'VEICULO_TARA'
      Precision = 18
      Size = 2
    end
    object tabMDFEVEICULO_UF: TStringField
      FieldName = 'VEICULO_UF'
      Origin = 'VEICULO_UF'
      FixedChar = True
      Size = 2
    end
    object tabMDFEVEICULO_RENAVAN: TStringField
      FieldName = 'VEICULO_RENAVAN'
      Origin = 'VEICULO_RENAVAN'
      Size = 15
    end
    object tabMDFEVEICULO_TIPO_RODADO: TIntegerField
      FieldName = 'VEICULO_TIPO_RODADO'
      Origin = 'VEICULO_TIPO_RODADO'
    end
    object tabMDFEVEICULO_CAPACIDADE_KG: TFMTBCDField
      FieldName = 'VEICULO_CAPACIDADE_KG'
      Origin = 'VEICULO_CAPACIDADE_KG'
      Precision = 18
      Size = 2
    end
    object tabMDFEVEICULO_CAPACIDADE_M3: TFMTBCDField
      FieldName = 'VEICULO_CAPACIDADE_M3'
      Origin = 'VEICULO_CAPACIDADE_M3'
      Precision = 18
      Size = 2
    end
    object tabMDFEEMI_N_PROP: TStringField
      FieldName = 'EMI_N_PROP'
      Origin = 'EMI_N_PROP'
      FixedChar = True
      Size = 1
    end
    object tabMDFEEMI_N_PROP_TIPO: TIntegerField
      FieldName = 'EMI_N_PROP_TIPO'
      Origin = 'EMI_N_PROP_TIPO'
    end
    object tabMDFEEMI_N_PROP_UF: TStringField
      FieldName = 'EMI_N_PROP_UF'
      Origin = 'EMI_N_PROP_UF'
      FixedChar = True
      Size = 2
    end
    object tabMDFEEMI_N_PROP_RNTRC: TStringField
      FieldName = 'EMI_N_PROP_RNTRC'
      Origin = 'EMI_N_PROP_RNTRC'
      Size = 10
    end
    object tabMDFEEMI_N_PROP_CPF_CNPJ: TStringField
      FieldName = 'EMI_N_PROP_CPF_CNPJ'
      Origin = 'EMI_N_PROP_CPF_CNPJ'
    end
    object tabMDFEEMI_N_PROP_RZSOCIAL: TStringField
      FieldName = 'EMI_N_PROP_RZSOCIAL'
      Origin = 'EMI_N_PROP_RZSOCIAL'
      Size = 100
    end
    object tabMDFEEMI_N_PROP_IE: TStringField
      FieldName = 'EMI_N_PROP_IE'
      Origin = 'EMI_N_PROP_IE'
    end
    object tabMDFETOTF_VLR_TOT_MERCADORIA: TFMTBCDField
      FieldName = 'TOTF_VLR_TOT_MERCADORIA'
      Origin = 'TOTF_VLR_TOT_MERCADORIA'
      Precision = 18
      Size = 2
    end
    object tabMDFETOTF_COD_UNIDADE: TIntegerField
      FieldName = 'TOTF_COD_UNIDADE'
      Origin = 'TOTF_COD_UNIDADE'
    end
    object tabMDFETOTF_PES_BRUTO: TFMTBCDField
      FieldName = 'TOTF_PES_BRUTO'
      Origin = 'TOTF_PES_BRUTO'
      Precision = 18
      Size = 2
    end
    object tabMDFEINF_ADIC_FISCO: TMemoField
      FieldName = 'INF_ADIC_FISCO'
      Origin = 'INF_ADIC_FISCO'
      BlobType = ftMemo
    end
    object tabMDFEINF_ADIC_CONTRIBUINTE: TMemoField
      FieldName = 'INF_ADIC_CONTRIBUINTE'
      Origin = 'INF_ADIC_CONTRIBUINTE'
      BlobType = ftMemo
    end
    object tabMDFEID_SITUACAO: TStringField
      FieldName = 'ID_SITUACAO'
      Origin = 'ID_SITUACAO'
      FixedChar = True
      Size = 1
    end
    object tabMDFEXML_CHAVE: TStringField
      FieldName = 'XML_CHAVE'
      Origin = 'XML_CHAVE'
      FixedChar = True
      Size = 44
    end
    object tabMDFEXML_PROTOCOLO: TStringField
      FieldName = 'XML_PROTOCOLO'
      Origin = 'XML_PROTOCOLO'
      Size = 50
    end
    object tabMDFEXML_PROCOCOLO_DATAHORA: TSQLTimeStampField
      FieldName = 'XML_PROCOCOLO_DATAHORA'
      Origin = 'XML_PROCOCOLO_DATAHORA'
    end
    object tabMDFEXML_STATUS_CODIGO: TIntegerField
      FieldName = 'XML_STATUS_CODIGO'
      Origin = 'XML_STATUS_CODIGO'
    end
    object tabMDFEXML_XMOTIVO: TStringField
      FieldName = 'XML_XMOTIVO'
      Origin = 'XML_XMOTIVO'
      Size = 255
    end
    object tabMDFEXML_STRING: TMemoField
      FieldName = 'XML_STRING'
      Origin = 'XML_STRING'
      BlobType = ftMemo
    end
    object tabMDFEXML_STRING_PROTOCOLO: TMemoField
      FieldName = 'XML_STRING_PROTOCOLO'
      Origin = 'XML_STRING_PROTOCOLO'
      BlobType = ftMemo
    end
    object tabMDFEXML_CANC_DATAHORA: TSQLTimeStampField
      FieldName = 'XML_CANC_DATAHORA'
      Origin = 'XML_CANC_DATAHORA'
    end
    object tabMDFEXML_CANC_PROTOCOLO: TStringField
      FieldName = 'XML_CANC_PROTOCOLO'
      Origin = 'XML_CANC_PROTOCOLO'
      Size = 50
    end
    object tabMDFEXML_CANC_STRING: TMemoField
      FieldName = 'XML_CANC_STRING'
      Origin = 'XML_CANC_STRING'
      BlobType = ftMemo
    end
    object tabMDFEAQUA_CNPJ: TStringField
      FieldName = 'AQUA_CNPJ'
      Origin = 'AQUA_CNPJ'
    end
    object tabMDFEAQUA_EMBARCACAO_TIPO: TStringField
      FieldName = 'AQUA_EMBARCACAO_TIPO'
      Origin = 'AQUA_EMBARCACAO_TIPO'
      Size = 2
    end
    object tabMDFEAQUA_EMBARCACAO_CODIGO: TStringField
      FieldName = 'AQUA_EMBARCACAO_CODIGO'
      Origin = 'AQUA_EMBARCACAO_CODIGO'
      Size = 10
    end
    object tabMDFEAQUA_EMBARCACAO_VIAGEM_NUMERO: TStringField
      FieldName = 'AQUA_EMBARCACAO_VIAGEM_NUMERO'
      Origin = 'AQUA_EMBARCACAO_VIAGEM_NUMERO'
      Size = 10
    end
    object tabMDFEAQUA_EMBARCACAO_NOME: TStringField
      FieldName = 'AQUA_EMBARCACAO_NOME'
      Origin = 'AQUA_EMBARCACAO_NOME'
      Size = 60
    end
    object tabMDFEAQUA_EMBARCACAO_CODPORTO_EMB: TStringField
      FieldName = 'AQUA_EMBARCACAO_CODPORTO_EMB'
      Origin = 'AQUA_EMBARCACAO_CODPORTO_EMB'
      Size = 5
    end
    object tabMDFEAQUA_EMBARCACAO_CODPORTO_DEST: TStringField
      FieldName = 'AQUA_EMBARCACAO_CODPORTO_DEST'
      Origin = 'AQUA_EMBARCACAO_CODPORTO_DEST'
      Size = 5
    end
    object tabMDFEVEICULO_CHASSI: TStringField
      FieldName = 'VEICULO_CHASSI'
      Origin = 'VEICULO_CHASSI'
      Size = 17
    end
    object tabMDFEMDFE_1FLD: TLargeintField
      FieldName = 'MDFE_1FLD'
      Origin = 'MDFE_1FLD'
    end
    object tabMDFEEMI_N_PROP_BAIRRO: TStringField
      FieldName = 'EMI_N_PROP_BAIRRO'
      Origin = 'EMI_N_PROP_BAIRRO'
      Size = 60
    end
    object tabMDFEEMI_N_PROP_RUA: TStringField
      FieldName = 'EMI_N_PROP_RUA'
      Origin = 'EMI_N_PROP_RUA'
      Size = 60
    end
    object tabMDFEEMI_N_PROP_NUMERO: TStringField
      FieldName = 'EMI_N_PROP_NUMERO'
      Origin = 'EMI_N_PROP_NUMERO'
      Size = 60
    end
    object tabMDFEEMI_N_PROP_COMPLEMENTO: TStringField
      FieldName = 'EMI_N_PROP_COMPLEMENTO'
      Origin = 'EMI_N_PROP_COMPLEMENTO'
      Size = 30
    end
    object tabMDFEEMI_N_PROP_CEP: TIntegerField
      FieldName = 'EMI_N_PROP_CEP'
      Origin = 'EMI_N_PROP_CEP'
    end
    object tabMDFEEMI_N_PROP_CODIGO_MUNICIPIO: TIntegerField
      FieldName = 'EMI_N_PROP_CODIGO_MUNICIPIO'
      Origin = 'EMI_N_PROP_CODIGO_MUNICIPIO'
    end
    object tabMDFEEMI_N_PROP_CELULAR: TLargeintField
      FieldName = 'EMI_N_PROP_CELULAR'
      Origin = 'EMI_N_PROP_CELULAR'
    end
    object tabMDFEVEICULO_MARCA: TStringField
      FieldName = 'VEICULO_MARCA'
      Origin = 'VEICULO_MARCA'
      Size = 30
    end
    object tabMDFEVEICULO_MODELO: TStringField
      FieldName = 'VEICULO_MODELO'
      Origin = 'VEICULO_MODELO'
      Size = 100
    end
    object tabMDFEVEICULO_COR: TStringField
      FieldName = 'VEICULO_COR'
      Origin = 'VEICULO_COR'
      Size = 3
    end
    object tabMDFEVEICULO_COR_DESCRICAO: TStringField
      FieldName = 'VEICULO_COR_DESCRICAO'
      Origin = 'VEICULO_COR_DESCRICAO'
      Size = 40
    end
    object tabMDFEVEICULO_ANO_FABRICACAO: TIntegerField
      FieldName = 'VEICULO_ANO_FABRICACAO'
      Origin = 'VEICULO_ANO_FABRICACAO'
    end
    object tabMDFEVEICULO_ANO_MODELO: TIntegerField
      FieldName = 'VEICULO_ANO_MODELO'
      Origin = 'VEICULO_ANO_MODELO'
    end
    object tabMDFEVEICULO_NUMERO_EIXOS: TSmallintField
      FieldName = 'VEICULO_NUMERO_EIXOS'
      Origin = 'VEICULO_NUMERO_EIXOS'
    end
    object tabMDFEVEICULO_CODIGO_MUNICIPIO: TIntegerField
      FieldName = 'VEICULO_CODIGO_MUNICIPIO'
      Origin = 'VEICULO_CODIGO_MUNICIPIO'
    end
  end
  object updEvento: TFDQuery
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'INSERT INTO MDFE_EVENTO'
      
        '  (ID_EMPRESA, ID_MDFE, ID_SERIE, ID_MDFE_EVENTO, TIPO, DTHR_EVE' +
        'NTO, LOTE, DTHR_PROTOCOLO, NUMERO_PROTOCOLO, STATUS, MOTIVO, OBS' +
        'ERVACAO, XML, SEQUENCIA)'
      'VALUES'
      
        '  (:ID_EMPRESA, :ID_MDFE, :ID_SERIE, :ID_MDFE_EVENTO, :TIPO, :DT' +
        'HR_EVENTO, :LOTE, :DTHR_PROTOCOLO, :NUMERO_PROTOCOLO, :STATUS, :' +
        'MOTIVO, :OBSERVACAO, :XML, :SEQUENCIA)')
    Left = 1143
    Top = 600
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_MDFE'
        ParamType = ptInput
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_MDFE_EVENTO'
        ParamType = ptInput
      end
      item
        Name = 'TIPO'
        DataType = ftString
        ParamType = ptInput
        Size = 10
      end
      item
        Name = 'DTHR_EVENTO'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'LOTE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'DTHR_PROTOCOLO'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'NUMERO_PROTOCOLO'
        DataType = ftString
        ParamType = ptInput
        Size = 15
      end
      item
        Name = 'STATUS'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'MOTIVO'
        DataType = ftString
        ParamType = ptInput
        Size = 300
      end
      item
        Name = 'OBSERVACAO'
        DataType = ftBlob
        ParamType = ptInput
      end
      item
        Name = 'XML'
        DataType = ftBlob
        ParamType = ptInput
      end
      item
        Name = 'SEQUENCIA'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object updEnviado: TFDQuery
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'UPDATE MDFE'
      'SET ID_SITUACAO            = :ID_SITUACAO,'
      '    XML_CHAVE              = :XML_CHAVE,'
      '    XML_PROTOCOLO          = :XML_PROTOCOLO,'
      '    XML_STRING_PROTOCOLO   = :XML_STRING_PROTOCOLO,'
      '    XML_PROCOCOLO_DATAHORA = :XML_PROCOCOLO_DATAHORA,'
      '    XML_STATUS_CODIGO      = :XML_STATUS_CODIGO,'
      '    XML_XMOTIVO            = :XML_XMOTIVO'
      
        'WHERE (ID_EMPRESA = :ID_EMPRESA) AND (ID_MDFE = :ID_MDFE) AND (I' +
        'D_SERIE = :ID_SERIE);')
    Left = 1143
    Top = 656
    ParamData = <
      item
        Name = 'ID_SITUACAO'
        ParamType = ptInput
      end
      item
        Name = 'XML_CHAVE'
        ParamType = ptInput
      end
      item
        Name = 'XML_PROTOCOLO'
        ParamType = ptInput
      end
      item
        Name = 'XML_STRING_PROTOCOLO'
        ParamType = ptInput
      end
      item
        Name = 'XML_PROCOCOLO_DATAHORA'
        ParamType = ptInput
      end
      item
        Name = 'XML_STATUS_CODIGO'
        ParamType = ptInput
      end
      item
        Name = 'XML_XMOTIVO'
        ParamType = ptInput
      end
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_MDFE'
        ParamType = ptInput
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object SaveDialog: TSaveDialog
    Left = 31
    Top = 296
  end
  object qryMDFE: TFDQuery
    BeforeOpen = qryMDFEBeforeOpen
    AfterOpen = qryMDFEAfterOpen
    AfterClose = qryMDFEAfterOpen
    CachedUpdates = True
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'SELECT'
      '  MDFE.*'
      'FROM'
      '  MDFE'
      'WHERE'
      '  1=1'
      '  AND ID_MDFE = :ID_MDFE'
      '  AND ID_SERIE = :ID_SERIE'
      '  AND ID_EMPRESA = :ID_EMPRESA')
    Left = 660
    Top = 16
    ParamData = <
      item
        Name = 'ID_MDFE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryMDFEID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Required = True
    end
    object qryMDFEID_MDFE: TIntegerField
      FieldName = 'ID_MDFE'
      Required = True
    end
    object qryMDFEID_SERIE: TIntegerField
      FieldName = 'ID_SERIE'
      Required = True
    end
    object qryMDFEDATAHORA_EMISSAO: TSQLTimeStampField
      FieldName = 'DATAHORA_EMISSAO'
      Required = True
    end
    object qryMDFEDATAHORA_INICIO_VIAGEM: TSQLTimeStampField
      FieldName = 'DATAHORA_INICIO_VIAGEM'
    end
    object qryMDFEID_UF_INICIAL: TStringField
      FieldName = 'ID_UF_INICIAL'
      FixedChar = True
      Size = 8
    end
    object qryMDFEID_TIPO_EMITENTE: TIntegerField
      FieldName = 'ID_TIPO_EMITENTE'
    end
    object qryMDFEID_TIPO_TRANSPORTADOR: TIntegerField
      FieldName = 'ID_TIPO_TRANSPORTADOR'
    end
    object qryMDFEID_MODALIDADE: TIntegerField
      FieldName = 'ID_MODALIDADE'
    end
    object qryMDFEID_FORMA_EMISSAO: TIntegerField
      FieldName = 'ID_FORMA_EMISSAO'
    end
    object qryMDFEID_UF_FINAL: TStringField
      FieldName = 'ID_UF_FINAL'
      FixedChar = True
      Size = 8
    end
    object qryMDFEVEICULO_RNTRC: TStringField
      FieldName = 'VEICULO_RNTRC'
      Size = 10
    end
    object qryMDFEVEICULO_COD_AGENDA_PORT: TStringField
      FieldName = 'VEICULO_COD_AGENDA_PORT'
    end
    object qryMDFEVEICULO_CODIGO_INTERNO: TStringField
      FieldName = 'VEICULO_CODIGO_INTERNO'
      Size = 10
    end
    object qryMDFEVEICULO_TIPO_CARROCERIA: TIntegerField
      FieldName = 'VEICULO_TIPO_CARROCERIA'
    end
    object qryMDFEVEICULO_PLACA: TStringField
      FieldName = 'VEICULO_PLACA'
      Size = 10
    end
    object qryMDFEVEICULO_TARA: TFMTBCDField
      FieldName = 'VEICULO_TARA'
      Precision = 18
      Size = 2
    end
    object qryMDFEVEICULO_UF: TStringField
      FieldName = 'VEICULO_UF'
      FixedChar = True
      Size = 2
    end
    object qryMDFEVEICULO_RENAVAN: TStringField
      FieldName = 'VEICULO_RENAVAN'
      Size = 15
    end
    object qryMDFEVEICULO_TIPO_RODADO: TIntegerField
      FieldName = 'VEICULO_TIPO_RODADO'
    end
    object qryMDFEVEICULO_CAPACIDADE_KG: TFMTBCDField
      FieldName = 'VEICULO_CAPACIDADE_KG'
      Precision = 18
      Size = 2
    end
    object qryMDFEVEICULO_CAPACIDADE_M3: TFMTBCDField
      FieldName = 'VEICULO_CAPACIDADE_M3'
      Precision = 18
      Size = 2
    end
    object qryMDFEEMI_N_PROP: TStringField
      FieldName = 'EMI_N_PROP'
      FixedChar = True
      Size = 1
    end
    object qryMDFEEMI_N_PROP_TIPO: TIntegerField
      FieldName = 'EMI_N_PROP_TIPO'
    end
    object qryMDFEEMI_N_PROP_UF: TStringField
      FieldName = 'EMI_N_PROP_UF'
      FixedChar = True
      Size = 2
    end
    object qryMDFEEMI_N_PROP_RNTRC: TStringField
      FieldName = 'EMI_N_PROP_RNTRC'
      Size = 10
    end
    object qryMDFEEMI_N_PROP_CPF_CNPJ: TStringField
      FieldName = 'EMI_N_PROP_CPF_CNPJ'
    end
    object qryMDFEEMI_N_PROP_RZSOCIAL: TStringField
      FieldName = 'EMI_N_PROP_RZSOCIAL'
      Size = 100
    end
    object qryMDFEEMI_N_PROP_IE: TStringField
      FieldName = 'EMI_N_PROP_IE'
    end
    object qryMDFETOTF_VLR_TOT_MERCADORIA: TFMTBCDField
      FieldName = 'TOTF_VLR_TOT_MERCADORIA'
      Precision = 18
      Size = 2
    end
    object qryMDFETOTF_COD_UNIDADE: TIntegerField
      FieldName = 'TOTF_COD_UNIDADE'
    end
    object qryMDFETOTF_PES_BRUTO: TFMTBCDField
      FieldName = 'TOTF_PES_BRUTO'
      Precision = 18
      Size = 2
    end
    object qryMDFEINF_ADIC_FISCO: TMemoField
      FieldName = 'INF_ADIC_FISCO'
      BlobType = ftMemo
    end
    object qryMDFEINF_ADIC_CONTRIBUINTE: TMemoField
      FieldName = 'INF_ADIC_CONTRIBUINTE'
      BlobType = ftMemo
    end
    object qryMDFEID_SITUACAO: TStringField
      FieldName = 'ID_SITUACAO'
      FixedChar = True
      Size = 1
    end
    object qryMDFEXML_CHAVE: TStringField
      FieldName = 'XML_CHAVE'
      FixedChar = True
      Size = 44
    end
    object qryMDFEXML_PROTOCOLO: TStringField
      FieldName = 'XML_PROTOCOLO'
      Size = 50
    end
    object qryMDFEXML_PROCOCOLO_DATAHORA: TSQLTimeStampField
      FieldName = 'XML_PROCOCOLO_DATAHORA'
    end
    object qryMDFEXML_STATUS_CODIGO: TIntegerField
      FieldName = 'XML_STATUS_CODIGO'
    end
    object qryMDFEXML_XMOTIVO: TStringField
      FieldName = 'XML_XMOTIVO'
      Size = 255
    end
    object qryMDFEXML_STRING: TMemoField
      FieldName = 'XML_STRING'
      BlobType = ftMemo
    end
    object qryMDFEXML_STRING_PROTOCOLO: TMemoField
      FieldName = 'XML_STRING_PROTOCOLO'
      BlobType = ftMemo
    end
    object qryMDFEXML_CANC_DATAHORA: TSQLTimeStampField
      FieldName = 'XML_CANC_DATAHORA'
    end
    object qryMDFEXML_CANC_PROTOCOLO: TStringField
      FieldName = 'XML_CANC_PROTOCOLO'
      Size = 50
    end
    object qryMDFEXML_CANC_STRING: TMemoField
      FieldName = 'XML_CANC_STRING'
      BlobType = ftMemo
    end
    object qryMDFEAQUA_CNPJ: TStringField
      FieldName = 'AQUA_CNPJ'
    end
    object qryMDFEAQUA_EMBARCACAO_TIPO: TStringField
      FieldName = 'AQUA_EMBARCACAO_TIPO'
      Size = 2
    end
    object qryMDFEAQUA_EMBARCACAO_CODIGO: TStringField
      FieldName = 'AQUA_EMBARCACAO_CODIGO'
      Size = 10
    end
    object qryMDFEAQUA_EMBARCACAO_VIAGEM_NUMERO: TStringField
      FieldName = 'AQUA_EMBARCACAO_VIAGEM_NUMERO'
      Size = 10
    end
    object qryMDFEAQUA_EMBARCACAO_NOME: TStringField
      FieldName = 'AQUA_EMBARCACAO_NOME'
      Size = 60
    end
    object qryMDFEAQUA_EMBARCACAO_CODPORTO_EMB: TStringField
      FieldName = 'AQUA_EMBARCACAO_CODPORTO_EMB'
      Size = 5
    end
    object qryMDFEAQUA_EMBARCACAO_CODPORTO_DEST: TStringField
      FieldName = 'AQUA_EMBARCACAO_CODPORTO_DEST'
      Size = 5
    end
  end
  object qryEMPRESA: TFDQuery
    BeforeOpen = qryEMPRESABeforeOpen
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'SELECT'
      '  EMPRESA.*,'
      '  CIDADES_UF.CODIBGE AS UF_IBGE,'
      '  CIDADES.DESCRICAO AS CIDADE'
      'FROM'
      '  EMPRESA'
      
        '    LEFT JOIN CIDADES_UF ON EMPRESA.ID_CIDADES_UF   = CIDADES_UF' +
        '.ID_CIDADES_UF'
      
        '    LEFT JOIN CIDADES    ON EMPRESA.ID_CIDADES_IBGE = CIDADES.ID' +
        '_CIDADES_IBGE'
      'WHERE'
      '  1=1'
      '  AND ID_EMPRESA = :ID_EMPRESA')
    Left = 1143
    Top = 16
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryEMPRESAID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryEMPRESAID_REGIME: TIntegerField
      FieldName = 'ID_REGIME'
      Origin = 'ID_REGIME'
    end
    object qryEMPRESAID_INDICADOR_ATIVIDADE: TIntegerField
      FieldName = 'ID_INDICADOR_ATIVIDADE'
      Origin = 'ID_INDICADOR_ATIVIDADE'
    end
    object qryEMPRESARAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Size = 100
    end
    object qryEMPRESANOMEFANTASIA: TStringField
      FieldName = 'NOMEFANTASIA'
      Origin = 'NOMEFANTASIA'
      Size = 100
    end
    object qryEMPRESACNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Size = 18
    end
    object qryEMPRESAIE_ESTADUAL: TStringField
      FieldName = 'IE_ESTADUAL'
      Origin = 'IE_ESTADUAL'
    end
    object qryEMPRESACNAE_FISCAL: TStringField
      FieldName = 'CNAE_FISCAL'
      Origin = 'CNAE_FISCAL'
    end
    object qryEMPRESAIE_MUNICIPAL: TStringField
      FieldName = 'IE_MUNICIPAL'
      Origin = 'IE_MUNICIPAL'
    end
    object qryEMPRESAIE_ESTADUAL_ST: TStringField
      FieldName = 'IE_ESTADUAL_ST'
      Origin = 'IE_ESTADUAL_ST'
    end
    object qryEMPRESAENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 100
    end
    object qryEMPRESANUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 10
    end
    object qryEMPRESACOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 30
    end
    object qryEMPRESABAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 50
    end
    object qryEMPRESAID_CIDADES_IBGE: TIntegerField
      FieldName = 'ID_CIDADES_IBGE'
      Origin = 'ID_CIDADES_IBGE'
    end
    object qryEMPRESAID_CIDADES_UF: TStringField
      FieldName = 'ID_CIDADES_UF'
      Origin = 'ID_CIDADES_UF'
      FixedChar = True
      Size = 2
    end
    object qryEMPRESACEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      FixedChar = True
      Size = 9
    end
    object qryEMPRESATELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 15
    end
    object qryEMPRESACELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Size = 15
    end
    object qryEMPRESAEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 100
    end
    object qryEMPRESAWEBSITE: TStringField
      FieldName = 'WEBSITE'
      Origin = 'WEBSITE'
      Size = 100
    end
    object qryEMPRESADATA_ABERTURA: TDateField
      FieldName = 'DATA_ABERTURA'
      Origin = 'DATA_ABERTURA'
    end
    object qryEMPRESACADASTRO_DATA: TSQLTimeStampField
      FieldName = 'CADASTRO_DATA'
      Origin = 'CADASTRO_DATA'
    end
    object qryEMPRESAALTERACAO_DATA: TSQLTimeStampField
      FieldName = 'ALTERACAO_DATA'
      Origin = 'ALTERACAO_DATA'
    end
    object qryEMPRESARESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      Origin = 'RESPONSAVEL'
      Size = 100
    end
    object qryEMPRESALOGOTIPO_LOCAL: TStringField
      FieldName = 'LOGOTIPO_LOCAL'
      Origin = 'LOGOTIPO_LOCAL'
      Size = 300
    end
    object qryEMPRESACTEOS_ID_SERIE: TIntegerField
      FieldName = 'CTEOS_ID_SERIE'
      Origin = 'CTEOS_ID_SERIE'
    end
    object qryEMPRESAMDFE_ID_SERIE: TIntegerField
      FieldName = 'MDFE_ID_SERIE'
      Origin = 'MDFE_ID_SERIE'
    end
    object qryEMPRESAUF_IBGE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'UF_IBGE'
      Origin = 'CODIBGE'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryEMPRESACIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CIDADE'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  object updChave: TFDQuery
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'UPDATE MDFE'
      'SET XML_CHAVE   = :XML_CHAVE,'
      '    XML_STRING  = :XML_STRING'
      
        'WHERE (ID_EMPRESA = :ID_EMPRESA) AND (ID_MDFE = :ID_MDFE) AND (I' +
        'D_SERIE = :ID_SERIE);')
    Left = 1143
    Top = 544
    ParamData = <
      item
        Name = 'XML_CHAVE'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 44
        Value = Null
      end
      item
        Name = 'XML_STRING'
        DataType = ftMemo
        ParamType = ptInput
      end
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_MDFE'
        ParamType = ptInput
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object qryCIDADES_UF: TFDQuery
    CachedUpdates = True
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'select * from cidades_uf')
    Left = 1143
    Top = 124
    object qryCIDADES_UFID_CIDADES_UF: TStringField
      FieldName = 'ID_CIDADES_UF'
      Origin = 'ID_CIDADES_UF'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 2
    end
    object qryCIDADES_UFCODIBGE: TIntegerField
      FieldName = 'CODIBGE'
      Origin = 'CODIBGE'
      Required = True
    end
    object qryCIDADES_UFDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 30
    end
  end
  object tabMDFE_LOCAL_CARREGAMENTO: TFDQuery
    BeforePost = tabMDFE_LOCAL_CARREGAMENTOBeforePost
    IndexFieldNames = 'ID_MDFE;ID_SERIE;ID_EMPRESA'
    MasterSource = dtstabMDFE
    MasterFields = 'ID_MDFE;ID_SERIE;ID_EMPRESA'
    DetailFields = 'ID_MDFE;ID_SERIE;ID_EMPRESA'
    OnUpdateError = tabMDFE_LOCAL_CARREGAMENTOUpdateError
    Connection = dtmDefault.cnx_BD
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'SELECT'
      '  MDFE_LOCAL_CARREGAMENTO.*'
      'FROM'
      '  MDFE_LOCAL_CARREGAMENTO'
      'WHERE'
      '  1=1'
      '  AND ID_MDFE = :ID_MDFE'
      '  AND ID_SERIE = :ID_SERIE'
      '  AND ID_EMPRESA = :ID_EMPRESA'
      'ORDER BY'
      '  MDFE_LOCAL_CARREGAMENTO.DTHR'
      '')
    Left = 200
    Top = 72
    ParamData = <
      item
        Name = 'ID_MDFE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object tabMDFE_LOCAL_CARREGAMENTOID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      Required = True
    end
    object tabMDFE_LOCAL_CARREGAMENTOID_MDFE: TIntegerField
      FieldName = 'ID_MDFE'
      Origin = 'ID_MDFE'
      Required = True
    end
    object tabMDFE_LOCAL_CARREGAMENTOID_SERIE: TIntegerField
      FieldName = 'ID_SERIE'
      Origin = 'ID_SERIE'
      Required = True
    end
    object tabMDFE_LOCAL_CARREGAMENTOID_UF: TStringField
      FieldName = 'ID_UF'
      Origin = 'ID_UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object tabMDFE_LOCAL_CARREGAMENTOID_MUNICIPIO: TIntegerField
      FieldName = 'ID_MUNICIPIO'
      Origin = 'ID_MUNICIPIO'
      Required = True
    end
    object tabMDFE_LOCAL_CARREGAMENTODTHR: TSQLTimeStampField
      FieldName = 'DTHR'
      Origin = 'DTHR'
      Required = True
    end
    object tabMDFE_LOCAL_CARREGAMENTOlookCIDADE: TStringField
      FieldKind = fkLookup
      FieldName = 'lookCIDADE'
      LookupDataSet = qryCIDADES
      LookupKeyFields = 'ID_CIDADES_IBGE'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ID_MUNICIPIO'
      Size = 100
      Lookup = True
    end
  end
  object qryCIDADES_LOCAL_CARREGAMENTO: TFDQuery
    CachedUpdates = True
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'SELECT '
      '  * '
      'FROM '
      '  CIDADES '
      'WHERE '
      '  ID_CIDADES_UF = :ID_CIDADES_UF')
    Left = 1143
    Top = 227
    ParamData = <
      item
        Name = 'ID_CIDADES_UF'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 2
        Value = Null
      end>
    object qryCIDADES_LOCAL_CARREGAMENTOID_CIDADES_IBGE: TIntegerField
      FieldName = 'ID_CIDADES_IBGE'
      Origin = 'ID_CIDADES_IBGE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCIDADES_LOCAL_CARREGAMENTOID_CIDADES_UF: TStringField
      FieldName = 'ID_CIDADES_UF'
      Origin = 'ID_CIDADES_UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object qryCIDADES_LOCAL_CARREGAMENTOID_PAIS: TIntegerField
      FieldName = 'ID_PAIS'
      Origin = 'ID_PAIS'
      Required = True
    end
    object qryCIDADES_LOCAL_CARREGAMENTODESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
  end
  object dtstabMDFE: TDataSource
    DataSet = tabMDFE
    Left = 302
    Top = 16
  end
  object qryCIDADES: TFDQuery
    CachedUpdates = True
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'SELECT '
      '  * '
      'FROM '
      '  CIDADES '
      '')
    Left = 1143
    Top = 176
    object qryCIDADESID_CIDADES_IBGE: TIntegerField
      FieldName = 'ID_CIDADES_IBGE'
      Origin = 'ID_CIDADES_IBGE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCIDADESID_CIDADES_UF: TStringField
      FieldName = 'ID_CIDADES_UF'
      Origin = 'ID_CIDADES_UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object qryCIDADESID_PAIS: TIntegerField
      FieldName = 'ID_PAIS'
      Origin = 'ID_PAIS'
      Required = True
    end
    object qryCIDADESDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
  end
  object tabMDFE_UF_PERCURSO: TFDQuery
    BeforePost = tabMDFE_UF_PERCURSOBeforePost
    IndexFieldNames = 'ID_MDFE;ID_SERIE;ID_EMPRESA'
    MasterSource = dtstabMDFE
    MasterFields = 'ID_MDFE;ID_SERIE;ID_EMPRESA'
    DetailFields = 'ID_MDFE;ID_SERIE;ID_EMPRESA'
    OnUpdateError = tabMDFE_UF_PERCURSOUpdateError
    Connection = dtmDefault.cnx_BD
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'SELECT'
      '  MDFE_UF_PERCURSO.*'
      'FROM'
      '  MDFE_UF_PERCURSO'
      'WHERE'
      '  1=1'
      '  AND ID_MDFE = :ID_MDFE'
      '  AND ID_SERIE = :ID_SERIE'
      '  AND ID_EMPRESA = :ID_EMPRESA'
      'ORDER BY'
      '  DTHR')
    Left = 200
    Top = 124
    ParamData = <
      item
        Name = 'ID_MDFE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object tabMDFE_LACRE: TFDQuery
    BeforePost = tabMDFE_LACREBeforePost
    IndexFieldNames = 'ID_MDFE;ID_SERIE;ID_EMPRESA'
    MasterSource = dtstabMDFE
    MasterFields = 'ID_MDFE;ID_SERIE;ID_EMPRESA'
    DetailFields = 'ID_MDFE;ID_SERIE;ID_EMPRESA'
    OnUpdateError = tabMDFE_LACREUpdateError
    Connection = dtmDefault.cnx_BD
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'SELECT'
      '  MDFE_LACRE.*'
      'FROM'
      '  MDFE_LACRE'
      'WHERE'
      '  1=1'
      '  AND ID_MDFE = :ID_MDFE'
      '  AND ID_SERIE = :ID_SERIE'
      '  AND ID_EMPRESA = :ID_EMPRESA'
      'ORDER BY'
      '  LACRE')
    Left = 200
    Top = 843
    ParamData = <
      item
        Name = 'ID_MDFE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object tabMDFE_SEGUROS: TFDQuery
    BeforePost = tabMDFE_SEGUROSBeforePost
    IndexFieldNames = 'ID_MDFE;ID_SERIE;ID_EMPRESA'
    MasterSource = dtstabMDFE
    MasterFields = 'ID_MDFE;ID_SERIE;ID_EMPRESA'
    DetailFields = 'ID_MDFE;ID_SERIE;ID_EMPRESA'
    OnUpdateError = tabMDFE_SEGUROSUpdateError
    Connection = dtmDefault.cnx_BD
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'SELECT'
      '  MDFE_SEGUROS.*'
      'FROM'
      '  MDFE_SEGUROS'
      'WHERE'
      '  1=1'
      '  AND ID_MDFE = :ID_MDFE'
      '  AND ID_SERIE = :ID_SERIE'
      '  AND ID_EMPRESA = :ID_EMPRESA')
    Left = 200
    Top = 747
    ParamData = <
      item
        Name = 'ID_MDFE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object tabMDFE_SEGUROSID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMDFE_SEGUROSID_MDFE: TIntegerField
      FieldName = 'ID_MDFE'
      Origin = 'ID_MDFE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMDFE_SEGUROSID_SERIE: TIntegerField
      FieldName = 'ID_SERIE'
      Origin = 'ID_SERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMDFE_SEGUROSID_RESPONSAVEL: TIntegerField
      FieldName = 'ID_RESPONSAVEL'
      Origin = 'ID_RESPONSAVEL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMDFE_SEGUROSID_CNPJCPF: TStringField
      FieldName = 'ID_CNPJCPF'
      Origin = 'ID_CNPJCPF'
    end
    object tabMDFE_SEGUROSNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object tabMDFE_SEGUROSCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMDFE_SEGUROSAPOLICE: TStringField
      FieldName = 'APOLICE'
      Origin = 'APOLICE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object tabMDFE_CONDUTORES: TFDQuery
    BeforePost = tabMDFE_CONDUTORESBeforePost
    IndexFieldNames = 'ID_MDFE;ID_SERIE;ID_EMPRESA'
    MasterSource = dtstabMDFE
    MasterFields = 'ID_MDFE;ID_SERIE;ID_EMPRESA'
    DetailFields = 'ID_MDFE;ID_SERIE;ID_EMPRESA'
    OnUpdateError = tabMDFE_CONDUTORESUpdateError
    Connection = dtmDefault.cnx_BD
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'SELECT'
      '  MDFE_CONDUTORES.*'
      'FROM'
      '  MDFE_CONDUTORES'
      'WHERE'
      '  1=1'
      '  AND ID_MDFE = :ID_MDFE'
      '  AND ID_SERIE = :ID_SERIE'
      '  AND ID_EMPRESA = :ID_EMPRESA')
    Left = 200
    Top = 176
    ParamData = <
      item
        Name = 'ID_MDFE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object tabMDFE_CONDUTORESID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      Required = True
    end
    object tabMDFE_CONDUTORESID_SERIE: TIntegerField
      FieldName = 'ID_SERIE'
      Origin = 'ID_SERIE'
      Required = True
    end
    object tabMDFE_CONDUTORESID_MDFE: TIntegerField
      FieldName = 'ID_MDFE'
      Origin = 'ID_MDFE'
      Required = True
    end
    object tabMDFE_CONDUTORESID_CPF: TStringField
      FieldName = 'ID_CPF'
      Origin = 'ID_CPF'
      Required = True
      Size = 14
    end
    object tabMDFE_CONDUTORESNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
  end
  object tabMDFE_REBOQUE: TFDQuery
    BeforePost = tabMDFE_REBOQUEBeforePost
    IndexFieldNames = 'ID_MDFE;ID_SERIE;ID_EMPRESA'
    MasterSource = dtstabMDFE
    MasterFields = 'ID_MDFE;ID_SERIE;ID_EMPRESA'
    DetailFields = 'ID_MDFE;ID_SERIE;ID_EMPRESA'
    OnUpdateError = tabMDFE_REBOQUEUpdateError
    Connection = dtmDefault.cnx_BD
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'SELECT'
      '  MDFE_REBOQUE.*'
      'FROM'
      '  MDFE_REBOQUE'
      'WHERE'
      '  1=1'
      '  AND ID_MDFE = :ID_MDFE'
      '  AND ID_SERIE = :ID_SERIE'
      '  AND ID_EMPRESA = :ID_EMPRESA')
    Left = 200
    Top = 227
    ParamData = <
      item
        Name = 'ID_MDFE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object tabMDFE_REBOQUEID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Required = True
    end
    object tabMDFE_REBOQUEID_MDFE: TIntegerField
      FieldName = 'ID_MDFE'
      Required = True
    end
    object tabMDFE_REBOQUEID_SERIE: TIntegerField
      FieldName = 'ID_SERIE'
      Required = True
    end
    object tabMDFE_REBOQUEINTT: TStringField
      FieldName = 'INTT'
      Size = 10
    end
    object tabMDFE_REBOQUEPLACA: TStringField
      FieldName = 'PLACA'
      Required = True
      Size = 10
    end
    object tabMDFE_REBOQUEID_TIPO_RODADO: TIntegerField
      FieldName = 'ID_TIPO_RODADO'
      Required = True
    end
    object tabMDFE_REBOQUEUF: TStringField
      FieldName = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object tabMDFE_REBOQUECAPKG: TFMTBCDField
      FieldName = 'CAPKG'
      Required = True
      Precision = 18
      Size = 2
    end
    object tabMDFE_REBOQUECAPM3: TFMTBCDField
      FieldName = 'CAPM3'
      Precision = 18
      Size = 2
    end
    object tabMDFE_REBOQUETARA: TFMTBCDField
      FieldName = 'TARA'
      Required = True
      Precision = 18
      Size = 2
    end
    object tabMDFE_REBOQUERENAVAN: TStringField
      FieldName = 'RENAVAN'
      Size = 15
    end
  end
  object tabMDFE_CIOT: TFDQuery
    BeforePost = tabMDFE_CIOTBeforePost
    IndexFieldNames = 'ID_MDFE;ID_SERIE;ID_EMPRESA'
    MasterSource = dtstabMDFE
    MasterFields = 'ID_MDFE;ID_SERIE;ID_EMPRESA'
    DetailFields = 'ID_MDFE;ID_SERIE;ID_EMPRESA'
    OnUpdateError = tabMDFE_CIOTUpdateError
    Connection = dtmDefault.cnx_BD
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'SELECT'
      '  MDFE_CIOT.*'
      'FROM'
      '  MDFE_CIOT'
      'WHERE'
      '  1=1'
      '  AND ID_MDFE = :ID_MDFE'
      '  AND ID_SERIE = :ID_SERIE'
      '  AND ID_EMPRESA = :ID_EMPRESA')
    Left = 200
    Top = 278
    ParamData = <
      item
        Name = 'ID_MDFE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object tabMDFE_CIOTID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      Required = True
    end
    object tabMDFE_CIOTID_MDFE: TIntegerField
      FieldName = 'ID_MDFE'
      Origin = 'ID_MDFE'
      Required = True
    end
    object tabMDFE_CIOTID_SERIE: TIntegerField
      FieldName = 'ID_SERIE'
      Origin = 'ID_SERIE'
      Required = True
    end
    object tabMDFE_CIOTCIOT: TStringField
      FieldName = 'CIOT'
      Origin = 'CIOT'
      Required = True
      Size = 12
    end
    object tabMDFE_CIOTCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
    end
  end
  object tabMDFE_CONTRATANTES: TFDQuery
    BeforePost = tabMDFE_CONTRATANTESBeforePost
    IndexFieldNames = 'ID_MDFE;ID_SERIE;ID_EMPRESA'
    MasterSource = dtstabMDFE
    MasterFields = 'ID_MDFE;ID_SERIE;ID_EMPRESA'
    DetailFields = 'ID_MDFE;ID_SERIE;ID_EMPRESA'
    OnUpdateError = tabMDFE_CONTRATANTESUpdateError
    Connection = dtmDefault.cnx_BD
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'SELECT'
      '  MDFE_CONTRATANTES.*'
      'FROM'
      '  MDFE_CONTRATANTES'
      'WHERE'
      '  1=1'
      '  AND ID_MDFE = :ID_MDFE'
      '  AND ID_SERIE = :ID_SERIE'
      '  AND ID_EMPRESA = :ID_EMPRESA')
    Left = 200
    Top = 331
    ParamData = <
      item
        Name = 'ID_MDFE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object tabMDFE_CONTRATANTESID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      Required = True
    end
    object tabMDFE_CONTRATANTESID_MDFE: TIntegerField
      FieldName = 'ID_MDFE'
      Origin = 'ID_MDFE'
      Required = True
    end
    object tabMDFE_CONTRATANTESID_SERIE: TIntegerField
      FieldName = 'ID_SERIE'
      Origin = 'ID_SERIE'
      Required = True
    end
    object tabMDFE_CONTRATANTESCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
    end
  end
  object tabMDFE_VALEPEDAGIO: TFDQuery
    BeforePost = tabMDFE_VALEPEDAGIOBeforePost
    OnNewRecord = tabMDFE_VALEPEDAGIONewRecord
    IndexFieldNames = 'ID_MDFE;ID_SERIE;ID_EMPRESA'
    MasterSource = dtstabMDFE
    MasterFields = 'ID_MDFE;ID_SERIE;ID_EMPRESA'
    DetailFields = 'ID_MDFE;ID_SERIE;ID_EMPRESA'
    OnUpdateError = tabMDFE_VALEPEDAGIOUpdateError
    Connection = dtmDefault.cnx_BD
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'SELECT'
      '  MDFE_VALEPEDAGIO.*'
      'FROM'
      '  MDFE_VALEPEDAGIO'
      'WHERE'
      '  1=1'
      '  AND ID_MDFE = :ID_MDFE'
      '  AND ID_SERIE = :ID_SERIE'
      '  AND ID_EMPRESA = :ID_EMPRESA')
    Left = 200
    Top = 381
    ParamData = <
      item
        Name = 'ID_MDFE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object tabMDFE_VALEPEDAGIOID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Required = True
    end
    object tabMDFE_VALEPEDAGIOID_MDFE: TIntegerField
      FieldName = 'ID_MDFE'
      Required = True
    end
    object tabMDFE_VALEPEDAGIOID_SERIE: TIntegerField
      FieldName = 'ID_SERIE'
      Required = True
    end
    object tabMDFE_VALEPEDAGIOCNPJFORN: TStringField
      FieldName = 'CNPJFORN'
      Required = True
    end
    object tabMDFE_VALEPEDAGIOCNPJPG: TStringField
      FieldName = 'CNPJPG'
    end
    object tabMDFE_VALEPEDAGIONCOMPRA: TStringField
      FieldName = 'NCOMPRA'
      Required = True
    end
    object tabMDFE_VALEPEDAGIOVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Required = True
      Precision = 18
      Size = 2
    end
  end
  object qryCIDADES_MUNICIPIO_DESCARREGAMENTO: TFDQuery
    CachedUpdates = True
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'SELECT '
      '  * '
      'FROM '
      '  CIDADES '
      'WHERE '
      '  ID_CIDADES_UF = :ID_CIDADES_UF')
    Left = 1143
    Top = 278
    ParamData = <
      item
        Name = 'ID_CIDADES_UF'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 2
        Value = Null
      end>
    object qryCIDADES_MUNICIPIO_DESCARREGAMENTOID_CIDADES_IBGE: TIntegerField
      FieldName = 'ID_CIDADES_IBGE'
      Origin = 'ID_CIDADES_IBGE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCIDADES_MUNICIPIO_DESCARREGAMENTOID_CIDADES_UF: TStringField
      FieldName = 'ID_CIDADES_UF'
      Origin = 'ID_CIDADES_UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object qryCIDADES_MUNICIPIO_DESCARREGAMENTOID_PAIS: TIntegerField
      FieldName = 'ID_PAIS'
      Origin = 'ID_PAIS'
      Required = True
    end
    object qryCIDADES_MUNICIPIO_DESCARREGAMENTODESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
  end
  object tabMDFE_LOCAL_DESCARREGAMENTO: TFDQuery
    BeforePost = tabMDFE_LOCAL_DESCARREGAMENTOBeforePost
    IndexFieldNames = 'ID_MDFE;ID_SERIE;ID_EMPRESA'
    MasterSource = dtstabMDFE
    MasterFields = 'ID_MDFE;ID_SERIE;ID_EMPRESA'
    DetailFields = 'ID_MDFE;ID_SERIE;ID_EMPRESA'
    OnUpdateError = tabMDFE_LOCAL_DESCARREGAMENTOUpdateError
    Connection = dtmDefault.cnx_BD
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'SELECT'
      '  MDFE_LOCAL_DESCARREGAMENTO.*'
      'FROM'
      '  MDFE_LOCAL_DESCARREGAMENTO'
      'WHERE'
      '  1=1'
      '  AND ID_MDFE = :ID_MDFE'
      '  AND ID_SERIE = :ID_SERIE'
      '  AND ID_EMPRESA = :ID_EMPRESA')
    Left = 200
    Top = 433
    ParamData = <
      item
        Name = 'ID_MDFE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object tabMDFE_LOCAL_DESCARREGAMENTOID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMDFE_LOCAL_DESCARREGAMENTOID_MDFE: TIntegerField
      FieldName = 'ID_MDFE'
      Origin = 'ID_MDFE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMDFE_LOCAL_DESCARREGAMENTOID_SERIE: TIntegerField
      FieldName = 'ID_SERIE'
      Origin = 'ID_SERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMDFE_LOCAL_DESCARREGAMENTOID_CIDADES_UF: TStringField
      FieldName = 'ID_CIDADES_UF'
      Origin = 'ID_CIDADES_UF'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 2
    end
    object tabMDFE_LOCAL_DESCARREGAMENTOID_CIDADES_IBGE: TIntegerField
      FieldName = 'ID_CIDADES_IBGE'
      Origin = 'ID_CIDADES_IBGE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMDFE_LOCAL_DESCARREGAMENTOlookCIDADE: TStringField
      FieldKind = fkLookup
      FieldName = 'lookCIDADE'
      LookupDataSet = qryCIDADES
      LookupKeyFields = 'ID_CIDADES_IBGE'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ID_CIDADES_IBGE'
      Size = 100
      Lookup = True
    end
  end
  object tabMDFE_CTE: TFDQuery
    BeforePost = tabMDFE_CTEBeforePost
    OnNewRecord = tabMDFE_CTENewRecord
    IndexFieldNames = 'ID_EMPRESA;ID_MDFE;ID_SERIE;ID_CIDADES_UF;ID_CIDADES_IBGE'
    MasterSource = dtstabMDFE_LOCAL_DESCARREGAMENTO
    MasterFields = 'ID_EMPRESA;ID_MDFE;ID_SERIE;ID_CIDADES_UF;ID_CIDADES_IBGE'
    DetailFields = 'ID_EMPRESA;ID_MDFE;ID_SERIE;ID_CIDADES_UF;ID_CIDADES_IBGE'
    OnUpdateError = tabMDFE_CTEUpdateError
    Connection = dtmDefault.cnx_BD
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'SELECT'
      '  MDFE_CTE.*'
      'FROM'
      '  MDFE_CTE'
      'WHERE'
      '  1=1'
      '  AND ID_EMPRESA      = :ID_EMPRESA'
      '  AND ID_MDFE         = :ID_MDFE'
      '  AND ID_SERIE        = :ID_SERIE'
      '  AND ID_CIDADES_UF   = :ID_CIDADES_UF'
      '  AND ID_CIDADES_IBGE = :ID_CIDADES_IBGE '
      ''
      '  ')
    Left = 200
    Top = 485
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_MDFE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_CIDADES_UF'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 2
      end
      item
        Name = 'ID_CIDADES_IBGE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object tabMDFE_CTEID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMDFE_CTEID_MDFE: TIntegerField
      FieldName = 'ID_MDFE'
      Origin = 'ID_MDFE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMDFE_CTEID_SERIE: TIntegerField
      FieldName = 'ID_SERIE'
      Origin = 'ID_SERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMDFE_CTEID_CHAVE: TStringField
      FieldName = 'ID_CHAVE'
      Origin = 'ID_CHAVE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object tabMDFE_CTEID_IND_REENTREGA: TStringField
      FieldName = 'ID_IND_REENTREGA'
      Origin = 'ID_IND_REENTREGA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object tabMDFE_CTEID_CIDADES_UF: TStringField
      FieldName = 'ID_CIDADES_UF'
      Origin = 'ID_CIDADES_UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object tabMDFE_CTEID_CIDADES_IBGE: TIntegerField
      FieldName = 'ID_CIDADES_IBGE'
      Origin = 'ID_CIDADES_IBGE'
      Required = True
    end
    object tabMDFE_CTElookCIDADE: TStringField
      FieldKind = fkLookup
      FieldName = 'lookCIDADE'
      LookupDataSet = qryCIDADES
      LookupKeyFields = 'ID_CIDADES_IBGE'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ID_CIDADES_IBGE'
      Size = 100
      Lookup = True
    end
  end
  object dtstabMDFE_LOCAL_DESCARREGAMENTO: TDataSource
    DataSet = tabMDFE_LOCAL_DESCARREGAMENTO
    Left = 362
    Top = 439
  end
  object tabMDFE_CTE_UNIDTRANS: TFDQuery
    BeforePost = tabMDFE_CTE_UNIDTRANSBeforePost
    IndexFieldNames = 'ID_EMPRESA;ID_MDFE;ID_SERIE;ID_CHAVE'
    MasterSource = dtstabMDFE_CTE
    MasterFields = 'ID_EMPRESA;ID_MDFE;ID_SERIE;ID_CHAVE'
    DetailFields = 'ID_EMPRESA;ID_MDFE;ID_SERIE;ID_CHAVE'
    OnUpdateError = tabMDFE_CTE_UNIDTRANSUpdateError
    Connection = dtmDefault.cnx_BD
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'SELECT'
      '  MDFE_CTE_UNIDTRANS.*'
      'FROM'
      '  MDFE_CTE_UNIDTRANS'
      'WHERE'
      '  1=1'
      '  AND ID_EMPRESA = :ID_EMPRESA'
      '  AND ID_MDFE    = :ID_MDFE'
      '  AND ID_SERIE   = :ID_SERIE'
      '  AND ID_CHAVE   = :ID_CHAVE'
      '  ')
    Left = 200
    Top = 536
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_MDFE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_CHAVE'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end>
    object tabMDFE_CTE_UNIDTRANSID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMDFE_CTE_UNIDTRANSID_MDFE: TIntegerField
      FieldName = 'ID_MDFE'
      Origin = 'ID_MDFE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMDFE_CTE_UNIDTRANSID_SERIE: TIntegerField
      FieldName = 'ID_SERIE'
      Origin = 'ID_SERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMDFE_CTE_UNIDTRANSID_CHAVE: TStringField
      FieldName = 'ID_CHAVE'
      Origin = 'ID_CHAVE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object tabMDFE_CTE_UNIDTRANSID_TIPO: TIntegerField
      FieldName = 'ID_TIPO'
      Origin = 'ID_TIPO'
      Required = True
    end
    object tabMDFE_CTE_UNIDTRANSID_IDENTIFICACAO: TStringField
      FieldName = 'ID_IDENTIFICACAO'
      Origin = 'ID_IDENTIFICACAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMDFE_CTE_UNIDTRANSQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Required = True
      Precision = 18
      Size = 2
    end
  end
  object dtstabMDFE_CTE: TDataSource
    DataSet = tabMDFE_CTE
    Left = 314
    Top = 496
  end
  object tabMDFE_CTE_UNIDTRANS_LACRE: TFDQuery
    BeforePost = tabMDFE_CTE_UNIDTRANS_LACREBeforePost
    IndexFieldNames = 'ID_EMPRESA;ID_MDFE;ID_SERIE;ID_CHAVE;ID_IDENTIFICACAO'
    MasterSource = dtstabMDFE_CTE_UNIDTRANS
    MasterFields = 'ID_EMPRESA;ID_MDFE;ID_SERIE;ID_CHAVE;ID_IDENTIFICACAO'
    DetailFields = 'ID_EMPRESA;ID_MDFE;ID_SERIE;ID_CHAVE;ID_IDENTIFICACAO'
    OnUpdateError = tabMDFE_CTE_UNIDTRANS_LACREUpdateError
    Connection = dtmDefault.cnx_BD
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'SELECT'
      '  MDFE_CTE_UNIDTRANS_LACRE.*'
      'FROM'
      '  MDFE_CTE_UNIDTRANS_LACRE'
      'WHERE'
      '  1=1'
      '  AND ID_EMPRESA       = :ID_EMPRESA'
      '  AND ID_MDFE          = :ID_MDFE'
      '  AND ID_SERIE         = :ID_SERIE'
      '  AND ID_CHAVE         = :ID_CHAVE'
      '  AND ID_IDENTIFICACAO = :ID_IDENTIFICACAO'
      '  ')
    Left = 200
    Top = 589
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_MDFE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_CHAVE'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Name = 'ID_IDENTIFICACAO'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end>
    object tabMDFE_CTE_UNIDTRANS_LACREID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMDFE_CTE_UNIDTRANS_LACREID_MDFE: TIntegerField
      FieldName = 'ID_MDFE'
      Origin = 'ID_MDFE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMDFE_CTE_UNIDTRANS_LACREID_SERIE: TIntegerField
      FieldName = 'ID_SERIE'
      Origin = 'ID_SERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMDFE_CTE_UNIDTRANS_LACREID_CHAVE: TStringField
      FieldName = 'ID_CHAVE'
      Origin = 'ID_CHAVE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object tabMDFE_CTE_UNIDTRANS_LACREID_LACRE: TStringField
      FieldName = 'ID_LACRE'
      Origin = 'ID_LACRE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMDFE_CTE_UNIDTRANS_LACREID_IDENTIFICACAO: TStringField
      FieldName = 'ID_IDENTIFICACAO'
      Origin = 'ID_IDENTIFICACAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dtstabMDFE_CTE_UNIDTRANS: TDataSource
    DataSet = tabMDFE_CTE_UNIDTRANS
    Left = 306
    Top = 557
  end
  object qryMDFE_LOCAL_CARREGAMENTO: TFDQuery
    CachedUpdates = True
    MasterSource = dtsqryMDFE
    MasterFields = 'ID_EMPRESA;ID_MDFE;ID_SERIE'
    Connection = dtmDefault.cnx_BD
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'SELECT'
      '  MDFE_LOCAL_CARREGAMENTO.ID_MUNICIPIO,'
      '  CIDADES.DESCRICAO AS MUNICIPIO'
      'FROM'
      '  MDFE_LOCAL_CARREGAMENTO'
      
        '    LEFT JOIN CIDADES ON MDFE_LOCAL_CARREGAMENTO.ID_MUNICIPIO = ' +
        'CIDADES.ID_CIDADES_IBGE'
      'WHERE'
      '  1=1'
      '  AND ID_EMPRESA = :ID_EMPRESA'
      '  AND ID_MDFE    = :ID_MDFE'
      '  AND ID_SERIE   = :ID_SERIE'
      ''
      'ORDER BY'
      '  MDFE_LOCAL_CARREGAMENTO.DTHR'
      '')
    Left = 660
    Top = 72
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_MDFE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryMDFE_LOCAL_CARREGAMENTOID_MUNICIPIO: TIntegerField
      FieldName = 'ID_MUNICIPIO'
      Origin = 'ID_MUNICIPIO'
      Required = True
    end
    object qryMDFE_LOCAL_CARREGAMENTOMUNICIPIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUNICIPIO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  object dtsqryMDFE: TDataSource
    DataSet = qryMDFE
    Left = 774
    Top = 8
  end
  object qryMDFE_CONDUTORES: TFDQuery
    CachedUpdates = True
    MasterSource = dtsqryMDFE
    MasterFields = 'ID_EMPRESA;ID_MDFE;ID_SERIE'
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'SELECT'
      '  MDFE_CONDUTORES.NOME,'
      '  MDFE_CONDUTORES.ID_CPF'
      ''
      'FROM'
      '  MDFE_CONDUTORES'
      'WHERE'
      '  1=1'
      '  AND ID_EMPRESA = :ID_EMPRESA'
      '  AND ID_MDFE    = :ID_MDFE'
      '  AND ID_SERIE   = :ID_SERIE'
      '')
    Left = 660
    Top = 176
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_MDFE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryMDFE_CONDUTORESNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object qryMDFE_CONDUTORESID_CPF: TStringField
      FieldName = 'ID_CPF'
      Origin = 'ID_CPF'
      Required = True
      Size = 14
    end
  end
  object qryMDFE_REBOQUE: TFDQuery
    CachedUpdates = True
    MasterSource = dtsqryMDFE
    MasterFields = 'ID_EMPRESA;ID_MDFE;ID_SERIE'
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'SELECT'
      '  MDFE_REBOQUE.INTT,'
      '  MDFE_REBOQUE.PLACA,'
      '  MDFE_REBOQUE.ID_TIPO_RODADO,'
      '  MDFE_REBOQUE.UF,'
      '  MDFE_REBOQUE.CAPKG,'
      '  MDFE_REBOQUE.CAPM3,'
      '  MDFE_REBOQUE.TARA,'
      '  MDFE_REBOQUE.RENAVAN'
      'FROM'
      '  MDFE_REBOQUE'
      'WHERE'
      '  1=1'
      '  AND ID_EMPRESA = :ID_EMPRESA'
      '  AND ID_MDFE    = :ID_MDFE'
      '  AND ID_SERIE   = :ID_SERIE'
      '')
    Left = 660
    Top = 227
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_MDFE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryMDFE_REBOQUEINTT: TStringField
      FieldName = 'INTT'
      Size = 10
    end
    object qryMDFE_REBOQUEPLACA: TStringField
      FieldName = 'PLACA'
      Required = True
      Size = 10
    end
    object qryMDFE_REBOQUEID_TIPO_RODADO: TIntegerField
      FieldName = 'ID_TIPO_RODADO'
      Required = True
    end
    object qryMDFE_REBOQUEUF: TStringField
      FieldName = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object qryMDFE_REBOQUECAPKG: TFMTBCDField
      FieldName = 'CAPKG'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryMDFE_REBOQUECAPM3: TFMTBCDField
      FieldName = 'CAPM3'
      Precision = 18
      Size = 2
    end
    object qryMDFE_REBOQUETARA: TFMTBCDField
      FieldName = 'TARA'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryMDFE_REBOQUERENAVAN: TStringField
      FieldName = 'RENAVAN'
      Size = 15
    end
  end
  object qryMDFE_VALEPEDAGIO: TFDQuery
    CachedUpdates = True
    MasterSource = dtsqryMDFE
    MasterFields = 'ID_EMPRESA;ID_MDFE;ID_SERIE'
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'SELECT'
      '  MDFE_VALEPEDAGIO.CNPJFORN,'
      '  MDFE_VALEPEDAGIO.CNPJPG,'
      '  MDFE_VALEPEDAGIO.NCOMPRA,'
      '  MDFE_VALEPEDAGIO.VALOR'
      'FROM'
      '  MDFE_VALEPEDAGIO'
      'WHERE'
      '  1=1'
      '  AND ID_EMPRESA = :ID_EMPRESA'
      '  AND ID_MDFE    = :ID_MDFE'
      '  AND ID_SERIE   = :ID_SERIE'
      '')
    Left = 660
    Top = 381
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_MDFE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryMDFE_VALEPEDAGIOCNPJFORN: TStringField
      FieldName = 'CNPJFORN'
      Required = True
    end
    object qryMDFE_VALEPEDAGIOCNPJPG: TStringField
      FieldName = 'CNPJPG'
    end
    object qryMDFE_VALEPEDAGIONCOMPRA: TStringField
      FieldName = 'NCOMPRA'
      Required = True
    end
    object qryMDFE_VALEPEDAGIOVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Required = True
      Precision = 18
      Size = 2
    end
  end
  object qryMDFE_LACRE: TFDQuery
    CachedUpdates = True
    MasterSource = dtsqryMDFE
    MasterFields = 'ID_EMPRESA;ID_MDFE;ID_SERIE'
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'SELECT'
      '  MDFE_LACRE.LACRE'
      'FROM'
      '  MDFE_LACRE'
      'WHERE'
      '  1=1'
      '  AND ID_EMPRESA = :ID_EMPRESA'
      '  AND ID_MDFE    = :ID_MDFE'
      '  AND ID_SERIE   = :ID_SERIE'
      'ORDER BY'
      '  LACRE')
    Left = 660
    Top = 843
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_MDFE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryMDFE_LACRELACRE: TStringField
      FieldName = 'LACRE'
      Origin = 'LACRE'
      Required = True
      Size = 50
    end
  end
  object qryMDFE_SEGUROS: TFDQuery
    CachedUpdates = True
    MasterSource = dtsqryMDFE
    MasterFields = 'ID_EMPRESA;ID_MDFE;ID_SERIE'
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  MDFE_SEGUROS'
      'WHERE'
      '  1=1'
      '  AND ID_EMPRESA = :ID_EMPRESA'
      '  AND ID_MDFE    = :ID_MDFE'
      '  AND ID_SERIE   = :ID_SERIE'
      '')
    Left = 660
    Top = 747
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_MDFE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryMDFE_SEGUROSID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMDFE_SEGUROSID_MDFE: TIntegerField
      FieldName = 'ID_MDFE'
      Origin = 'ID_MDFE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMDFE_SEGUROSID_SERIE: TIntegerField
      FieldName = 'ID_SERIE'
      Origin = 'ID_SERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMDFE_SEGUROSID_RESPONSAVEL: TIntegerField
      FieldName = 'ID_RESPONSAVEL'
      Origin = 'ID_RESPONSAVEL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMDFE_SEGUROSID_CNPJCPF: TStringField
      FieldName = 'ID_CNPJCPF'
      Origin = 'ID_CNPJCPF'
    end
    object qryMDFE_SEGUROSNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object qryMDFE_SEGUROSCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMDFE_SEGUROSAPOLICE: TStringField
      FieldName = 'APOLICE'
      Origin = 'APOLICE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object qryMDFE_CIOT: TFDQuery
    CachedUpdates = True
    MasterSource = dtsqryMDFE
    MasterFields = 'ID_EMPRESA;ID_MDFE;ID_SERIE'
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'SELECT'
      '  MDFE_CIOT.CIOT,'
      '  MDFE_CIOT.CNPJ'
      'FROM'
      '  MDFE_CIOT'
      'WHERE'
      '  1=1'
      '  AND ID_EMPRESA = :ID_EMPRESA'
      '  AND ID_MDFE    = :ID_MDFE'
      '  AND ID_SERIE   = :ID_SERIE'
      '')
    Left = 660
    Top = 278
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_MDFE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryMDFE_CIOTCIOT: TStringField
      FieldName = 'CIOT'
      Origin = 'CIOT'
      Required = True
      Size = 12
    end
    object qryMDFE_CIOTCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
    end
  end
  object tabMDFE_SEGUROS_AVERBACAO: TFDQuery
    BeforePost = tabMDFE_SEGUROS_AVERBACAOBeforePost
    AfterPost = tabMDFE_SEGUROS_AVERBACAOAfterPost
    AfterDelete = tabMDFE_SEGUROS_AVERBACAOAfterPost
    IndexFieldNames = 'ID_EMPRESA;ID_MDFE;ID_SERIE;CNPJ;APOLICE'
    MasterSource = dtstabMDFE_SEGUROS
    MasterFields = 'ID_EMPRESA;ID_MDFE;ID_SERIE;CNPJ;APOLICE'
    DetailFields = 'ID_EMPRESA;ID_MDFE;ID_SERIE;CNPJ;APOLICE'
    OnUpdateError = tabMDFE_SEGUROS_AVERBACAOUpdateError
    Connection = dtmDefault.cnx_BD
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'SELECT'
      '  MDFE_SEGUROS_AVERBACAO.*'
      'FROM'
      '  MDFE_SEGUROS_AVERBACAO'
      'WHERE'
      '  1=1'
      '  AND ID_EMPRESA = :ID_EMPRESA'
      '  AND ID_MDFE    = :ID_MDFE'
      '  AND ID_SERIE   = :ID_SERIE'
      '  AND CNPJ       = :CNPJ'
      '  AND APOLICE    = :APOLICE'
      ''
      '')
    Left = 200
    Top = 795
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_MDFE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CNPJ'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end
      item
        Name = 'APOLICE'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end>
    object tabMDFE_SEGUROS_AVERBACAOID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMDFE_SEGUROS_AVERBACAOID_MDFE: TIntegerField
      FieldName = 'ID_MDFE'
      Origin = 'ID_MDFE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMDFE_SEGUROS_AVERBACAOID_SERIE: TIntegerField
      FieldName = 'ID_SERIE'
      Origin = 'ID_SERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMDFE_SEGUROS_AVERBACAONAVER: TStringField
      FieldName = 'NAVER'
      Origin = 'NAVER'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object tabMDFE_SEGUROS_AVERBACAOCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMDFE_SEGUROS_AVERBACAOAPOLICE: TStringField
      FieldName = 'APOLICE'
      Origin = 'APOLICE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dtstabMDFE_SEGUROS: TDataSource
    DataSet = tabMDFE_SEGUROS
    Left = 272
    Top = 752
  end
  object qryMDFE_SEGUROS_AVERBACAO: TFDQuery
    CachedUpdates = True
    MasterSource = dtsqryMDFE_SEGUROS
    MasterFields = 'ID_EMPRESA;ID_MDFE;ID_SERIE;CNPJ;APOLICE'
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'SELECT'
      '  MDFE_SEGUROS_AVERBACAO.NAVER'
      'FROM'
      '  MDFE_SEGUROS_AVERBACAO'
      'WHERE'
      '  1=1'
      '  AND ID_EMPRESA = :ID_EMPRESA'
      '  AND ID_MDFE    = :ID_MDFE'
      '  AND ID_SERIE   = :ID_SERIE'
      '  AND CNPJ       = :CNPJ'
      '  AND APOLICE    = :APOLICE'
      ''
      '')
    Left = 660
    Top = 795
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_MDFE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CNPJ'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end
      item
        Name = 'APOLICE'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end>
    object qryMDFE_SEGUROS_AVERBACAONAVER: TStringField
      FieldName = 'NAVER'
      Origin = 'NAVER'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
  end
  object dtsqryMDFE_SEGUROS: TDataSource
    DataSet = qryMDFE_SEGUROS
    Left = 765
    Top = 752
  end
  object qryMDFE_LOCAL_DESCARREGAMENTO: TFDQuery
    CachedUpdates = True
    MasterSource = dtsqryMDFE
    MasterFields = 'ID_EMPRESA;ID_MDFE;ID_SERIE'
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'SELECT'
      '  MDFE_LOCAL_DESCARREGAMENTO.*,'
      '  CIDADES.DESCRICAO AS CIDADE_NOME'
      'FROM'
      '  MDFE_LOCAL_DESCARREGAMENTO'
      
        '    LEFT JOIN CIDADES ON MDFE_LOCAL_DESCARREGAMENTO.ID_CIDADES_I' +
        'BGE = CIDADES.ID_CIDADES_IBGE'
      'WHERE'
      '  1=1'
      '  AND ID_EMPRESA = :ID_EMPRESA'
      '  AND ID_MDFE    = :ID_MDFE'
      '  AND ID_SERIE   = :ID_SERIE'
      '')
    Left = 660
    Top = 433
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_MDFE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryMDFE_LOCAL_DESCARREGAMENTOID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      Required = True
    end
    object qryMDFE_LOCAL_DESCARREGAMENTOID_MDFE: TIntegerField
      FieldName = 'ID_MDFE'
      Origin = 'ID_MDFE'
      Required = True
    end
    object qryMDFE_LOCAL_DESCARREGAMENTOID_SERIE: TIntegerField
      FieldName = 'ID_SERIE'
      Origin = 'ID_SERIE'
      Required = True
    end
    object qryMDFE_LOCAL_DESCARREGAMENTOID_CIDADES_UF: TStringField
      FieldName = 'ID_CIDADES_UF'
      Origin = 'ID_CIDADES_UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object qryMDFE_LOCAL_DESCARREGAMENTOID_CIDADES_IBGE: TIntegerField
      FieldName = 'ID_CIDADES_IBGE'
      Origin = 'ID_CIDADES_IBGE'
      Required = True
    end
    object qryMDFE_LOCAL_DESCARREGAMENTOCIDADE_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CIDADE_NOME'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  object dtsqryMDFE_LOCAL_DESCARREGAMENTO: TDataSource
    DataSet = qryMDFE_LOCAL_DESCARREGAMENTO
    Left = 767
    Top = 423
  end
  object qryMDFE_CTE: TFDQuery
    CachedUpdates = True
    MasterSource = dtsqryMDFE_LOCAL_DESCARREGAMENTO
    MasterFields = 'ID_EMPRESA;ID_MDFE;ID_SERIE;ID_CIDADES_IBGE'
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'SELECT'
      '  MDFE_CTE.*'
      'FROM'
      '  MDFE_CTE'
      'WHERE'
      '  1=1'
      '  AND ID_EMPRESA      = :ID_EMPRESA'
      '  AND ID_MDFE         = :ID_MDFE'
      '  AND ID_SERIE        = :ID_SERIE'
      '  AND ID_CIDADES_IBGE = :ID_CIDADES_IBGE'
      '  ')
    Left = 660
    Top = 485
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_MDFE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_CIDADES_IBGE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryMDFE_CTEID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMDFE_CTEID_MDFE: TIntegerField
      FieldName = 'ID_MDFE'
      Origin = 'ID_MDFE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMDFE_CTEID_SERIE: TIntegerField
      FieldName = 'ID_SERIE'
      Origin = 'ID_SERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMDFE_CTEID_CHAVE: TStringField
      FieldName = 'ID_CHAVE'
      Origin = 'ID_CHAVE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object qryMDFE_CTEID_IND_REENTREGA: TStringField
      FieldName = 'ID_IND_REENTREGA'
      Origin = 'ID_IND_REENTREGA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryMDFE_CTEID_CIDADES_IBGE: TIntegerField
      FieldName = 'ID_CIDADES_IBGE'
      Origin = 'ID_CIDADES_IBGE'
      Required = True
    end
  end
  object dtsqryMDFE_CTE: TDataSource
    DataSet = qryMDFE_CTE
    Left = 767
    Top = 496
  end
  object qryMDFE_CTE_UNIDTRANS: TFDQuery
    CachedUpdates = True
    MasterSource = dtsqryMDFE_CTE
    MasterFields = 'ID_EMPRESA;ID_MDFE;ID_SERIE;ID_CHAVE'
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'SELECT'
      '  MDFE_CTE_UNIDTRANS.*'
      'FROM'
      '  MDFE_CTE_UNIDTRANS'
      'WHERE'
      '  1=1'
      '  AND ID_EMPRESA = :ID_EMPRESA'
      '  AND ID_MDFE    = :ID_MDFE'
      '  AND ID_SERIE   = :ID_SERIE'
      '  AND ID_CHAVE   = :ID_CHAVE'
      '  ')
    Left = 660
    Top = 536
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_MDFE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_CHAVE'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end>
    object qryMDFE_CTE_UNIDTRANSID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Required = True
    end
    object qryMDFE_CTE_UNIDTRANSID_MDFE: TIntegerField
      FieldName = 'ID_MDFE'
      Required = True
    end
    object qryMDFE_CTE_UNIDTRANSID_SERIE: TIntegerField
      FieldName = 'ID_SERIE'
      Required = True
    end
    object qryMDFE_CTE_UNIDTRANSID_CHAVE: TStringField
      FieldName = 'ID_CHAVE'
      Required = True
      Size = 50
    end
    object qryMDFE_CTE_UNIDTRANSID_TIPO: TIntegerField
      FieldName = 'ID_TIPO'
      Required = True
    end
    object qryMDFE_CTE_UNIDTRANSID_IDENTIFICACAO: TStringField
      FieldName = 'ID_IDENTIFICACAO'
      Required = True
    end
    object qryMDFE_CTE_UNIDTRANSQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Required = True
      Precision = 18
      Size = 2
    end
  end
  object dtsqryMDFE_CTE_UNIDTRANS: TDataSource
    DataSet = qryMDFE_CTE_UNIDTRANS
    Left = 775
    Top = 549
  end
  object qryMDFE_CTE_UNIDTRANS_LACRE: TFDQuery
    CachedUpdates = True
    MasterSource = dtsqryMDFE_CTE_UNIDTRANS
    MasterFields = 'ID_EMPRESA;ID_MDFE;ID_SERIE;ID_CHAVE;ID_IDENTIFICACAO'
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'SELECT'
      '  MDFE_CTE_UNIDTRANS_LACRE.*'
      'FROM'
      '  MDFE_CTE_UNIDTRANS_LACRE'
      'WHERE'
      '  1=1'
      '  AND ID_EMPRESA       = :ID_EMPRESA'
      '  AND ID_MDFE          = :ID_MDFE'
      '  AND ID_SERIE         = :ID_SERIE'
      '  AND ID_CHAVE         = :ID_CHAVE'
      '  AND ID_IDENTIFICACAO = :ID_IDENTIFICACAO'
      '  ')
    Left = 660
    Top = 589
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_MDFE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_CHAVE'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Name = 'ID_IDENTIFICACAO'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end>
    object qryMDFE_CTE_UNIDTRANS_LACREID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMDFE_CTE_UNIDTRANS_LACREID_MDFE: TIntegerField
      FieldName = 'ID_MDFE'
      Origin = 'ID_MDFE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMDFE_CTE_UNIDTRANS_LACREID_SERIE: TIntegerField
      FieldName = 'ID_SERIE'
      Origin = 'ID_SERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMDFE_CTE_UNIDTRANS_LACREID_CHAVE: TStringField
      FieldName = 'ID_CHAVE'
      Origin = 'ID_CHAVE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object qryMDFE_CTE_UNIDTRANS_LACREID_IDENTIFICACAO: TStringField
      FieldName = 'ID_IDENTIFICACAO'
      Origin = 'ID_IDENTIFICACAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMDFE_CTE_UNIDTRANS_LACREID_LACRE: TStringField
      FieldName = 'ID_LACRE'
      Origin = 'ID_LACRE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object tabMDFE_CTE_CARGTRANS: TFDQuery
    BeforePost = tabMDFE_CTE_CARGTRANSBeforePost
    IndexFieldNames = 'ID_EMPRESA;ID_MDFE;ID_SERIE;ID_CHAVE;ID_IDENTIFICACAO'
    MasterSource = dtstabMDFE_CTE_UNIDTRANS
    MasterFields = 'ID_EMPRESA;ID_MDFE;ID_SERIE;ID_CHAVE;ID_IDENTIFICACAO'
    DetailFields = 'ID_EMPRESA;ID_MDFE;ID_SERIE;ID_CHAVE;ID_IDENTIFICACAO'
    OnUpdateError = tabMDFE_CTE_CARGTRANSUpdateError
    Connection = dtmDefault.cnx_BD
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'SELECT'
      '  MDFE_CTE_CARGTRANS.*'
      'FROM'
      '  MDFE_CTE_CARGTRANS'
      'WHERE'
      '  1=1'
      '  AND ID_EMPRESA       = :ID_EMPRESA'
      '  AND ID_MDFE          = :ID_MDFE'
      '  AND ID_SERIE         = :ID_SERIE'
      '  AND ID_CHAVE         = :ID_CHAVE'
      '  AND ID_IDENTIFICACAO = :ID_IDENTIFICACAO'
      '  ')
    Left = 200
    Top = 640
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_MDFE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_CHAVE'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Name = 'ID_IDENTIFICACAO'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end>
    object tabMDFE_CTE_CARGTRANSID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Required = True
    end
    object tabMDFE_CTE_CARGTRANSID_MDFE: TIntegerField
      FieldName = 'ID_MDFE'
      Required = True
    end
    object tabMDFE_CTE_CARGTRANSID_SERIE: TIntegerField
      FieldName = 'ID_SERIE'
      Required = True
    end
    object tabMDFE_CTE_CARGTRANSID_CHAVE: TStringField
      FieldName = 'ID_CHAVE'
      Required = True
      Size = 50
    end
    object tabMDFE_CTE_CARGTRANSID_IDENTIFICACAO: TStringField
      FieldName = 'ID_IDENTIFICACAO'
      Required = True
    end
    object tabMDFE_CTE_CARGTRANSID_TIPO: TIntegerField
      FieldName = 'ID_TIPO'
      Required = True
    end
    object tabMDFE_CTE_CARGTRANSID_IDENTIFICADOR: TStringField
      FieldName = 'ID_IDENTIFICADOR'
      Required = True
    end
    object tabMDFE_CTE_CARGTRANSQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Required = True
      Precision = 18
      Size = 2
    end
  end
  object dtstabMDFE_CTE_CARGTRANS: TDataSource
    DataSet = tabMDFE_CTE_CARGTRANS
    Left = 306
    Top = 645
  end
  object tabMDFE_CTE_CARGTRANS_LACRE: TFDQuery
    BeforePost = tabMDFE_CTE_CARGTRANS_LACREBeforePost
    IndexFieldNames = 
      'ID_EMPRESA;ID_MDFE;ID_SERIE;ID_CHAVE;ID_IDENTIFICACAO;ID_IDENTIF' +
      'ICADOR'
    MasterSource = dtstabMDFE_CTE_CARGTRANS
    MasterFields = 
      'ID_EMPRESA;ID_MDFE;ID_SERIE;ID_CHAVE;ID_IDENTIFICACAO;ID_IDENTIF' +
      'ICADOR'
    DetailFields = 
      'ID_EMPRESA;ID_MDFE;ID_SERIE;ID_CHAVE;ID_IDENTIFICACAO;ID_IDENTIF' +
      'ICADOR'
    OnUpdateError = tabMDFE_CTE_CARGTRANS_LACREUpdateError
    Connection = dtmDefault.cnx_BD
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'SELECT'
      '  MDFE_CTE_CARGTRANS_LACRE.*'
      'FROM'
      '  MDFE_CTE_CARGTRANS_LACRE'
      'WHERE'
      '  1=1'
      '  AND ID_EMPRESA       = :ID_EMPRESA'
      '  AND ID_MDFE          = :ID_MDFE'
      '  AND ID_SERIE         = :ID_SERIE'
      '  AND ID_CHAVE         = :ID_CHAVE'
      '  AND ID_IDENTIFICACAO = :ID_IDENTIFICACAO'
      '  AND ID_IDENTIFICADOR = :ID_IDENTIFICADOR'
      '  ')
    Left = 200
    Top = 696
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_MDFE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_CHAVE'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Name = 'ID_IDENTIFICACAO'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end
      item
        Name = 'ID_IDENTIFICADOR'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end>
    object tabMDFE_CTE_CARGTRANS_LACREID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMDFE_CTE_CARGTRANS_LACREID_MDFE: TIntegerField
      FieldName = 'ID_MDFE'
      Origin = 'ID_MDFE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMDFE_CTE_CARGTRANS_LACREID_SERIE: TIntegerField
      FieldName = 'ID_SERIE'
      Origin = 'ID_SERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMDFE_CTE_CARGTRANS_LACREID_CHAVE: TStringField
      FieldName = 'ID_CHAVE'
      Origin = 'ID_CHAVE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object tabMDFE_CTE_CARGTRANS_LACREID_IDENTIFICACAO: TStringField
      FieldName = 'ID_IDENTIFICACAO'
      Origin = 'ID_IDENTIFICACAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMDFE_CTE_CARGTRANS_LACREID_IDENTIFICADOR: TStringField
      FieldName = 'ID_IDENTIFICADOR'
      Origin = 'ID_IDENTIFICADOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMDFE_CTE_CARGTRANS_LACREID_LACRE: TStringField
      FieldName = 'ID_LACRE'
      Origin = 'ID_LACRE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object qryMDFE_CTE_CARGTRANS: TFDQuery
    CachedUpdates = True
    MasterSource = dtsqryMDFE_CTE_UNIDTRANS
    MasterFields = 'ID_EMPRESA;ID_MDFE;ID_SERIE;ID_CHAVE;ID_IDENTIFICACAO'
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'SELECT'
      '  MDFE_CTE_CARGTRANS.*'
      'FROM'
      '  MDFE_CTE_CARGTRANS'
      'WHERE'
      '  1=1'
      '  AND ID_EMPRESA       = :ID_EMPRESA'
      '  AND ID_MDFE          = :ID_MDFE'
      '  AND ID_SERIE         = :ID_SERIE'
      '  AND ID_CHAVE         = :ID_CHAVE'
      '  AND ID_IDENTIFICACAO = :ID_IDENTIFICACAO'
      '  ')
    Left = 660
    Top = 640
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_MDFE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_CHAVE'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Name = 'ID_IDENTIFICACAO'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end>
    object qryMDFE_CTE_CARGTRANSID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Required = True
    end
    object qryMDFE_CTE_CARGTRANSID_MDFE: TIntegerField
      FieldName = 'ID_MDFE'
      Required = True
    end
    object qryMDFE_CTE_CARGTRANSID_SERIE: TIntegerField
      FieldName = 'ID_SERIE'
      Required = True
    end
    object qryMDFE_CTE_CARGTRANSID_CHAVE: TStringField
      FieldName = 'ID_CHAVE'
      Required = True
      Size = 50
    end
    object qryMDFE_CTE_CARGTRANSID_IDENTIFICACAO: TStringField
      FieldName = 'ID_IDENTIFICACAO'
      Required = True
    end
    object qryMDFE_CTE_CARGTRANSID_TIPO: TIntegerField
      FieldName = 'ID_TIPO'
      Required = True
    end
    object qryMDFE_CTE_CARGTRANSID_IDENTIFICADOR: TStringField
      FieldName = 'ID_IDENTIFICADOR'
      Required = True
    end
    object qryMDFE_CTE_CARGTRANSQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Required = True
      Precision = 18
      Size = 2
    end
  end
  object dtsqryMDFE_CTE_CARGTRANS: TDataSource
    DataSet = qryMDFE_CTE_CARGTRANS
    Left = 779
    Top = 645
  end
  object qryMDFE_CTE_CARGTRANS_LACRE: TFDQuery
    CachedUpdates = True
    MasterSource = dtsqryMDFE_CTE_CARGTRANS
    MasterFields = 
      'ID_EMPRESA;ID_MDFE;ID_SERIE;ID_CHAVE;ID_IDENTIFICACAO;ID_IDENTIF' +
      'ICADOR'
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'SELECT'
      '  MDFE_CTE_CARGTRANS_LACRE.*'
      'FROM'
      '  MDFE_CTE_CARGTRANS_LACRE'
      'WHERE'
      '  1=1'
      '  AND ID_EMPRESA       = :ID_EMPRESA'
      '  AND ID_MDFE          = :ID_MDFE'
      '  AND ID_SERIE         = :ID_SERIE'
      '  AND ID_CHAVE         = :ID_CHAVE'
      '  AND ID_IDENTIFICACAO = :ID_IDENTIFICACAO'
      '  AND ID_IDENTIFICADOR = :ID_IDENTIFICADOR'
      '  ')
    Left = 660
    Top = 696
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_MDFE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_CHAVE'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Name = 'ID_IDENTIFICACAO'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end
      item
        Name = 'ID_IDENTIFICADOR'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end>
    object qryMDFE_CTE_CARGTRANS_LACREID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMDFE_CTE_CARGTRANS_LACREID_MDFE: TIntegerField
      FieldName = 'ID_MDFE'
      Origin = 'ID_MDFE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMDFE_CTE_CARGTRANS_LACREID_SERIE: TIntegerField
      FieldName = 'ID_SERIE'
      Origin = 'ID_SERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMDFE_CTE_CARGTRANS_LACREID_CHAVE: TStringField
      FieldName = 'ID_CHAVE'
      Origin = 'ID_CHAVE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object qryMDFE_CTE_CARGTRANS_LACREID_IDENTIFICACAO: TStringField
      FieldName = 'ID_IDENTIFICACAO'
      Origin = 'ID_IDENTIFICACAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMDFE_CTE_CARGTRANS_LACREID_IDENTIFICADOR: TStringField
      FieldName = 'ID_IDENTIFICADOR'
      Origin = 'ID_IDENTIFICADOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMDFE_CTE_CARGTRANS_LACREID_LACRE: TStringField
      FieldName = 'ID_LACRE'
      Origin = 'ID_LACRE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object tabMDFE_NFE: TFDQuery
    BeforePost = tabMDFE_NFEBeforePost
    OnNewRecord = tabMDFE_NFENewRecord
    IndexFieldNames = 'ID_EMPRESA;ID_MDFE;ID_SERIE;ID_CIDADES_UF;ID_CIDADES_IBGE'
    MasterSource = dtstabMDFE_LOCAL_DESCARREGAMENTO
    MasterFields = 'ID_EMPRESA;ID_MDFE;ID_SERIE;ID_CIDADES_UF;ID_CIDADES_IBGE'
    DetailFields = 'ID_EMPRESA;ID_MDFE;ID_SERIE;ID_CIDADES_UF;ID_CIDADES_IBGE'
    OnUpdateError = tabMDFE_NFEUpdateError
    Connection = dtmDefault.cnx_BD
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'SELECT'
      '  MDFE_NFE.*'
      'FROM'
      '  MDFE_NFE'
      'WHERE'
      '  1=1'
      '  AND ID_EMPRESA      = :ID_EMPRESA'
      '  AND ID_MDFE         = :ID_MDFE'
      '  AND ID_SERIE        = :ID_SERIE'
      '  AND ID_CIDADES_UF   = :ID_CIDADES_UF'
      '  AND ID_CIDADES_IBGE = :ID_CIDADES_IBGE ')
    Left = 424
    Top = 485
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_MDFE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_CIDADES_UF'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 2
      end
      item
        Name = 'ID_CIDADES_IBGE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object tabMDFE_NFEID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMDFE_NFEID_MDFE: TIntegerField
      FieldName = 'ID_MDFE'
      Origin = 'ID_MDFE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMDFE_NFEID_SERIE: TIntegerField
      FieldName = 'ID_SERIE'
      Origin = 'ID_SERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMDFE_NFEID_CHAVE: TStringField
      FieldName = 'ID_CHAVE'
      Origin = 'ID_CHAVE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object tabMDFE_NFEID_IND_REENTREGA: TStringField
      FieldName = 'ID_IND_REENTREGA'
      Origin = 'ID_IND_REENTREGA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object tabMDFE_NFEID_CIDADES_UF: TStringField
      FieldName = 'ID_CIDADES_UF'
      Origin = 'ID_CIDADES_UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object tabMDFE_NFEID_CIDADES_IBGE: TIntegerField
      FieldName = 'ID_CIDADES_IBGE'
      Origin = 'ID_CIDADES_IBGE'
      Required = True
    end
    object tabMDFE_NFElookCIDADE: TStringField
      FieldKind = fkLookup
      FieldName = 'lookCIDADE'
      LookupDataSet = qryCIDADES
      LookupKeyFields = 'ID_CIDADES_IBGE'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ID_CIDADES_IBGE'
      Size = 100
      Lookup = True
    end
    object tabMDFE_NFEVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Precision = 18
      Size = 2
    end
    object tabMDFE_NFEPESO: TFMTBCDField
      FieldName = 'PESO'
      Origin = 'PESO'
      Precision = 18
      Size = 2
    end
  end
  object dtstabMDFE_NFE: TDataSource
    DataSet = tabMDFE_NFE
    Left = 527
    Top = 488
  end
  object tabMDFE_NFE_UNIDTRANS: TFDQuery
    IndexFieldNames = 'ID_EMPRESA;ID_MDFE;ID_SERIE;ID_CHAVE'
    MasterSource = dtstabMDFE_NFE
    MasterFields = 'ID_EMPRESA;ID_MDFE;ID_SERIE;ID_CHAVE'
    DetailFields = 'ID_EMPRESA;ID_MDFE;ID_SERIE;ID_CHAVE'
    OnUpdateError = tabMDFE_NFE_UNIDTRANSUpdateError
    Connection = dtmDefault.cnx_BD
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'SELECT'
      '  MDFE_NFE_UNIDTRANS.*'
      'FROM'
      '  MDFE_NFE_UNIDTRANS'
      'WHERE'
      '  1=1'
      '  AND ID_EMPRESA = :ID_EMPRESA'
      '  AND ID_MDFE    = :ID_MDFE'
      '  AND ID_SERIE   = :ID_SERIE'
      '  AND ID_CHAVE   = :ID_CHAVE'
      '  ')
    Left = 424
    Top = 536
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_MDFE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_CHAVE'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end>
    object tabMDFE_NFE_UNIDTRANSID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Required = True
    end
    object tabMDFE_NFE_UNIDTRANSID_MDFE: TIntegerField
      FieldName = 'ID_MDFE'
      Required = True
    end
    object tabMDFE_NFE_UNIDTRANSID_SERIE: TIntegerField
      FieldName = 'ID_SERIE'
      Required = True
    end
    object tabMDFE_NFE_UNIDTRANSID_CHAVE: TStringField
      FieldName = 'ID_CHAVE'
      Required = True
      Size = 50
    end
    object tabMDFE_NFE_UNIDTRANSID_TIPO: TIntegerField
      FieldName = 'ID_TIPO'
      Required = True
    end
    object tabMDFE_NFE_UNIDTRANSID_IDENTIFICACAO: TStringField
      FieldName = 'ID_IDENTIFICACAO'
      Required = True
    end
    object tabMDFE_NFE_UNIDTRANSQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Required = True
      Precision = 18
      Size = 2
    end
  end
  object dtstabMDFE_NFE_UNIDTRANS: TDataSource
    DataSet = tabMDFE_NFE_UNIDTRANS
    Left = 527
    Top = 557
  end
  object tabMDFE_NFE_UNIDTRANS_LACRE: TFDQuery
    IndexFieldNames = 'ID_EMPRESA;ID_MDFE;ID_SERIE;ID_CHAVE;ID_IDENTIFICACAO'
    MasterSource = dtstabMDFE_NFE_UNIDTRANS
    MasterFields = 'ID_EMPRESA;ID_MDFE;ID_SERIE;ID_CHAVE;ID_IDENTIFICACAO'
    DetailFields = 'ID_EMPRESA;ID_MDFE;ID_SERIE;ID_CHAVE;ID_IDENTIFICACAO'
    OnUpdateError = tabMDFE_NFE_UNIDTRANS_LACREUpdateError
    Connection = dtmDefault.cnx_BD
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'SELECT'
      '  MDFE_NFE_UNIDTRANS_LACRE.*'
      'FROM'
      '  MDFE_NFE_UNIDTRANS_LACRE'
      'WHERE'
      '  1=1'
      '  AND ID_EMPRESA       = :ID_EMPRESA'
      '  AND ID_MDFE          = :ID_MDFE'
      '  AND ID_SERIE         = :ID_SERIE'
      '  AND ID_CHAVE         = :ID_CHAVE'
      '  AND ID_IDENTIFICACAO = :ID_IDENTIFICACAO'
      '  ')
    Left = 424
    Top = 589
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_MDFE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_CHAVE'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Name = 'ID_IDENTIFICACAO'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end>
    object tabMDFE_NFE_UNIDTRANS_LACREID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMDFE_NFE_UNIDTRANS_LACREID_MDFE: TIntegerField
      FieldName = 'ID_MDFE'
      Origin = 'ID_MDFE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMDFE_NFE_UNIDTRANS_LACREID_SERIE: TIntegerField
      FieldName = 'ID_SERIE'
      Origin = 'ID_SERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMDFE_NFE_UNIDTRANS_LACREID_CHAVE: TStringField
      FieldName = 'ID_CHAVE'
      Origin = 'ID_CHAVE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object tabMDFE_NFE_UNIDTRANS_LACREID_IDENTIFICACAO: TStringField
      FieldName = 'ID_IDENTIFICACAO'
      Origin = 'ID_IDENTIFICACAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMDFE_NFE_UNIDTRANS_LACREID_LACRE: TStringField
      FieldName = 'ID_LACRE'
      Origin = 'ID_LACRE'
      Required = True
    end
  end
  object tabMDFE_NFE_CARGTRANS: TFDQuery
    IndexFieldNames = 'ID_EMPRESA;ID_MDFE;ID_SERIE;ID_CHAVE;ID_IDENTIFICACAO'
    MasterSource = dtstabMDFE_NFE_UNIDTRANS
    MasterFields = 'ID_EMPRESA;ID_MDFE;ID_SERIE;ID_CHAVE;ID_IDENTIFICACAO'
    DetailFields = 'ID_EMPRESA;ID_MDFE;ID_SERIE;ID_CHAVE;ID_IDENTIFICACAO'
    OnUpdateError = tabMDFE_NFE_CARGTRANSUpdateError
    Connection = dtmDefault.cnx_BD
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'SELECT'
      '  MDFE_NFE_CARGTRANS.*'
      'FROM'
      '  MDFE_NFE_CARGTRANS'
      'WHERE'
      '  1=1'
      '  AND ID_EMPRESA       = :ID_EMPRESA'
      '  AND ID_MDFE          = :ID_MDFE'
      '  AND ID_SERIE         = :ID_SERIE'
      '  AND ID_CHAVE         = :ID_CHAVE'
      '  AND ID_IDENTIFICACAO = :ID_IDENTIFICACAO'
      '  ')
    Left = 424
    Top = 640
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_MDFE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_CHAVE'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Name = 'ID_IDENTIFICACAO'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end>
    object tabMDFE_NFE_CARGTRANSID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Required = True
    end
    object tabMDFE_NFE_CARGTRANSID_MDFE: TIntegerField
      FieldName = 'ID_MDFE'
      Required = True
    end
    object tabMDFE_NFE_CARGTRANSID_SERIE: TIntegerField
      FieldName = 'ID_SERIE'
      Required = True
    end
    object tabMDFE_NFE_CARGTRANSID_CHAVE: TStringField
      FieldName = 'ID_CHAVE'
      Required = True
      Size = 50
    end
    object tabMDFE_NFE_CARGTRANSID_IDENTIFICACAO: TStringField
      FieldName = 'ID_IDENTIFICACAO'
      Required = True
    end
    object tabMDFE_NFE_CARGTRANSID_TIPO: TIntegerField
      FieldName = 'ID_TIPO'
      Required = True
    end
    object tabMDFE_NFE_CARGTRANSID_IDENTIFICADOR: TIntegerField
      FieldName = 'ID_IDENTIFICADOR'
      Required = True
    end
    object tabMDFE_NFE_CARGTRANSQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Required = True
      Precision = 18
      Size = 2
    end
  end
  object dtstabMDFE_NFE_CARGTRANS: TDataSource
    DataSet = tabMDFE_NFE_CARGTRANS
    Left = 527
    Top = 645
  end
  object tabMDFE_NFE_CARGTRANS_LACRE: TFDQuery
    IndexFieldNames = 
      'ID_EMPRESA;ID_MDFE;ID_SERIE;ID_CHAVE;ID_IDENTIFICACAO;ID_IDENTIF' +
      'ICADOR'
    MasterSource = dtstabMDFE_NFE_CARGTRANS
    MasterFields = 
      'ID_EMPRESA;ID_MDFE;ID_SERIE;ID_CHAVE;ID_IDENTIFICACAO;ID_IDENTIF' +
      'ICADOR'
    DetailFields = 
      'ID_EMPRESA;ID_MDFE;ID_SERIE;ID_CHAVE;ID_IDENTIFICACAO;ID_IDENTIF' +
      'ICADOR'
    OnUpdateError = tabMDFE_NFE_CARGTRANS_LACREUpdateError
    Connection = dtmDefault.cnx_BD
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'SELECT'
      '  MDFE_NFE_CARGTRANS_LACRE.*'
      'FROM'
      '  MDFE_NFE_CARGTRANS_LACRE'
      'WHERE'
      '  1=1'
      '  AND ID_EMPRESA       = :ID_EMPRESA'
      '  AND ID_MDFE          = :ID_MDFE'
      '  AND ID_SERIE         = :ID_SERIE'
      '  AND ID_CHAVE         = :ID_CHAVE'
      '  AND ID_IDENTIFICACAO = :ID_IDENTIFICACAO'
      '  AND ID_IDENTIFICADOR = :ID_IDENTIFICADOR'
      '  '
      ''
      '  ')
    Left = 424
    Top = 696
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_MDFE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_CHAVE'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Name = 'ID_IDENTIFICACAO'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end
      item
        Name = 'ID_IDENTIFICADOR'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object tabMDFE_NFE_CARGTRANS_LACREID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMDFE_NFE_CARGTRANS_LACREID_MDFE: TIntegerField
      FieldName = 'ID_MDFE'
      Origin = 'ID_MDFE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMDFE_NFE_CARGTRANS_LACREID_SERIE: TIntegerField
      FieldName = 'ID_SERIE'
      Origin = 'ID_SERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMDFE_NFE_CARGTRANS_LACREID_CHAVE: TStringField
      FieldName = 'ID_CHAVE'
      Origin = 'ID_CHAVE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object tabMDFE_NFE_CARGTRANS_LACREID_IDENTIFICACAO: TStringField
      FieldName = 'ID_IDENTIFICACAO'
      Origin = 'ID_IDENTIFICACAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMDFE_NFE_CARGTRANS_LACREID_IDENTIFICADOR: TIntegerField
      FieldName = 'ID_IDENTIFICADOR'
      Origin = 'ID_IDENTIFICADOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMDFE_NFE_CARGTRANS_LACREID_LACRE: TStringField
      FieldName = 'ID_LACRE'
      Origin = 'ID_LACRE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object tabMDFE_AUT_DOWNLOAD: TFDQuery
    BeforePost = tabMDFE_AUT_DOWNLOADBeforePost
    IndexFieldNames = 'ID_EMPRESA;ID_MDFE;ID_SERIE'
    MasterSource = dtstabMDFE
    MasterFields = 'ID_EMPRESA;ID_MDFE;ID_SERIE'
    DetailFields = 'ID_EMPRESA;ID_MDFE;ID_SERIE'
    OnUpdateError = tabMDFE_AUT_DOWNLOADUpdateError
    Connection = dtmDefault.cnx_BD
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'SELECT'
      '  MDFE_AUT_DOWNLOAD.*'
      'FROM'
      '  MDFE_AUT_DOWNLOAD'
      'WHERE'
      '  1=1'
      '  AND ID_EMPRESA = :ID_EMPRESA'
      '  AND ID_MDFE    = :ID_MDFE'
      '  AND ID_SERIE   = :ID_SERIE')
    Left = 200
    Top = 896
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_MDFE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object tabMDFE_AUT_DOWNLOADID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMDFE_AUT_DOWNLOADID_MDFE: TIntegerField
      FieldName = 'ID_MDFE'
      Origin = 'ID_MDFE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMDFE_AUT_DOWNLOADID_SERIE: TIntegerField
      FieldName = 'ID_SERIE'
      Origin = 'ID_SERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMDFE_AUT_DOWNLOADN_DOC: TStringField
      FieldName = 'N_DOC'
      Origin = 'N_DOC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object qryMDFE_NFE: TFDQuery
    CachedUpdates = True
    MasterSource = dtsqryMDFE_LOCAL_DESCARREGAMENTO
    MasterFields = 'ID_EMPRESA;ID_MDFE;ID_SERIE;ID_CIDADES_IBGE'
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'SELECT'
      '  MDFE_NFE.*'
      'FROM'
      '  MDFE_NFE'
      'WHERE'
      '  1=1'
      '  AND ID_EMPRESA      = :ID_EMPRESA'
      '  AND ID_MDFE         = :ID_MDFE'
      '  AND ID_SERIE        = :ID_SERIE'
      '  AND ID_CIDADES_IBGE = :ID_CIDADES_IBGE'
      '  ')
    Left = 888
    Top = 485
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_MDFE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_CIDADES_IBGE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryMDFE_NFEID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMDFE_NFEID_MDFE: TIntegerField
      FieldName = 'ID_MDFE'
      Origin = 'ID_MDFE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMDFE_NFEID_SERIE: TIntegerField
      FieldName = 'ID_SERIE'
      Origin = 'ID_SERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMDFE_NFEID_CHAVE: TStringField
      FieldName = 'ID_CHAVE'
      Origin = 'ID_CHAVE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object qryMDFE_NFEID_IND_REENTREGA: TStringField
      FieldName = 'ID_IND_REENTREGA'
      Origin = 'ID_IND_REENTREGA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryMDFE_NFEID_CIDADES_IBGE: TIntegerField
      FieldName = 'ID_CIDADES_IBGE'
      Origin = 'ID_CIDADES_IBGE'
      Required = True
    end
  end
  object qryMDFE_NFE_UNIDTRANS: TFDQuery
    CachedUpdates = True
    MasterSource = dtsqryMDFE_NFE
    MasterFields = 'ID_EMPRESA;ID_MDFE;ID_SERIE;ID_CHAVE'
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'SELECT'
      '  MDFE_NFE_UNIDTRANS.*'
      'FROM'
      '  MDFE_NFE_UNIDTRANS'
      'WHERE'
      '  1=1'
      '  AND ID_EMPRESA = :ID_EMPRESA'
      '  AND ID_MDFE    = :ID_MDFE'
      '  AND ID_SERIE   = :ID_SERIE'
      '  AND ID_CHAVE   = :ID_CHAVE'
      '  ')
    Left = 888
    Top = 536
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_MDFE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_CHAVE'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end>
    object qryMDFE_NFE_UNIDTRANSID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Required = True
    end
    object qryMDFE_NFE_UNIDTRANSID_MDFE: TIntegerField
      FieldName = 'ID_MDFE'
      Required = True
    end
    object qryMDFE_NFE_UNIDTRANSID_SERIE: TIntegerField
      FieldName = 'ID_SERIE'
      Required = True
    end
    object qryMDFE_NFE_UNIDTRANSID_CHAVE: TStringField
      FieldName = 'ID_CHAVE'
      Required = True
      Size = 50
    end
    object qryMDFE_NFE_UNIDTRANSID_TIPO: TIntegerField
      FieldName = 'ID_TIPO'
      Required = True
    end
    object qryMDFE_NFE_UNIDTRANSID_IDENTIFICACAO: TStringField
      FieldName = 'ID_IDENTIFICACAO'
      Required = True
    end
    object qryMDFE_NFE_UNIDTRANSQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Required = True
      Precision = 18
      Size = 2
    end
  end
  object qryMDFE_NFE_UNIDTRANS_LACRE: TFDQuery
    CachedUpdates = True
    MasterSource = dtsqryMDFE_NFE_UNIDTRANS
    MasterFields = 'ID_EMPRESA;ID_MDFE;ID_SERIE;ID_CHAVE;ID_IDENTIFICACAO'
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'SELECT'
      '  MDFE_NFE_UNIDTRANS_LACRE.*'
      'FROM'
      '  MDFE_NFE_UNIDTRANS_LACRE'
      'WHERE'
      '  1=1'
      '  AND ID_EMPRESA       = :ID_EMPRESA'
      '  AND ID_MDFE          = :ID_MDFE'
      '  AND ID_SERIE         = :ID_SERIE'
      '  AND ID_CHAVE         = :ID_CHAVE'
      '  AND ID_IDENTIFICACAO = :ID_IDENTIFICACAO'
      '  ')
    Left = 888
    Top = 589
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_MDFE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_CHAVE'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Name = 'ID_IDENTIFICACAO'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end>
    object qryMDFE_NFE_UNIDTRANS_LACREID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMDFE_NFE_UNIDTRANS_LACREID_MDFE: TIntegerField
      FieldName = 'ID_MDFE'
      Origin = 'ID_MDFE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMDFE_NFE_UNIDTRANS_LACREID_SERIE: TIntegerField
      FieldName = 'ID_SERIE'
      Origin = 'ID_SERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMDFE_NFE_UNIDTRANS_LACREID_CHAVE: TStringField
      FieldName = 'ID_CHAVE'
      Origin = 'ID_CHAVE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object qryMDFE_NFE_UNIDTRANS_LACREID_IDENTIFICACAO: TStringField
      FieldName = 'ID_IDENTIFICACAO'
      Origin = 'ID_IDENTIFICACAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMDFE_NFE_UNIDTRANS_LACREID_LACRE: TStringField
      FieldName = 'ID_LACRE'
      Origin = 'ID_LACRE'
      Required = True
    end
  end
  object qryMDFE_NFE_CARGTRANS: TFDQuery
    CachedUpdates = True
    MasterSource = dtsqryMDFE_NFE_UNIDTRANS
    MasterFields = 'ID_EMPRESA;ID_MDFE;ID_SERIE;ID_CHAVE;ID_IDENTIFICACAO'
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'SELECT'
      '  MDFE_NFE_CARGTRANS.*'
      'FROM'
      '  MDFE_NFE_CARGTRANS'
      'WHERE'
      '  1=1'
      '  AND ID_EMPRESA       = :ID_EMPRESA'
      '  AND ID_MDFE          = :ID_MDFE'
      '  AND ID_SERIE         = :ID_SERIE'
      '  AND ID_CHAVE         = :ID_CHAVE'
      '  AND ID_IDENTIFICACAO = :ID_IDENTIFICACAO'
      '  ')
    Left = 888
    Top = 640
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_MDFE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_CHAVE'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Name = 'ID_IDENTIFICACAO'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end>
    object qryMDFE_NFE_CARGTRANSID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Required = True
    end
    object qryMDFE_NFE_CARGTRANSID_MDFE: TIntegerField
      FieldName = 'ID_MDFE'
      Required = True
    end
    object qryMDFE_NFE_CARGTRANSID_SERIE: TIntegerField
      FieldName = 'ID_SERIE'
      Required = True
    end
    object qryMDFE_NFE_CARGTRANSID_CHAVE: TStringField
      FieldName = 'ID_CHAVE'
      Required = True
      Size = 50
    end
    object qryMDFE_NFE_CARGTRANSID_IDENTIFICACAO: TStringField
      FieldName = 'ID_IDENTIFICACAO'
      Required = True
    end
    object qryMDFE_NFE_CARGTRANSID_TIPO: TIntegerField
      FieldName = 'ID_TIPO'
      Required = True
    end
    object qryMDFE_NFE_CARGTRANSID_IDENTIFICADOR: TIntegerField
      FieldName = 'ID_IDENTIFICADOR'
      Required = True
    end
    object qryMDFE_NFE_CARGTRANSQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Required = True
      Precision = 18
      Size = 2
    end
  end
  object qryMDFE_NFE_CARGTRANS_LACRE: TFDQuery
    CachedUpdates = True
    MasterSource = dtsqryMDFE_NFE_CARGTRANS
    MasterFields = 
      'ID_EMPRESA;ID_MDFE;ID_SERIE;ID_CHAVE;ID_IDENTIFICACAO;ID_IDENTIF' +
      'ICADOR'
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'SELECT'
      '  MDFE_NFE_CARGTRANS_LACRE.*'
      'FROM'
      '  MDFE_NFE_CARGTRANS_LACRE'
      'WHERE'
      '  1=1'
      '  AND ID_EMPRESA       = :ID_EMPRESA'
      '  AND ID_MDFE          = :ID_MDFE'
      '  AND ID_SERIE         = :ID_SERIE'
      '  AND ID_CHAVE         = :ID_CHAVE'
      '  AND ID_IDENTIFICACAO = :ID_IDENTIFICACAO'
      '  AND ID_IDENTIFICADOR = :ID_IDENTIFICADOR'
      '  ')
    Left = 888
    Top = 696
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_MDFE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_CHAVE'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Name = 'ID_IDENTIFICACAO'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end
      item
        Name = 'ID_IDENTIFICADOR'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end>
    object qryMDFE_NFE_CARGTRANS_LACREID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMDFE_NFE_CARGTRANS_LACREID_MDFE: TIntegerField
      FieldName = 'ID_MDFE'
      Origin = 'ID_MDFE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMDFE_NFE_CARGTRANS_LACREID_SERIE: TIntegerField
      FieldName = 'ID_SERIE'
      Origin = 'ID_SERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMDFE_NFE_CARGTRANS_LACREID_CHAVE: TStringField
      FieldName = 'ID_CHAVE'
      Origin = 'ID_CHAVE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object qryMDFE_NFE_CARGTRANS_LACREID_IDENTIFICACAO: TStringField
      FieldName = 'ID_IDENTIFICACAO'
      Origin = 'ID_IDENTIFICACAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMDFE_NFE_CARGTRANS_LACREID_IDENTIFICADOR: TIntegerField
      FieldName = 'ID_IDENTIFICADOR'
      Origin = 'ID_IDENTIFICADOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMDFE_NFE_CARGTRANS_LACREID_LACRE: TStringField
      FieldName = 'ID_LACRE'
      Origin = 'ID_LACRE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dtsqryMDFE_NFE: TDataSource
    DataSet = qryMDFE_NFE
    Left = 979
    Top = 496
  end
  object dtsqryMDFE_NFE_UNIDTRANS: TDataSource
    DataSet = qryMDFE_NFE_UNIDTRANS
    Left = 1011
    Top = 565
  end
  object dtsqryMDFE_NFE_CARGTRANS: TDataSource
    DataSet = qryMDFE_NFE_CARGTRANS
    Left = 1019
    Top = 645
  end
  object qryMDFE_UF_PERCURSO: TFDQuery
    CachedUpdates = True
    MasterSource = dtsqryMDFE
    MasterFields = 'ID_EMPRESA;ID_MDFE;ID_SERIE'
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'SELECT'
      '  MDFE_UF_PERCURSO.*'
      'FROM'
      '  MDFE_UF_PERCURSO'
      'WHERE'
      '  1=1'
      '  AND ID_EMPRESA = :ID_EMPRESA'
      '  AND ID_MDFE    = :ID_MDFE'
      '  AND ID_SERIE   = :ID_SERIE'
      ''
      'ORDER BY'
      '  DTHR')
    Left = 660
    Top = 124
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_MDFE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryMDFE_UF_PERCURSOID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      Required = True
    end
    object qryMDFE_UF_PERCURSOID_MDFE: TIntegerField
      FieldName = 'ID_MDFE'
      Origin = 'ID_MDFE'
      Required = True
    end
    object qryMDFE_UF_PERCURSOID_SERIE: TIntegerField
      FieldName = 'ID_SERIE'
      Origin = 'ID_SERIE'
      Required = True
    end
    object qryMDFE_UF_PERCURSOID_UF: TStringField
      FieldName = 'ID_UF'
      Origin = 'ID_UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object qryMDFE_UF_PERCURSODTHR: TSQLTimeStampField
      FieldName = 'DTHR'
      Origin = 'DTHR'
      Required = True
    end
  end
  object qryMDFE_CONTRATANTES: TFDQuery
    CachedUpdates = True
    MasterSource = dtsqryMDFE
    MasterFields = 'ID_EMPRESA;ID_MDFE;ID_SERIE'
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'SELECT'
      '  MDFE_CONTRATANTES.*'
      'FROM'
      '  MDFE_CONTRATANTES'
      'WHERE'
      '  1=1'
      '  AND ID_EMPRESA = :ID_EMPRESA'
      '  AND ID_MDFE    = :ID_MDFE'
      '  AND ID_SERIE   = :ID_SERIE'
      '')
    Left = 660
    Top = 331
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_MDFE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryMDFE_CONTRATANTESID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMDFE_CONTRATANTESID_MDFE: TIntegerField
      FieldName = 'ID_MDFE'
      Origin = 'ID_MDFE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMDFE_CONTRATANTESID_SERIE: TIntegerField
      FieldName = 'ID_SERIE'
      Origin = 'ID_SERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMDFE_CONTRATANTESCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object FDMoniRemoteClientLink1: TFDMoniRemoteClientLink
    Left = 440
    Top = 16
  end
  object tabMDFE_AQUA_TERMINAL_CARREG: TFDQuery
    BeforePost = tabMDFE_AQUA_TERMINAL_CARREGBeforePost
    IndexFieldNames = 'ID_MDFE;ID_SERIE;ID_EMPRESA'
    MasterSource = dtstabMDFE
    MasterFields = 'ID_MDFE;ID_SERIE;ID_EMPRESA'
    DetailFields = 'ID_MDFE;ID_SERIE;ID_EMPRESA'
    OnUpdateError = tabMDFE_AQUA_TERMINAL_CARREGUpdateError
    Connection = dtmDefault.cnx_BD
    FetchOptions.AssignedValues = [evDetailCascade, evDetailServerCascade]
    FetchOptions.DetailCascade = True
    FetchOptions.DetailServerCascade = True
    SQL.Strings = (
      'SELECT'
      '  MDFE_AQUA_TERMINAL_CARREG.*'
      'FROM'
      '  MDFE_AQUA_TERMINAL_CARREG'
      'WHERE'
      '  1=1'
      '  AND ID_MDFE = :ID_MDFE'
      '  AND ID_SERIE = :ID_SERIE'
      '  AND ID_EMPRESA = :ID_EMPRESA')
    Left = 440
    Top = 124
    ParamData = <
      item
        Name = 'ID_MDFE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object tabMDFE_AQUA_TERMINAL_CARREGID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMDFE_AQUA_TERMINAL_CARREGID_MDFE: TIntegerField
      FieldName = 'ID_MDFE'
      Origin = 'ID_MDFE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMDFE_AQUA_TERMINAL_CARREGID_SERIE: TIntegerField
      FieldName = 'ID_SERIE'
      Origin = 'ID_SERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMDFE_AQUA_TERMINAL_CARREGID_TERMINAL: TStringField
      FieldName = 'ID_TERMINAL'
      Origin = 'ID_TERMINAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object tabMDFE_AQUA_TERMINAL_CARREGID_NOME: TStringField
      FieldName = 'ID_NOME'
      Origin = 'ID_NOME'
      Required = True
      Size = 60
    end
  end
  object qryMDFE_AQUA_TERMINAL_CARREG: TFDQuery
    IndexFieldNames = 'ID_MDFE;ID_SERIE;ID_EMPRESA'
    MasterSource = dtsqryMDFE
    MasterFields = 'ID_MDFE;ID_SERIE;ID_EMPRESA'
    DetailFields = 'ID_MDFE;ID_SERIE;ID_EMPRESA'
    Connection = dtmDefault.cnx_BD
    FetchOptions.AssignedValues = [evDetailCascade, evDetailServerCascade]
    FetchOptions.DetailCascade = True
    FetchOptions.DetailServerCascade = True
    SQL.Strings = (
      'SELECT'
      '  MDFE_AQUA_TERMINAL_CARREG.*'
      'FROM'
      '  MDFE_AQUA_TERMINAL_CARREG'
      'WHERE'
      '  1=1'
      '  AND ID_MDFE = :ID_MDFE'
      '  AND ID_SERIE = :ID_SERIE'
      '  AND ID_EMPRESA = :ID_EMPRESA')
    Left = 888
    Top = 124
    ParamData = <
      item
        Name = 'ID_MDFE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryMDFE_AQUA_TERMINAL_CARREGID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMDFE_AQUA_TERMINAL_CARREGID_MDFE: TIntegerField
      FieldName = 'ID_MDFE'
      Origin = 'ID_MDFE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMDFE_AQUA_TERMINAL_CARREGID_SERIE: TIntegerField
      FieldName = 'ID_SERIE'
      Origin = 'ID_SERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMDFE_AQUA_TERMINAL_CARREGID_TERMINAL: TStringField
      FieldName = 'ID_TERMINAL'
      Origin = 'ID_TERMINAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object qryMDFE_AQUA_TERMINAL_CARREGID_NOME: TStringField
      FieldName = 'ID_NOME'
      Origin = 'ID_NOME'
      Required = True
      Size = 60
    end
  end
  object tabMDFE_AQUA_TERMINAL_DESCARREG: TFDQuery
    BeforePost = tabMDFE_AQUA_TERMINAL_DESCARREGBeforePost
    IndexFieldNames = 'ID_MDFE;ID_SERIE;ID_EMPRESA'
    MasterSource = dtstabMDFE
    MasterFields = 'ID_MDFE;ID_SERIE;ID_EMPRESA'
    DetailFields = 'ID_MDFE;ID_SERIE;ID_EMPRESA'
    OnUpdateError = tabMDFE_AQUA_TERMINAL_DESCARREGUpdateError
    Connection = dtmDefault.cnx_BD
    FetchOptions.AssignedValues = [evDetailCascade, evDetailServerCascade]
    FetchOptions.DetailCascade = True
    FetchOptions.DetailServerCascade = True
    SQL.Strings = (
      'SELECT'
      '  MDFE_AQUA_TERMINAL_DESCARREG.*'
      'FROM'
      '  MDFE_AQUA_TERMINAL_DESCARREG'
      'WHERE'
      '  1=1'
      '  AND ID_MDFE = :ID_MDFE'
      '  AND ID_SERIE = :ID_SERIE'
      '  AND ID_EMPRESA = :ID_EMPRESA')
    Left = 440
    Top = 176
    ParamData = <
      item
        Name = 'ID_MDFE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object tabMDFE_AQUA_TERMINAL_DESCARREGID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMDFE_AQUA_TERMINAL_DESCARREGID_MDFE: TIntegerField
      FieldName = 'ID_MDFE'
      Origin = 'ID_MDFE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMDFE_AQUA_TERMINAL_DESCARREGID_SERIE: TIntegerField
      FieldName = 'ID_SERIE'
      Origin = 'ID_SERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMDFE_AQUA_TERMINAL_DESCARREGID_TERMINAL: TStringField
      FieldName = 'ID_TERMINAL'
      Origin = 'ID_TERMINAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object tabMDFE_AQUA_TERMINAL_DESCARREGID_NOME: TStringField
      FieldName = 'ID_NOME'
      Origin = 'ID_NOME'
      Required = True
      Size = 60
    end
  end
  object qryMDFE_AQUA_TERMINAL_DESCARREG: TFDQuery
    IndexFieldNames = 'ID_MDFE;ID_SERIE;ID_EMPRESA'
    MasterSource = dtsqryMDFE
    MasterFields = 'ID_MDFE;ID_SERIE;ID_EMPRESA'
    DetailFields = 'ID_MDFE;ID_SERIE;ID_EMPRESA'
    Connection = dtmDefault.cnx_BD
    FetchOptions.AssignedValues = [evDetailCascade, evDetailServerCascade]
    FetchOptions.DetailCascade = True
    FetchOptions.DetailServerCascade = True
    SQL.Strings = (
      'SELECT'
      '  MDFE_AQUA_TERMINAL_DESCARREG.*'
      'FROM'
      ' MDFE_AQUA_TERMINAL_DESCARREG'
      'WHERE'
      '  1=1'
      '  AND ID_MDFE = :ID_MDFE'
      '  AND ID_SERIE = :ID_SERIE'
      '  AND ID_EMPRESA = :ID_EMPRESA')
    Left = 888
    Top = 176
    ParamData = <
      item
        Name = 'ID_MDFE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryMDFE_AQUA_TERMINAL_DESCARREGID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMDFE_AQUA_TERMINAL_DESCARREGID_MDFE: TIntegerField
      FieldName = 'ID_MDFE'
      Origin = 'ID_MDFE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMDFE_AQUA_TERMINAL_DESCARREGID_SERIE: TIntegerField
      FieldName = 'ID_SERIE'
      Origin = 'ID_SERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMDFE_AQUA_TERMINAL_DESCARREGID_TERMINAL: TStringField
      FieldName = 'ID_TERMINAL'
      Origin = 'ID_TERMINAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object qryMDFE_AQUA_TERMINAL_DESCARREGID_NOME: TStringField
      FieldName = 'ID_NOME'
      Origin = 'ID_NOME'
      Required = True
      Size = 60
    end
  end
  object tabMDFE_AQUA_COMBOIO: TFDQuery
    BeforePost = tabMDFE_AQUA_COMBOIOBeforePost
    IndexFieldNames = 'ID_MDFE;ID_SERIE;ID_EMPRESA'
    MasterSource = dtstabMDFE
    MasterFields = 'ID_MDFE;ID_SERIE;ID_EMPRESA'
    DetailFields = 'ID_MDFE;ID_SERIE;ID_EMPRESA'
    OnUpdateError = tabMDFE_AQUA_COMBOIOUpdateError
    Connection = dtmDefault.cnx_BD
    FetchOptions.AssignedValues = [evDetailCascade, evDetailServerCascade]
    FetchOptions.DetailCascade = True
    FetchOptions.DetailServerCascade = True
    SQL.Strings = (
      'SELECT'
      '  MDFE_AQUA_COMBOIO.*'
      'FROM'
      '  MDFE_AQUA_COMBOIO'
      'WHERE'
      '  1=1'
      '  AND ID_MDFE = :ID_MDFE'
      '  AND ID_SERIE = :ID_SERIE'
      '  AND ID_EMPRESA = :ID_EMPRESA'
      ''
      ''
      ''
      '')
    Left = 440
    Top = 227
    ParamData = <
      item
        Name = 'ID_MDFE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object tabMDFE_AQUA_COMBOIOID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMDFE_AQUA_COMBOIOID_MDFE: TIntegerField
      FieldName = 'ID_MDFE'
      Origin = 'ID_MDFE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMDFE_AQUA_COMBOIOID_SERIE: TIntegerField
      FieldName = 'ID_SERIE'
      Origin = 'ID_SERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMDFE_AQUA_COMBOIOID_COMBOIO: TStringField
      FieldName = 'ID_COMBOIO'
      Origin = 'ID_COMBOIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object tabMDFE_AQUA_COMBOIOBALSA: TStringField
      FieldName = 'BALSA'
      Origin = 'BALSA'
      Size = 30
    end
  end
  object qryMDFE_AQUA_COMBOIO: TFDQuery
    IndexFieldNames = 'ID_MDFE;ID_SERIE;ID_EMPRESA'
    MasterSource = dtsqryMDFE
    MasterFields = 'ID_MDFE;ID_SERIE;ID_EMPRESA'
    DetailFields = 'ID_MDFE;ID_SERIE;ID_EMPRESA'
    Connection = dtmDefault.cnx_BD
    FetchOptions.AssignedValues = [evDetailCascade, evDetailServerCascade]
    FetchOptions.DetailCascade = True
    FetchOptions.DetailServerCascade = True
    SQL.Strings = (
      'SELECT'
      '  MDFE_AQUA_COMBOIO.*'
      'FROM'
      '  MDFE_AQUA_COMBOIO'
      'WHERE'
      '  1=1'
      '  AND ID_MDFE = :ID_MDFE'
      '  AND ID_SERIE = :ID_SERIE'
      '  AND ID_EMPRESA = :ID_EMPRESA'
      ''
      ''
      ''
      '')
    Left = 888
    Top = 227
    ParamData = <
      item
        Name = 'ID_MDFE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryMDFE_AQUA_COMBOIOID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMDFE_AQUA_COMBOIOID_MDFE: TIntegerField
      FieldName = 'ID_MDFE'
      Origin = 'ID_MDFE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMDFE_AQUA_COMBOIOID_SERIE: TIntegerField
      FieldName = 'ID_SERIE'
      Origin = 'ID_SERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMDFE_AQUA_COMBOIOID_COMBOIO: TStringField
      FieldName = 'ID_COMBOIO'
      Origin = 'ID_COMBOIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object qryMDFE_AQUA_COMBOIOBALSA: TStringField
      FieldName = 'BALSA'
      Origin = 'BALSA'
      Size = 30
    end
  end
  object tabMDFE_AQUA_UNID_CARGA: TFDQuery
    BeforePost = tabMDFE_AQUA_UNID_CARGABeforePost
    IndexFieldNames = 'ID_MDFE;ID_SERIE;ID_EMPRESA'
    MasterSource = dtstabMDFE
    MasterFields = 'ID_MDFE;ID_SERIE;ID_EMPRESA'
    DetailFields = 'ID_MDFE;ID_SERIE;ID_EMPRESA'
    OnUpdateError = tabMDFE_AQUA_UNID_CARGAUpdateError
    Connection = dtmDefault.cnx_BD
    FetchOptions.AssignedValues = [evDetailCascade, evDetailServerCascade]
    FetchOptions.DetailCascade = True
    FetchOptions.DetailServerCascade = True
    SQL.Strings = (
      'SELECT'
      '  MDFE_AQUA_UNID_CARGA.*'
      'FROM'
      '  MDFE_AQUA_UNID_CARGA'
      'WHERE'
      '  1=1'
      '  AND ID_MDFE = :ID_MDFE'
      '  AND ID_SERIE = :ID_SERIE'
      '  AND ID_EMPRESA = :ID_EMPRESA'
      ''
      '')
    Left = 440
    Top = 278
    ParamData = <
      item
        Name = 'ID_MDFE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object tabMDFE_AQUA_UNID_CARGAID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMDFE_AQUA_UNID_CARGAID_MDFE: TIntegerField
      FieldName = 'ID_MDFE'
      Origin = 'ID_MDFE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMDFE_AQUA_UNID_CARGAID_SERIE: TIntegerField
      FieldName = 'ID_SERIE'
      Origin = 'ID_SERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMDFE_AQUA_UNID_CARGAID_IDENTIFICACAO: TStringField
      FieldName = 'ID_IDENTIFICACAO'
      Origin = 'ID_IDENTIFICACAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMDFE_AQUA_UNID_CARGAID_UNIDADE: TIntegerField
      FieldName = 'ID_UNIDADE'
      Origin = 'ID_UNIDADE'
      Required = True
    end
  end
  object qryMDFE_AQUA_UNID_CARGA: TFDQuery
    IndexFieldNames = 'ID_MDFE;ID_SERIE;ID_EMPRESA'
    MasterSource = dtsqryMDFE
    MasterFields = 'ID_MDFE;ID_SERIE;ID_EMPRESA'
    DetailFields = 'ID_MDFE;ID_SERIE;ID_EMPRESA'
    Connection = dtmDefault.cnx_BD
    FetchOptions.AssignedValues = [evDetailCascade, evDetailServerCascade]
    FetchOptions.DetailCascade = True
    FetchOptions.DetailServerCascade = True
    SQL.Strings = (
      'SELECT'
      '  MDFE_AQUA_UNID_CARGA.*'
      'FROM'
      '  MDFE_AQUA_UNID_CARGA'
      'WHERE'
      '  1=1'
      '  AND ID_MDFE = :ID_MDFE'
      '  AND ID_SERIE = :ID_SERIE'
      '  AND ID_EMPRESA = :ID_EMPRESA'
      ''
      '')
    Left = 888
    Top = 278
    ParamData = <
      item
        Name = 'ID_MDFE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryMDFE_AQUA_UNID_CARGAID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMDFE_AQUA_UNID_CARGAID_MDFE: TIntegerField
      FieldName = 'ID_MDFE'
      Origin = 'ID_MDFE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMDFE_AQUA_UNID_CARGAID_SERIE: TIntegerField
      FieldName = 'ID_SERIE'
      Origin = 'ID_SERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMDFE_AQUA_UNID_CARGAID_IDENTIFICACAO: TStringField
      FieldName = 'ID_IDENTIFICACAO'
      Origin = 'ID_IDENTIFICACAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMDFE_AQUA_UNID_CARGAID_UNIDADE: TIntegerField
      FieldName = 'ID_UNIDADE'
      Origin = 'ID_UNIDADE'
      Required = True
    end
  end
  object tabMDFE_AQUA_UNID_TRANS: TFDQuery
    BeforePost = tabMDFE_AQUA_UNID_TRANSBeforePost
    IndexFieldNames = 'ID_MDFE;ID_SERIE;ID_EMPRESA'
    MasterSource = dtstabMDFE
    MasterFields = 'ID_MDFE;ID_SERIE;ID_EMPRESA'
    DetailFields = 'ID_MDFE;ID_SERIE;ID_EMPRESA'
    OnUpdateError = tabMDFE_AQUA_UNID_TRANSUpdateError
    Connection = dtmDefault.cnx_BD
    FetchOptions.AssignedValues = [evDetailCascade, evDetailServerCascade]
    FetchOptions.DetailCascade = True
    FetchOptions.DetailServerCascade = True
    SQL.Strings = (
      'SELECT'
      '  MDFE_AQUA_UNID_TRANS.*'
      'FROM'
      '  MDFE_AQUA_UNID_TRANS'
      'WHERE'
      '  1=1'
      '  AND ID_MDFE = :ID_MDFE'
      '  AND ID_SERIE = :ID_SERIE'
      '  AND ID_EMPRESA = :ID_EMPRESA'
      ''
      '')
    Left = 440
    Top = 331
    ParamData = <
      item
        Name = 'ID_MDFE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object tabMDFE_AQUA_UNID_TRANSID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMDFE_AQUA_UNID_TRANSID_MDFE: TIntegerField
      FieldName = 'ID_MDFE'
      Origin = 'ID_MDFE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMDFE_AQUA_UNID_TRANSID_SERIE: TIntegerField
      FieldName = 'ID_SERIE'
      Origin = 'ID_SERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMDFE_AQUA_UNID_TRANSID_IDENTIFICACAO: TStringField
      FieldName = 'ID_IDENTIFICACAO'
      Origin = 'ID_IDENTIFICACAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMDFE_AQUA_UNID_TRANSID_UNIDADE: TIntegerField
      FieldName = 'ID_UNIDADE'
      Origin = 'ID_UNIDADE'
      Required = True
    end
  end
  object qryMDFE_AQUA_UNID_TRANS: TFDQuery
    IndexFieldNames = 'ID_MDFE;ID_SERIE;ID_EMPRESA'
    MasterSource = dtsqryMDFE
    MasterFields = 'ID_MDFE;ID_SERIE;ID_EMPRESA'
    DetailFields = 'ID_MDFE;ID_SERIE;ID_EMPRESA'
    Connection = dtmDefault.cnx_BD
    FetchOptions.AssignedValues = [evDetailCascade, evDetailServerCascade]
    FetchOptions.DetailCascade = True
    FetchOptions.DetailServerCascade = True
    SQL.Strings = (
      'SELECT'
      '  MDFE_AQUA_UNID_TRANS.*'
      'FROM'
      '  MDFE_AQUA_UNID_TRANS'
      'WHERE'
      '  1=1'
      '  AND ID_MDFE = :ID_MDFE'
      '  AND ID_SERIE = :ID_SERIE'
      '  AND ID_EMPRESA = :ID_EMPRESA'
      ''
      '')
    Left = 888
    Top = 331
    ParamData = <
      item
        Name = 'ID_MDFE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryMDFE_AQUA_UNID_TRANSID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMDFE_AQUA_UNID_TRANSID_MDFE: TIntegerField
      FieldName = 'ID_MDFE'
      Origin = 'ID_MDFE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMDFE_AQUA_UNID_TRANSID_SERIE: TIntegerField
      FieldName = 'ID_SERIE'
      Origin = 'ID_SERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMDFE_AQUA_UNID_TRANSID_IDENTIFICACAO: TStringField
      FieldName = 'ID_IDENTIFICACAO'
      Origin = 'ID_IDENTIFICACAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMDFE_AQUA_UNID_TRANSID_UNIDADE: TIntegerField
      FieldName = 'ID_UNIDADE'
      Origin = 'ID_UNIDADE'
      Required = True
    end
  end
  object QryMotorista: TFDQuery
    BeforeOpen = QryMotoristaBeforeOpen
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'SELECT '
      '  * '
      'FROM '
      '  MOTORISTA'
      'WHERE '
      '  1=1'
      '  AND ID_EMPRESA = :ID_EMPRESA'
      '')
    Left = 1143
    Top = 336
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QryMotoristaID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryMotoristaID_MOTORISTA: TIntegerField
      FieldName = 'ID_MOTORISTA'
      Origin = 'ID_MOTORISTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryMotoristaNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object QryMotoristaCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Size = 11
    end
    object QryMotoristaRENACH: TStringField
      FieldName = 'RENACH'
      Origin = 'RENACH'
      Size = 11
    end
    object QryMotoristaNUMERO_REGISTRO: TStringField
      FieldName = 'NUMERO_REGISTRO'
      Origin = 'NUMERO_REGISTRO'
      Size = 9
    end
    object QryMotoristaCODIGO_SEGURANCA: TStringField
      FieldName = 'CODIGO_SEGURANCA'
      Origin = 'CODIGO_SEGURANCA'
      Size = 11
    end
    object QryMotoristaCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Origin = 'CATEGORIA'
      Size = 5
    end
    object QryMotoristaDATA_NASCIMENTO: TDateField
      FieldName = 'DATA_NASCIMENTO'
      Origin = 'DATA_NASCIMENTO'
    end
    object QryMotoristaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 60
    end
    object QryMotoristaRUA: TStringField
      FieldName = 'RUA'
      Origin = 'RUA'
      Size = 60
    end
    object QryMotoristaNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 30
    end
    object QryMotoristaCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 60
    end
    object QryMotoristaCEP: TIntegerField
      FieldName = 'CEP'
      Origin = 'CEP'
    end
    object QryMotoristaCODIGO_MUNICIPIO: TIntegerField
      FieldName = 'CODIGO_MUNICIPIO'
      Origin = 'CODIGO_MUNICIPIO'
    end
    object QryMotoristaCELULAR: TLargeintField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
    end
  end
  object DtsMotorista: TDataSource
    DataSet = QryMotorista
    Left = 1222
    Top = 335
  end
  object QryVeiculo: TFDQuery
    BeforeOpen = QryVeiculoBeforeOpen
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'SELECT '
      '  * '
      'FROM '
      '  VEICULO'
      'WHERE '
      '  1=1'
      '  AND ID_EMPRESA = :ID_EMPRESA')
    Left = 1143
    Top = 392
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QryVeiculoID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryVeiculoID_VEICULO: TIntegerField
      FieldName = 'ID_VEICULO'
      Origin = 'ID_VEICULO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryVeiculoRNTRC: TStringField
      FieldName = 'RNTRC'
      Origin = 'RNTRC'
      Size = 10
    end
    object QryVeiculoCOD_AGENDA_PORT: TStringField
      FieldName = 'COD_AGENDA_PORT'
      Origin = 'COD_AGENDA_PORT'
    end
    object QryVeiculoCODIGO_INTERNO: TStringField
      FieldName = 'CODIGO_INTERNO'
      Origin = 'CODIGO_INTERNO'
      Size = 10
    end
    object QryVeiculoTIPO_CARROCERIA: TIntegerField
      FieldName = 'TIPO_CARROCERIA'
      Origin = 'TIPO_CARROCERIA'
    end
    object QryVeiculoPLACA: TStringField
      FieldName = 'PLACA'
      Origin = 'PLACA'
      Size = 10
    end
    object QryVeiculoUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      FixedChar = True
      Size = 2
    end
    object QryVeiculoRENAVAN: TStringField
      FieldName = 'RENAVAN'
      Origin = 'RENAVAN'
      Size = 15
    end
    object QryVeiculoTIPO_RODADO: TIntegerField
      FieldName = 'TIPO_RODADO'
      Origin = 'TIPO_RODADO'
    end
    object QryVeiculoCAPACIDADE_KG: TFMTBCDField
      FieldName = 'CAPACIDADE_KG'
      Origin = 'CAPACIDADE_KG'
      Precision = 18
      Size = 2
    end
    object QryVeiculoCAPACIDADE_M3: TFMTBCDField
      FieldName = 'CAPACIDADE_M3'
      Origin = 'CAPACIDADE_M3'
      Precision = 18
      Size = 2
    end
    object QryVeiculoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 150
    end
    object QryVeiculoTIPO_VEICULO: TIntegerField
      FieldName = 'TIPO_VEICULO'
      Origin = 'TIPO_VEICULO'
    end
    object QryVeiculoTARA: TFMTBCDField
      FieldName = 'TARA'
      Origin = 'TARA'
      Precision = 18
      Size = 1
    end
    object QryVeiculoCOR: TStringField
      FieldName = 'COR'
      Origin = 'COR'
      FixedChar = True
      Size = 3
    end
    object QryVeiculoCOR_DESCRICAO: TStringField
      FieldName = 'COR_DESCRICAO'
      Origin = 'COR_DESCRICAO'
      Size = 40
    end
    object QryVeiculoCODIGO_MARCA_MODELO: TStringField
      FieldName = 'CODIGO_MARCA_MODELO'
      Origin = 'CODIGO_MARCA_MODELO'
      Size = 6
    end
    object QryVeiculoVALOR_UNITARIO: TFMTBCDField
      FieldName = 'VALOR_UNITARIO'
      Origin = 'VALOR_UNITARIO'
      Precision = 18
      Size = 2
    end
    object QryVeiculoFRETE_UNITARIO: TFMTBCDField
      FieldName = 'FRETE_UNITARIO'
      Origin = 'FRETE_UNITARIO'
      Precision = 18
      Size = 2
    end
    object QryVeiculoCHASSI: TStringField
      FieldName = 'CHASSI'
      Origin = 'CHASSI'
      Size = 17
    end
    object QryVeiculoMARCA: TStringField
      FieldName = 'MARCA'
      Origin = 'MARCA'
      Size = 30
    end
    object QryVeiculoMODELO: TStringField
      FieldName = 'MODELO'
      Origin = 'MODELO'
      Size = 100
    end
    object QryVeiculoANO_FABRICACAO: TIntegerField
      FieldName = 'ANO_FABRICACAO'
      Origin = 'ANO_FABRICACAO'
    end
    object QryVeiculoANO_MODELO: TIntegerField
      FieldName = 'ANO_MODELO'
      Origin = 'ANO_MODELO'
    end
    object QryVeiculoNUMERO_EIXOS: TSmallintField
      FieldName = 'NUMERO_EIXOS'
      Origin = 'NUMERO_EIXOS'
    end
    object QryVeiculoCODIGO_MUNICIPIO: TIntegerField
      FieldName = 'CODIGO_MUNICIPIO'
      Origin = 'CODIGO_MUNICIPIO'
    end
  end
  object DtsVeiculo: TDataSource
    DataSet = QryVeiculo
    Left = 1230
    Top = 391
  end
  object updEncerrado: TFDQuery
    CachedUpdates = True
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'UPDATE MDFE'
      'SET ID_SITUACAO            = '#39'F'#39','
      '    XML_STATUS_CODIGO      = :XML_STATUS_CODIGO,'
      '    XML_XMOTIVO            = :XML_XMOTIVO'
      
        'WHERE (ID_EMPRESA = :ID_EMPRESA) AND (ID_MDFE = :ID_MDFE) AND (I' +
        'D_SERIE = :ID_SERIE);')
    Left = 1143
    Top = 717
    ParamData = <
      item
        Name = 'XML_STATUS_CODIGO'
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'XML_XMOTIVO'
        ParamType = ptInput
      end
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_MDFE'
        ParamType = ptInput
      end
      item
        Name = 'ID_SERIE'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object ACBrCIOT: TACBrCIOT
    Configuracoes.Geral.SSLLib = libOpenSSL
    Configuracoes.Geral.SSLCryptLib = cryOpenSSL
    Configuracoes.Geral.SSLHttpLib = httpOpenSSL
    Configuracoes.Geral.SSLXmlSignLib = xsLibXml2
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.RetirarAcentos = False
    Configuracoes.Geral.Integradora = ieFrete
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    Left = 32
    Top = 376
  end
  object QryConfigCIOT: TFDQuery
    BeforeOpen = qryCERTIFICADO_CONFIGBeforeOpen
    CachedUpdates = True
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  CERTIFICADO_CONFIG'
      'WHERE'
      '  1=1'
      '  AND CERTIFICADO_CONFIG.ID_EMPRESA = :ID_EMPRESA'
      '  AND CERTIFICADO_CONFIG.ID_MODELO = 85'
      ''
      '')
    Left = 1015
    Top = 72
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object IntegerField1: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'ID_MODELO'
      Origin = 'ID_MODELO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IntegerField3: TIntegerField
      FieldName = 'ID_CERTIFICADOCONFIG'
      Origin = 'ID_CERTIFICADOCONFIG'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'CERTIFICADO_NUMERO'
      Origin = 'CERTIFICADO_NUMERO'
      Size = 40
    end
    object StringField2: TStringField
      FieldName = 'CERTIFICADO_SENHA'
      Origin = 'CERTIFICADO_SENHA'
      Size = 40
    end
    object StringField3: TStringField
      FieldName = 'WS_UF_DESTINO'
      Origin = 'WS_UF_DESTINO'
      FixedChar = True
      Size = 2
    end
    object IntegerField4: TIntegerField
      FieldName = 'ID_TIPO_AMBIENTE'
      Origin = 'ID_TIPO_AMBIENTE'
    end
    object IntegerField5: TIntegerField
      FieldName = 'ID_SSL_TYPE'
      Origin = 'ID_SSL_TYPE'
    end
    object StringField4: TStringField
      FieldName = 'WS_PROXY_HOST'
      Origin = 'WS_PROXY_HOST'
      Size = 200
    end
    object IntegerField6: TIntegerField
      FieldName = 'WS_PROXY_PORTA'
      Origin = 'WS_PROXY_PORTA'
    end
    object StringField5: TStringField
      FieldName = 'WS_PROXY_USUARIO'
      Origin = 'WS_PROXY_USUARIO'
      Size = 60
    end
    object StringField6: TStringField
      FieldName = 'WS_PROXY_SENHA'
      Origin = 'WS_PROXY_SENHA'
      Size = 60
    end
    object IntegerField7: TIntegerField
      FieldName = 'ID_REPORT_ORIENTACAO'
      Origin = 'ID_REPORT_ORIENTACAO'
    end
    object IntegerField8: TIntegerField
      FieldName = 'ID_FORMA_EMISSAO'
      Origin = 'ID_FORMA_EMISSAO'
    end
    object StringField7: TStringField
      FieldName = 'EMAIL_ENVIAR'
      Origin = 'EMAIL_ENVIAR'
      FixedChar = True
      Size = 1
    end
    object StringField8: TStringField
      FieldName = 'EMAIL_SERVIDOR'
      Origin = 'EMAIL_SERVIDOR'
      Size = 200
    end
    object IntegerField9: TIntegerField
      FieldName = 'EMAIL_PORTA'
      Origin = 'EMAIL_PORTA'
    end
    object StringField9: TStringField
      FieldName = 'EMAIL_USUARIO'
      Origin = 'EMAIL_USUARIO'
      Size = 60
    end
    object StringField10: TStringField
      FieldName = 'EMAIL_SENHA'
      Origin = 'EMAIL_SENHA'
      Size = 60
    end
    object StringField11: TStringField
      FieldName = 'EMAIL_SENHA_SEGURA'
      Origin = 'EMAIL_SENHA_SEGURA'
      FixedChar = True
      Size = 1
    end
    object IntegerField10: TIntegerField
      FieldName = 'TIME_ZONE_MODO'
      Origin = 'TIME_ZONE_MODO'
    end
    object IntegerField11: TIntegerField
      FieldName = 'TIME_ZONE_MANUAL'
      Origin = 'TIME_ZONE_MANUAL'
    end
    object StringField12: TStringField
      FieldName = 'MANTER_ARQUIVOS_TEMPORARIOS'
      Origin = 'MANTER_ARQUIVOS_TEMPORARIOS'
      FixedChar = True
      Size = 1
    end
    object StringField13: TStringField
      FieldName = 'LOGOMARCA'
      Origin = 'LOGOMARCA'
      Size = 300
    end
    object StringField14: TStringField
      FieldName = 'EMAIL_SENHA_TLS'
      Origin = 'EMAIL_SENHA_TLS'
      FixedChar = True
      Size = 1
    end
  end
  object qryMotoristaEspecifico: TFDQuery
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'SELECT '
      '* '
      'FROM '
      'MOTORISTA'
      'WHERE CPF = :CPF')
    Left = 1147
    Top = 461
    ParamData = <
      item
        Name = 'CPF'
        DataType = ftString
        ParamType = ptInput
        Size = 11
        Value = Null
      end>
    object qryMotoristaEspecificoID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMotoristaEspecificoID_MOTORISTA: TIntegerField
      FieldName = 'ID_MOTORISTA'
      Origin = 'ID_MOTORISTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMotoristaEspecificoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object qryMotoristaEspecificoCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Size = 11
    end
    object qryMotoristaEspecificoRENACH: TStringField
      FieldName = 'RENACH'
      Origin = 'RENACH'
      Size = 11
    end
    object qryMotoristaEspecificoNUMERO_REGISTRO: TStringField
      FieldName = 'NUMERO_REGISTRO'
      Origin = 'NUMERO_REGISTRO'
      Size = 9
    end
    object qryMotoristaEspecificoCODIGO_SEGURANCA: TStringField
      FieldName = 'CODIGO_SEGURANCA'
      Origin = 'CODIGO_SEGURANCA'
      Size = 11
    end
    object qryMotoristaEspecificoCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Origin = 'CATEGORIA'
      Size = 5
    end
    object qryMotoristaEspecificoDATA_NASCIMENTO: TDateField
      FieldName = 'DATA_NASCIMENTO'
      Origin = 'DATA_NASCIMENTO'
    end
    object qryMotoristaEspecificoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 60
    end
    object qryMotoristaEspecificoRUA: TStringField
      FieldName = 'RUA'
      Origin = 'RUA'
      Size = 60
    end
    object qryMotoristaEspecificoCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 60
    end
    object qryMotoristaEspecificoCEP: TIntegerField
      FieldName = 'CEP'
      Origin = 'CEP'
    end
    object qryMotoristaEspecificoCODIGO_MUNICIPIO: TIntegerField
      FieldName = 'CODIGO_MUNICIPIO'
      Origin = 'CODIGO_MUNICIPIO'
    end
    object qryMotoristaEspecificoCELULAR: TLargeintField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
    end
    object qryMotoristaEspecificoNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 10
    end
    object qryMotoristaEspecificoNOME_SOLTEIRA_MAE: TStringField
      FieldName = 'NOME_SOLTEIRA_MAE'
      Origin = 'NOME_SOLTEIRA_MAE'
      Size = 50
    end
  end
end
