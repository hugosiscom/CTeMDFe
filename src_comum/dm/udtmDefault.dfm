object dtmDefault: TdtmDefault
  Height = 516
  Width = 702
  object cnx_BD: TFDConnection
    Params.Strings = (
      'Database=C:\SISCOM\BD_Cerrado_CTeMDFe\BD.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=127.0.0.1'
      'Port=3051'
      'CharacterSet=WIN1252'
      'DriverID=FB')
    TxOptions.AutoStop = False
    LoginPrompt = False
    BeforeConnect = cnx_BDBeforeConnect
    Left = 24
    Top = 8
  end
  object FLink: TFDPhysFBDriverLink
    Left = 24
    Top = 62
  end
  object fWaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 24
    Top = 118
  end
  object ACBrCEP: TACBrCEP
    ProxyPort = '8080'
    ContentsEncodingCompress = []
    NivelLog = 0
    WebService = wsCepAberto
    ChaveAcesso = '747a623188a6450917a81c1e2f1a2dae'
    PesquisarIBGE = True
    Left = 248
    Top = 375
  end
  object tabEMPRESA: TFDQuery
    AfterOpen = tabEMPRESAAfterOpen
    AfterClose = tabEMPRESAAfterOpen
    BeforePost = tabEMPRESABeforePost
    OnNewRecord = tabEMPRESANewRecord
    Connection = cnx_BD
    SQL.Strings = (
      'SELECT'
      '  EMPRESA.*'
      'FROM'
      '  EMPRESA'
      'WHERE'
      '  1=1'
      '  AND ID_EMPRESA = :ID_EMPRESA')
    Left = 128
    Top = 8
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object tabEMPRESAID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabEMPRESAID_REGIME: TIntegerField
      FieldName = 'ID_REGIME'
      Origin = 'ID_REGIME'
    end
    object tabEMPRESAID_INDICADOR_ATIVIDADE: TIntegerField
      FieldName = 'ID_INDICADOR_ATIVIDADE'
      Origin = 'ID_INDICADOR_ATIVIDADE'
    end
    object tabEMPRESARAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Size = 100
    end
    object tabEMPRESANOMEFANTASIA: TStringField
      FieldName = 'NOMEFANTASIA'
      Origin = 'NOMEFANTASIA'
      Size = 100
    end
    object tabEMPRESACNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      OnSetText = TFieldSetOnlyNumber
      Size = 18
    end
    object tabEMPRESAIE_ESTADUAL: TStringField
      FieldName = 'IE_ESTADUAL'
      Origin = 'IE_ESTADUAL'
      OnSetText = TFieldSetOnlyNumber
    end
    object tabEMPRESACNAE_FISCAL: TStringField
      FieldName = 'CNAE_FISCAL'
      Origin = 'CNAE_FISCAL'
    end
    object tabEMPRESAIE_MUNICIPAL: TStringField
      FieldName = 'IE_MUNICIPAL'
      Origin = 'IE_MUNICIPAL'
    end
    object tabEMPRESAIE_ESTADUAL_ST: TStringField
      FieldName = 'IE_ESTADUAL_ST'
      Origin = 'IE_ESTADUAL_ST'
    end
    object tabEMPRESAENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 100
    end
    object tabEMPRESANUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 10
    end
    object tabEMPRESACOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 30
    end
    object tabEMPRESABAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 50
    end
    object tabEMPRESAID_CIDADES_IBGE: TIntegerField
      FieldName = 'ID_CIDADES_IBGE'
      Origin = 'ID_CIDADES_IBGE'
    end
    object tabEMPRESAID_CIDADES_UF: TStringField
      FieldName = 'ID_CIDADES_UF'
      Origin = 'ID_CIDADES_UF'
      FixedChar = True
      Size = 2
    end
    object tabEMPRESACEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      FixedChar = True
      Size = 9
    end
    object tabEMPRESATELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      OnSetText = TFieldSetOnlyNumber
      Size = 15
    end
    object tabEMPRESACELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      OnSetText = TFieldSetOnlyNumber
      Size = 15
    end
    object tabEMPRESAEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 100
    end
    object tabEMPRESAWEBSITE: TStringField
      FieldName = 'WEBSITE'
      Origin = 'WEBSITE'
      Size = 100
    end
    object tabEMPRESADATA_ABERTURA: TDateField
      FieldName = 'DATA_ABERTURA'
      Origin = 'DATA_ABERTURA'
    end
    object tabEMPRESACADASTRO_DATA: TSQLTimeStampField
      FieldName = 'CADASTRO_DATA'
      Origin = 'CADASTRO_DATA'
    end
    object tabEMPRESAALTERACAO_DATA: TSQLTimeStampField
      FieldName = 'ALTERACAO_DATA'
      Origin = 'ALTERACAO_DATA'
    end
    object tabEMPRESARESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      Origin = 'RESPONSAVEL'
      Size = 100
    end
    object tabEMPRESALOGOTIPO_LOCAL: TStringField
      FieldName = 'LOGOTIPO_LOCAL'
      Origin = 'LOGOTIPO_LOCAL'
      Size = 300
    end
    object tabEMPRESACTE_ID_SERIE: TIntegerField
      FieldName = 'CTE_ID_SERIE'
      Origin = 'CTE_ID_SERIE'
    end
    object tabEMPRESACTEOS_ID_SERIE: TIntegerField
      FieldName = 'CTEOS_ID_SERIE'
      Origin = 'CTEOS_ID_SERIE'
    end
    object tabEMPRESAMDFE_ID_SERIE: TIntegerField
      FieldName = 'MDFE_ID_SERIE'
      Origin = 'MDFE_ID_SERIE'
    end
    object tabEMPRESANFE_ID_SERIE: TIntegerField
      FieldName = 'NFE_ID_SERIE'
      Origin = 'NFE_ID_SERIE'
    end
    object tabEMPRESANFSE_ID_SERIE: TIntegerField
      FieldName = 'NFSE_ID_SERIE'
      Origin = 'NFSE_ID_SERIE'
    end
    object tabEMPRESANFSE_LCP116: TStringField
      FieldName = 'NFSE_LCP116'
      Origin = 'NFSE_LCP116'
    end
    object tabEMPRESANFSE_PCISSQN: TCurrencyField
      FieldName = 'NFSE_PCISSQN'
      Origin = 'NFSE_PCISSQN'
    end
    object tabEMPRESASIMPLES_ALIQ_CREDITO: TCurrencyField
      FieldName = 'SIMPLES_ALIQ_CREDITO'
      Origin = 'SIMPLES_ALIQ_CREDITO'
    end
    object tabEMPRESACTE_NUMERO_INICIAL: TIntegerField
      FieldName = 'CTE_NUMERO_INICIAL'
      Origin = 'CTE_NUMERO_INICIAL'
    end
    object tabEMPRESAMDFE_NUMERO_INICIAL: TIntegerField
      FieldName = 'MDFE_NUMERO_INICIAL'
      Origin = 'MDFE_NUMERO_INICIAL'
    end
  end
  object tabCIDADES_UF: TFDQuery
    Connection = cnx_BD
    SQL.Strings = (
      'select * from cidades_uf')
    Left = 128
    Top = 62
    object tabCIDADES_UFID_CIDADES_UF: TStringField
      FieldName = 'ID_CIDADES_UF'
      Origin = 'ID_CIDADES_UF'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 2
    end
    object tabCIDADES_UFCODIBGE: TIntegerField
      FieldName = 'CODIBGE'
      Origin = 'CODIBGE'
      Required = True
    end
    object tabCIDADES_UFDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 30
    end
  end
  object dtstabCIDADES_UF: TDataSource
    DataSet = tabCIDADES_UF
    Left = 230
    Top = 19
  end
  object OpenDialog: TOpenDialog
    Left = 248
    Top = 456
  end
  object tabCERTIFICADO_CONFIG: TFDQuery
    BeforeOpen = tabCERTIFICADO_CONFIGBeforeOpen
    BeforePost = tabCERTIFICADO_CONFIGBeforePost
    OnNewRecord = tabCERTIFICADO_CONFIGNewRecord
    OnUpdateError = tabCERTIFICADO_CONFIGUpdateError
    Connection = cnx_BD
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  CERTIFICADO_CONFIG'
      'WHERE'
      '  1=1'
      '  AND CERTIFICADO_CONFIG.ID_EMPRESA = :ID_EMPRESA'
      '  AND CERTIFICADO_CONFIG.ID_MODELO = :ID_MODELO'
      ''
      '')
    Left = 128
    Top = 118
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_MODELO'
        DataType = ftInteger
        ParamType = ptInput
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
    object tabCERTIFICADO_CONFIGWS_TIMEOUT: TIntegerField
      FieldName = 'WS_TIMEOUT'
      Origin = 'WS_TIMEOUT'
    end
    object tabCERTIFICADO_CONFIGID_TIPO_AMBIENTE: TIntegerField
      FieldName = 'ID_TIPO_AMBIENTE'
      Origin = 'ID_TIPO_AMBIENTE'
    end
    object tabCERTIFICADO_CONFIGID_SSL_TYPE: TIntegerField
      FieldName = 'ID_SSL_TYPE'
      Origin = 'ID_SSL_TYPE'
    end
    object tabCERTIFICADO_CONFIGID_CRYPT_TYPE: TIntegerField
      FieldName = 'ID_CRYPT_TYPE'
      Origin = 'ID_CRYPT_TYPE'
    end
    object tabCERTIFICADO_CONFIGID_HTTP_TYPE: TIntegerField
      FieldName = 'ID_HTTP_TYPE'
      Origin = 'ID_HTTP_TYPE'
    end
    object tabCERTIFICADO_CONFIGID_XMLSIGN_TYPE: TIntegerField
      FieldName = 'ID_XMLSIGN_TYPE'
      Origin = 'ID_XMLSIGN_TYPE'
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
    object tabCERTIFICADO_CONFIGCAMPOS_FAT_OBRIGATORIO: TStringField
      FieldName = 'CAMPOS_FAT_OBRIGATORIO'
      Origin = 'CAMPOS_FAT_OBRIGATORIO'
      FixedChar = True
      Size = 1
    end
    object tabCERTIFICADO_CONFIGNFSE_SOAP_SALVAR_ENVELOPE: TStringField
      FieldName = 'NFSE_SOAP_SALVAR_ENVELOPE'
      Origin = 'NFSE_SOAP_SALVAR_ENVELOPE'
      FixedChar = True
      Size = 1
    end
    object tabCERTIFICADO_CONFIGNFSE_PATH_SCHEMAS: TStringField
      FieldName = 'NFSE_PATH_SCHEMAS'
      Origin = 'NFSE_PATH_SCHEMAS'
      Size = 300
    end
    object tabCERTIFICADO_CONFIGNFSE_WEB_USER: TStringField
      FieldName = 'NFSE_WEB_USER'
      Origin = 'NFSE_WEB_USER'
      Size = 250
    end
    object tabCERTIFICADO_CONFIGNFSE_WEB_PWD: TStringField
      FieldName = 'NFSE_WEB_PWD'
      Origin = 'NFSE_WEB_PWD'
      Size = 250
    end
    object tabCERTIFICADO_CONFIGNFSE_LOGO_PRF: TStringField
      FieldName = 'NFSE_LOGO_PRF'
      Origin = 'NFSE_LOGO_PRF'
      Size = 300
    end
    object tabCERTIFICADO_CONFIGEMAIL_SENHA_TLS: TStringField
      FieldName = 'EMAIL_SENHA_TLS'
      Origin = 'EMAIL_SENHA_TLS'
      FixedChar = True
      Size = 1
    end
    object tabCERTIFICADO_CONFIGVERSAO_PROCESSO_EMISSAO: TStringField
      FieldName = 'VERSAO_PROCESSO_EMISSAO'
      Origin = 'VERSAO_PROCESSO_EMISSAO'
      Size = 11
    end
    object tabCERTIFICADO_CONFIGAJUSTE_AUTOMATICO_AGUARDAR: TBooleanField
      FieldName = 'AJUSTE_AUTOMATICO_AGUARDAR'
      Origin = 'AJUSTE_AUTOMATICO_AGUARDAR'
    end
    object tabCERTIFICADO_CONFIGAGUARDAR_SEGUNDOS: TIntegerField
      FieldName = 'AGUARDAR_SEGUNDOS'
      Origin = 'AGUARDAR_SEGUNDOS'
    end
    object tabCERTIFICADO_CONFIGTENTATIVAS: TSmallintField
      FieldName = 'TENTATIVAS'
      Origin = 'TENTATIVAS'
    end
    object tabCERTIFICADO_CONFIGINTERVALO_SEGUNDOS: TIntegerField
      FieldName = 'INTERVALO_SEGUNDOS'
      Origin = 'INTERVALO_SEGUNDOS'
    end
    object tabCERTIFICADO_CONFIGCAMINHO_CERTIFICADO: TStringField
      FieldName = 'CAMINHO_CERTIFICADO'
      Origin = 'CAMINHO_CERTIFICADO'
      Size = 200
    end
    object tabCERTIFICADO_CONFIGSENHA_CERTIFICADO: TStringField
      FieldName = 'SENHA_CERTIFICADO'
      Origin = 'SENHA_CERTIFICADO'
      Size = 100
    end
    object tabCERTIFICADO_CONFIGASSINAR: TBooleanField
      FieldName = 'ASSINAR'
      Origin = 'ASSINAR'
    end
    object tabCERTIFICADO_CONFIGFORMA_EMISSAO_INDEX: TSmallintField
      FieldName = 'FORMA_EMISSAO_INDEX'
      Origin = 'FORMA_EMISSAO_INDEX'
    end
    object tabCERTIFICADO_CONFIGINTEGRADORA_INDEX: TSmallintField
      FieldName = 'INTEGRADORA_INDEX'
      Origin = 'INTEGRADORA_INDEX'
    end
    object tabCERTIFICADO_CONFIGGERAL_USUARIO: TStringField
      FieldName = 'GERAL_USUARIO'
      Origin = 'GERAL_USUARIO'
      Size = 100
    end
    object tabCERTIFICADO_CONFIGGERAL_SENHA: TStringField
      FieldName = 'GERAL_SENHA'
      Origin = 'GERAL_SENHA'
      Size = 100
    end
    object tabCERTIFICADO_CONFIGGERAL_HASH_INTEGRADOR: TStringField
      FieldName = 'GERAL_HASH_INTEGRADOR'
      Origin = 'GERAL_HASH_INTEGRADOR'
      Size = 50
    end
    object tabCERTIFICADO_CONFIGSSL_LIB_INDEX: TSmallintField
      FieldName = 'SSL_LIB_INDEX'
      Origin = 'SSL_LIB_INDEX'
    end
    object tabCERTIFICADO_CONFIGCRYPT_LIB_INDEX: TSmallintField
      FieldName = 'CRYPT_LIB_INDEX'
      Origin = 'CRYPT_LIB_INDEX'
    end
    object tabCERTIFICADO_CONFIGHTTP_LIB_INDEX: TSmallintField
      FieldName = 'HTTP_LIB_INDEX'
      Origin = 'HTTP_LIB_INDEX'
    end
    object tabCERTIFICADO_CONFIGXML_SIGN_LIB__INDEX: TSmallintField
      FieldName = 'XML_SIGN_LIB__INDEX'
      Origin = 'XML_SIGN_LIB__INDEX'
    end
  end
  object qryTmp: TFDQuery
    Connection = cnx_BD
    SQL.Strings = (
      '')
    Left = 320
    Top = 16
  end
  object tabPESSOAS: TFDQuery
    BeforeOpen = tabPESSOASBeforeOpen
    BeforePost = tabPESSOASBeforePost
    OnNewRecord = tabPESSOASNewRecord
    Connection = cnx_BD
    SQL.Strings = (
      'SELECT '
      '  * '
      'FROM '
      '  PESSOA '
      'WHERE '
      '  1=1'
      '  AND ID_EMPRESA = :ID_EMPRESA'
      '  AND ID_PESSOA = :ID_PESSOA')
    Left = 128
    Top = 172
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_PESSOA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object tabPESSOASID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabPESSOASID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
      Origin = 'ID_PESSOA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabPESSOASID_JURIDICA: TIntegerField
      FieldName = 'ID_JURIDICA'
      Origin = 'ID_JURIDICA'
      Required = True
    end
    object tabPESSOASID_ATIVO: TIntegerField
      FieldName = 'ID_ATIVO'
      Origin = 'ID_ATIVO'
      Required = True
    end
    object tabPESSOASID_PRODUTOR: TIntegerField
      FieldName = 'ID_PRODUTOR'
      Origin = 'ID_PRODUTOR'
      Required = True
    end
    object tabPESSOASID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      Required = True
    end
    object tabPESSOASID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
      Origin = 'ID_TRANSPORTADORA'
      Required = True
    end
    object tabPESSOASID_TIPO_CONTRIBUINTE: TIntegerField
      FieldName = 'ID_TIPO_CONTRIBUINTE'
      Origin = 'ID_TIPO_CONTRIBUINTE'
      Required = True
    end
    object tabPESSOASRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Size = 100
    end
    object tabPESSOASNOMEFANTASIA: TStringField
      FieldName = 'NOMEFANTASIA'
      Origin = 'NOMEFANTASIA'
      Size = 100
    end
    object tabPESSOASCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
      Size = 18
    end
    object tabPESSOASIE_RG: TStringField
      FieldName = 'IE_RG'
      Origin = 'IE_RG'
    end
    object tabPESSOASIM: TStringField
      FieldName = 'IM'
      Origin = 'IM'
    end
    object tabPESSOASENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 100
    end
    object tabPESSOASNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 10
    end
    object tabPESSOASCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 30
    end
    object tabPESSOASBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 50
    end
    object tabPESSOASCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      FixedChar = True
      Size = 9
    end
    object tabPESSOASID_CIDADES_UF: TStringField
      FieldName = 'ID_CIDADES_UF'
      Origin = 'ID_CIDADES_UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object tabPESSOASID_CIDADES_IBGE: TIntegerField
      FieldName = 'ID_CIDADES_IBGE'
      Origin = 'ID_CIDADES_IBGE'
      Required = True
    end
    object tabPESSOASTELEFONEFIXO: TStringField
      FieldName = 'TELEFONEFIXO'
      Origin = 'TELEFONEFIXO'
      FixedChar = True
      Size = 15
    end
    object tabPESSOASCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      FixedChar = True
      Size = 15
    end
    object tabPESSOASTELEFONETRABALHO: TStringField
      FieldName = 'TELEFONETRABALHO'
      Origin = 'TELEFONETRABALHO'
      FixedChar = True
      Size = 15
    end
    object tabPESSOASEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 100
    end
    object tabPESSOASCONTATO: TStringField
      FieldName = 'CONTATO'
      Origin = 'CONTATO'
      Size = 100
    end
    object tabPESSOASNASCIMENTO_ABERTURA: TDateField
      FieldName = 'NASCIMENTO_ABERTURA'
      Origin = 'NASCIMENTO_ABERTURA'
    end
    object tabPESSOASCONJUGE: TStringField
      FieldName = 'CONJUGE'
      Origin = 'CONJUGE'
      Size = 100
    end
    object tabPESSOASCONJUGE_NASCIMENTO: TDateField
      FieldName = 'CONJUGE_NASCIMENTO'
      Origin = 'CONJUGE_NASCIMENTO'
    end
    object tabPESSOASMAE: TStringField
      FieldName = 'MAE'
      Origin = 'MAE'
      Size = 100
    end
    object tabPESSOASPAI: TStringField
      FieldName = 'PAI'
      Origin = 'PAI'
      Size = 100
    end
    object tabPESSOASSEXO: TStringField
      FieldName = 'SEXO'
      Origin = 'SEXO'
      FixedChar = True
      Size = 1
    end
    object tabPESSOASOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Origin = 'OBSERVACOES'
      Size = 250
    end
    object tabPESSOASCADASTRO_DATA: TSQLTimeStampField
      FieldName = 'CADASTRO_DATA'
      Origin = 'CADASTRO_DATA'
      Required = True
    end
    object tabPESSOASALTERACAO_DATA: TSQLTimeStampField
      FieldName = 'ALTERACAO_DATA'
      Origin = 'ALTERACAO_DATA'
    end
    object tabPESSOASFOTO: TBlobField
      FieldName = 'FOTO'
      Origin = 'FOTO'
    end
    object tabPESSOASESTADOCIVIL: TStringField
      FieldName = 'ESTADOCIVIL'
      Origin = 'ESTADOCIVIL'
    end
    object tabPESSOASCBR_HISTORICO: TStringField
      FieldName = 'CBR_HISTORICO'
      Origin = 'CBR_HISTORICO'
      Size = 300
    end
    object tabPESSOASCBR_VALOR: TFMTBCDField
      FieldName = 'CBR_VALOR'
      Origin = 'CBR_VALOR'
      Precision = 18
      Size = 2
    end
  end
  object tabPRODUTOS: TFDQuery
    BeforeOpen = tabPRODUTOSBeforeOpen
    OnNewRecord = tabPRODUTOSNewRecord
    Connection = cnx_BD
    SQL.Strings = (
      'SELECT '
      '  * '
      'FROM '
      '  PRODUTO'
      'WHERE '
      '  1=1'
      '  AND ID_PRODUTO = :ID_PRODUTO'
      '  AND ID_EMPRESA = :ID_EMPRESA'
      '')
    Left = 128
    Top = 224
    ParamData = <
      item
        Name = 'ID_PRODUTO'
        DataType = ftLargeint
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object tabPRODUTOSID_PRODUTO: TLargeintField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabPRODUTOSID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
    end
    object tabPRODUTOSID_CODIGO: TIntegerField
      FieldName = 'ID_CODIGO'
      Origin = 'ID_CODIGO'
    end
    object tabPRODUTOSDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 120
    end
    object tabPRODUTOSEAN: TStringField
      FieldName = 'EAN'
      Origin = 'EAN'
      Size = 14
    end
    object tabPRODUTOSEAN_TRIB: TStringField
      FieldName = 'EAN_TRIB'
      Origin = 'EAN_TRIB'
      Size = 14
    end
    object tabPRODUTOSEX_TIPI: TStringField
      FieldName = 'EX_TIPI'
      Origin = 'EX_TIPI'
      Size = 3
    end
    object tabPRODUTOSGENERO: TStringField
      FieldName = 'GENERO'
      Origin = 'GENERO'
      Size = 2
    end
    object tabPRODUTOSNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      Size = 8
    end
    object tabPRODUTOSCEST: TStringField
      FieldName = 'CEST'
      Origin = 'CEST'
      Size = 7
    end
    object tabPRODUTOSUN_COM: TStringField
      FieldName = 'UN_COM'
      Origin = 'UN_COM'
      Size = 5
    end
    object tabPRODUTOSUN_TRIB: TStringField
      FieldName = 'UN_TRIB'
      Origin = 'UN_TRIB'
      Size = 5
    end
    object tabPRODUTOSVL_COM: TFMTBCDField
      FieldName = 'VL_COM'
      Origin = 'VL_COM'
      Precision = 18
      Size = 2
    end
    object tabPRODUTOSVL_TRIB: TFMTBCDField
      FieldName = 'VL_TRIB'
      Origin = 'VL_TRIB'
      Precision = 18
      Size = 2
    end
    object tabPRODUTOSQT_TRIB: TFMTBCDField
      FieldName = 'QT_TRIB'
      Origin = 'QT_TRIB'
      Precision = 18
      Size = 3
    end
    object tabPRODUTOSIPI_COD_ENQUADRAMENTO: TStringField
      FieldName = 'IPI_COD_ENQUADRAMENTO'
      Origin = 'IPI_COD_ENQUADRAMENTO'
      Size = 3
    end
    object tabPRODUTOSIPI_CNPJ_PRODUTOR: TStringField
      FieldName = 'IPI_CNPJ_PRODUTOR'
      Origin = 'IPI_CNPJ_PRODUTOR'
      Size = 18
    end
    object tabPRODUTOSORIGEM: TIntegerField
      FieldName = 'ORIGEM'
      Origin = 'ORIGEM'
    end
    object tabPRODUTOSSIMPLES_CSOSN: TStringField
      FieldName = 'SIMPLES_CSOSN'
      Origin = 'SIMPLES_CSOSN'
      FixedChar = True
      Size = 3
    end
    object tabPRODUTOSSIMPLES_ST_PBASE: TCurrencyField
      FieldName = 'SIMPLES_ST_PBASE'
      Origin = 'SIMPLES_ST_PBASE'
    end
    object tabPRODUTOSSIMPLES_ST_RBASE: TCurrencyField
      FieldName = 'SIMPLES_ST_RBASE'
      Origin = 'SIMPLES_ST_RBASE'
    end
    object tabPRODUTOSSIMPLES_ST_MVA: TCurrencyField
      FieldName = 'SIMPLES_ST_MVA'
      Origin = 'SIMPLES_ST_MVA'
    end
    object tabPRODUTOSSIMPLES_ST_ALIQUOTA: TFMTBCDField
      FieldName = 'SIMPLES_ST_ALIQUOTA'
      Origin = 'SIMPLES_ST_ALIQUOTA'
      Precision = 18
      Size = 2
    end
    object tabPRODUTOSSIMPLES_ICMS_PBASE: TCurrencyField
      FieldName = 'SIMPLES_ICMS_PBASE'
      Origin = 'SIMPLES_ICMS_PBASE'
    end
    object tabPRODUTOSSIMPLES_ICMS_RBASE: TFMTBCDField
      FieldName = 'SIMPLES_ICMS_RBASE'
      Origin = 'SIMPLES_ICMS_RBASE'
      Precision = 18
      Size = 2
    end
    object tabPRODUTOSSIMPLES_ICMS_ALIQUOTA: TFMTBCDField
      FieldName = 'SIMPLES_ICMS_ALIQUOTA'
      Origin = 'SIMPLES_ICMS_ALIQUOTA'
      Precision = 18
      Size = 2
    end
    object tabPRODUTOSNORMAL_CST: TStringField
      FieldName = 'NORMAL_CST'
      Origin = 'NORMAL_CST'
      FixedChar = True
      Size = 2
    end
    object tabPRODUTOSNORMAL_ICMS_PBASE: TCurrencyField
      FieldName = 'NORMAL_ICMS_PBASE'
      Origin = 'NORMAL_ICMS_PBASE'
    end
    object tabPRODUTOSNORMAL_ICMS_RBASE: TCurrencyField
      FieldName = 'NORMAL_ICMS_RBASE'
      Origin = 'NORMAL_ICMS_RBASE'
    end
    object tabPRODUTOSNORMAL_ICMS_ALIQUOTA: TCurrencyField
      FieldName = 'NORMAL_ICMS_ALIQUOTA'
      Origin = 'NORMAL_ICMS_ALIQUOTA'
    end
    object tabPRODUTOSNORMAL_ICMS_MOTIVO_DES: TIntegerField
      FieldName = 'NORMAL_ICMS_MOTIVO_DES'
      Origin = 'NORMAL_ICMS_MOTIVO_DES'
    end
    object tabPRODUTOSNORMAL_ICMSST_PBASE: TCurrencyField
      FieldName = 'NORMAL_ICMSST_PBASE'
      Origin = 'NORMAL_ICMSST_PBASE'
    end
    object tabPRODUTOSNORMAL_ICMSST_RBASE: TCurrencyField
      FieldName = 'NORMAL_ICMSST_RBASE'
      Origin = 'NORMAL_ICMSST_RBASE'
    end
    object tabPRODUTOSNORMAL_ICMSST_MVA: TCurrencyField
      FieldName = 'NORMAL_ICMSST_MVA'
      Origin = 'NORMAL_ICMSST_MVA'
    end
    object tabPRODUTOSNORMAL_ICMSST_ALIQUOTA: TCurrencyField
      FieldName = 'NORMAL_ICMSST_ALIQUOTA'
      Origin = 'NORMAL_ICMSST_ALIQUOTA'
    end
  end
  object qryTmp1: TFDQuery
    Connection = cnx_BD
    Left = 320
    Top = 72
  end
  object tabTRANSPORTADORA: TFDQuery
    BeforeOpen = tabTRANSPORTADORABeforeOpen
    BeforePost = tabTRANSPORTADORABeforePost
    OnNewRecord = tabTRANSPORTADORANewRecord
    Connection = cnx_BD
    SQL.Strings = (
      'SELECT '
      '  * '
      'FROM '
      '  TRANSPORTADORA '
      'WHERE '
      '  1=1'
      '  AND ID_EMPRESA = :ID_EMPRESA'
      '  AND ID_TRANSPORTADORA = :ID_TRANSPORTADORA')
    Left = 128
    Top = 276
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_TRANSPORTADORA'
        DataType = ftLargeint
        ParamType = ptInput
      end>
    object tabTRANSPORTADORAID_TRANSPORTADORA: TLargeintField
      FieldName = 'ID_TRANSPORTADORA'
      Origin = 'ID_TRANSPORTADORA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabTRANSPORTADORAID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
    end
    object tabTRANSPORTADORAID_CODIGO: TIntegerField
      FieldName = 'ID_CODIGO'
      Origin = 'ID_CODIGO'
    end
    object tabTRANSPORTADORAID_ATIVO: TIntegerField
      FieldName = 'ID_ATIVO'
      Origin = 'ID_ATIVO'
    end
    object tabTRANSPORTADORARAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Size = 100
    end
    object tabTRANSPORTADORANOMEFANTASIA: TStringField
      FieldName = 'NOMEFANTASIA'
      Origin = 'NOMEFANTASIA'
      Size = 100
    end
    object tabTRANSPORTADORACNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Size = 18
    end
    object tabTRANSPORTADORAIE: TStringField
      FieldName = 'IE'
      Origin = 'IE'
    end
    object tabTRANSPORTADORAENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 100
    end
    object tabTRANSPORTADORANUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 10
    end
    object tabTRANSPORTADORACOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 30
    end
    object tabTRANSPORTADORABAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 50
    end
    object tabTRANSPORTADORACEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      FixedChar = True
      Size = 9
    end
    object tabTRANSPORTADORAID_CIDADES_UF: TStringField
      FieldName = 'ID_CIDADES_UF'
      Origin = 'ID_CIDADES_UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object tabTRANSPORTADORAID_CIDADES_IBGE: TIntegerField
      FieldName = 'ID_CIDADES_IBGE'
      Origin = 'ID_CIDADES_IBGE'
      Required = True
    end
    object tabTRANSPORTADORATELEFONEFIXO: TStringField
      FieldName = 'TELEFONEFIXO'
      Origin = 'TELEFONEFIXO'
      FixedChar = True
      Size = 15
    end
    object tabTRANSPORTADORAEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 100
    end
    object tabTRANSPORTADORACONTATO: TStringField
      FieldName = 'CONTATO'
      Origin = 'CONTATO'
      Size = 100
    end
    object tabTRANSPORTADORAOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Origin = 'OBSERVACOES'
      Size = 250
    end
    object tabTRANSPORTADORACADASTRO_DATA: TSQLTimeStampField
      FieldName = 'CADASTRO_DATA'
      Origin = 'CADASTRO_DATA'
      Required = True
    end
    object tabTRANSPORTADORAALTERACAO_DATA: TSQLTimeStampField
      FieldName = 'ALTERACAO_DATA'
      Origin = 'ALTERACAO_DATA'
    end
  end
  object qryPESSOAS: TFDQuery
    BeforeOpen = qryPESSOASBeforeOpen
    Connection = cnx_BD
    SQL.Strings = (
      'SELECT '
      '  * '
      'FROM '
      '  PESSOA '
      'WHERE '
      '  1=1'
      '  AND ID_EMPRESA = :ID_EMPRESA'
      '')
    Left = 320
    Top = 132
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryPESSOASID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPESSOASID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
      Origin = 'ID_PESSOA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPESSOASID_JURIDICA: TIntegerField
      FieldName = 'ID_JURIDICA'
      Origin = 'ID_JURIDICA'
      Required = True
    end
    object qryPESSOASID_ATIVO: TIntegerField
      FieldName = 'ID_ATIVO'
      Origin = 'ID_ATIVO'
      Required = True
    end
    object qryPESSOASID_PRODUTOR: TIntegerField
      FieldName = 'ID_PRODUTOR'
      Origin = 'ID_PRODUTOR'
      Required = True
    end
    object qryPESSOASID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      Required = True
    end
    object qryPESSOASID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
      Origin = 'ID_TRANSPORTADORA'
      Required = True
    end
    object qryPESSOASID_TIPO_CONTRIBUINTE: TIntegerField
      FieldName = 'ID_TIPO_CONTRIBUINTE'
      Origin = 'ID_TIPO_CONTRIBUINTE'
      Required = True
    end
    object qryPESSOASRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Size = 100
    end
    object qryPESSOASNOMEFANTASIA: TStringField
      FieldName = 'NOMEFANTASIA'
      Origin = 'NOMEFANTASIA'
      Size = 100
    end
    object qryPESSOASCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
      Size = 18
    end
    object qryPESSOASIE_RG: TStringField
      FieldName = 'IE_RG'
      Origin = 'IE_RG'
    end
    object qryPESSOASIM: TStringField
      FieldName = 'IM'
      Origin = 'IM'
    end
    object qryPESSOASENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 100
    end
    object qryPESSOASNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 10
    end
    object qryPESSOASCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 30
    end
    object qryPESSOASBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 50
    end
    object qryPESSOASCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      FixedChar = True
      Size = 9
    end
    object qryPESSOASID_CIDADES_UF: TStringField
      FieldName = 'ID_CIDADES_UF'
      Origin = 'ID_CIDADES_UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object qryPESSOASID_CIDADES_IBGE: TIntegerField
      FieldName = 'ID_CIDADES_IBGE'
      Origin = 'ID_CIDADES_IBGE'
      Required = True
    end
    object qryPESSOASTELEFONEFIXO: TStringField
      FieldName = 'TELEFONEFIXO'
      Origin = 'TELEFONEFIXO'
      Size = 15
    end
    object qryPESSOASCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Size = 15
    end
    object qryPESSOASTELEFONETRABALHO: TStringField
      FieldName = 'TELEFONETRABALHO'
      Origin = 'TELEFONETRABALHO'
      Size = 15
    end
    object qryPESSOASEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 100
    end
    object qryPESSOASCONTATO: TStringField
      FieldName = 'CONTATO'
      Origin = 'CONTATO'
      Size = 100
    end
    object qryPESSOASNASCIMENTO_ABERTURA: TDateField
      FieldName = 'NASCIMENTO_ABERTURA'
      Origin = 'NASCIMENTO_ABERTURA'
    end
    object qryPESSOASESTADOCIVIL: TStringField
      FieldName = 'ESTADOCIVIL'
      Origin = 'ESTADOCIVIL'
    end
    object qryPESSOASCONJUGE: TStringField
      FieldName = 'CONJUGE'
      Origin = 'CONJUGE'
      Size = 100
    end
    object qryPESSOASCONJUGE_NASCIMENTO: TDateField
      FieldName = 'CONJUGE_NASCIMENTO'
      Origin = 'CONJUGE_NASCIMENTO'
    end
    object qryPESSOASMAE: TStringField
      FieldName = 'MAE'
      Origin = 'MAE'
      Size = 100
    end
    object qryPESSOASPAI: TStringField
      FieldName = 'PAI'
      Origin = 'PAI'
      Size = 100
    end
    object qryPESSOASSEXO: TStringField
      FieldName = 'SEXO'
      Origin = 'SEXO'
      FixedChar = True
      Size = 1
    end
    object qryPESSOASOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Origin = 'OBSERVACOES'
      Size = 250
    end
    object qryPESSOASCADASTRO_DATA: TSQLTimeStampField
      FieldName = 'CADASTRO_DATA'
      Origin = 'CADASTRO_DATA'
    end
    object qryPESSOASALTERACAO_DATA: TSQLTimeStampField
      FieldName = 'ALTERACAO_DATA'
      Origin = 'ALTERACAO_DATA'
    end
    object qryPESSOASFOTO: TBlobField
      FieldName = 'FOTO'
      Origin = 'FOTO'
    end
    object qryPESSOASCBR_HISTORICO: TStringField
      FieldName = 'CBR_HISTORICO'
      Origin = 'CBR_HISTORICO'
      Size = 300
    end
    object qryPESSOASCBR_VALOR: TFMTBCDField
      FieldName = 'CBR_VALOR'
      Origin = 'CBR_VALOR'
      Precision = 18
      Size = 2
    end
  end
  object QryGen: TFDQuery
    Connection = cnx_BD
    Left = 328
    Top = 280
  end
  object tabMOTORISTAS: TFDQuery
    BeforeOpen = tabMOTORISTASBeforeOpen
    BeforePost = tabMOTORISTASBeforePost
    OnNewRecord = tabMOTORISTASNewRecord
    Connection = cnx_BD
    SQL.Strings = (
      'SELECT '
      '  * '
      'FROM '
      '  MOTORISTA'
      'WHERE '
      '  1=1'
      '  AND ID_EMPRESA = :ID_EMPRESA'
      '  AND ID_MOTORISTA = :ID_MOTORISTA'
      '')
    Left = 120
    Top = 336
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_MOTORISTA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object tabMOTORISTASID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMOTORISTASID_MOTORISTA: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_MOTORISTA'
      Origin = 'ID_MOTORISTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabMOTORISTASNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object tabMOTORISTASCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Size = 11
    end
    object tabMOTORISTASRENACH: TStringField
      FieldName = 'RENACH'
      Origin = 'RENACH'
      Size = 11
    end
    object tabMOTORISTASNUMERO_REGISTRO: TStringField
      FieldName = 'NUMERO_REGISTRO'
      Origin = 'NUMERO_REGISTRO'
      Size = 9
    end
    object tabMOTORISTASCODIGO_SEGURANCA: TStringField
      FieldName = 'CODIGO_SEGURANCA'
      Origin = 'CODIGO_SEGURANCA'
      Size = 11
    end
    object tabMOTORISTASCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Origin = 'CATEGORIA'
      Size = 5
    end
    object tabMOTORISTASDATA_NASCIMENTO: TDateField
      FieldName = 'DATA_NASCIMENTO'
      Origin = 'DATA_NASCIMENTO'
    end
    object tabMOTORISTASBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 60
    end
    object tabMOTORISTASRUA: TStringField
      FieldName = 'RUA'
      Origin = 'RUA'
      Size = 60
    end
    object tabMOTORISTASNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 30
    end
    object tabMOTORISTASCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 60
    end
    object tabMOTORISTASCEP: TIntegerField
      FieldName = 'CEP'
      Origin = 'CEP'
    end
    object tabMOTORISTASCODIGO_MUNICIPIO: TIntegerField
      FieldName = 'CODIGO_MUNICIPIO'
      Origin = 'CODIGO_MUNICIPIO'
    end
    object tabMOTORISTASCELULAR: TLargeintField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
    end
    object tabMOTORISTASNOME_SOLTEIRA_MAE: TStringField
      FieldName = 'NOME_SOLTEIRA_MAE'
      Origin = 'NOME_SOLTEIRA_MAE'
      Size = 50
    end
  end
  object tabVEICULOS: TFDQuery
    BeforeOpen = tabVEICULOSBeforeOpen
    BeforePost = tabVEICULOSBeforePost
    OnNewRecord = tabVEICULOSNewRecord
    Connection = cnx_BD
    SQL.Strings = (
      'SELECT '
      '  * '
      'FROM '
      '  VEICULO'
      'WHERE '
      '  1=1'
      '  AND ID_EMPRESA = :ID_EMPRESA'
      '  AND ID_VEICULO = :ID_VEICULO')
    Left = 120
    Top = 392
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_VEICULO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object tabVEICULOSID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabVEICULOSID_VEICULO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_VEICULO'
      Origin = 'ID_VEICULO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabVEICULOSRNTRC: TStringField
      FieldName = 'RNTRC'
      Origin = 'RNTRC'
      Size = 10
    end
    object tabVEICULOSCOD_AGENDA_PORT: TStringField
      FieldName = 'COD_AGENDA_PORT'
      Origin = 'COD_AGENDA_PORT'
    end
    object tabVEICULOSCODIGO_INTERNO: TStringField
      FieldName = 'CODIGO_INTERNO'
      Origin = 'CODIGO_INTERNO'
      Size = 10
    end
    object tabVEICULOSTIPO_CARROCERIA: TIntegerField
      FieldName = 'TIPO_CARROCERIA'
      Origin = 'TIPO_CARROCERIA'
    end
    object tabVEICULOSPLACA: TStringField
      FieldName = 'PLACA'
      Origin = 'PLACA'
      Size = 10
    end
    object tabVEICULOSUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      FixedChar = True
      Size = 2
    end
    object tabVEICULOSRENAVAN: TStringField
      FieldName = 'RENAVAN'
      Origin = 'RENAVAN'
      Size = 15
    end
    object tabVEICULOSTIPO_RODADO: TIntegerField
      FieldName = 'TIPO_RODADO'
      Origin = 'TIPO_RODADO'
    end
    object tabVEICULOSCAPACIDADE_KG: TFMTBCDField
      FieldName = 'CAPACIDADE_KG'
      Origin = 'CAPACIDADE_KG'
      Precision = 18
      Size = 2
    end
    object tabVEICULOSCAPACIDADE_M3: TFMTBCDField
      FieldName = 'CAPACIDADE_M3'
      Origin = 'CAPACIDADE_M3'
      Precision = 18
      Size = 2
    end
    object tabVEICULOSDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 150
    end
    object tabVEICULOSTIPO_VEICULO: TIntegerField
      FieldName = 'TIPO_VEICULO'
      Origin = 'TIPO_VEICULO'
    end
    object tabVEICULOSTARA: TFMTBCDField
      FieldName = 'TARA'
      Origin = 'TARA'
      Precision = 18
      Size = 1
    end
    object tabVEICULOSCOR: TStringField
      FieldName = 'COR'
      Origin = 'COR'
      FixedChar = True
      Size = 3
    end
    object tabVEICULOSCOR_DESCRICAO: TStringField
      FieldName = 'COR_DESCRICAO'
      Origin = 'COR_DESCRICAO'
      Size = 40
    end
    object tabVEICULOSCODIGO_MARCA_MODELO: TStringField
      FieldName = 'CODIGO_MARCA_MODELO'
      Origin = 'CODIGO_MARCA_MODELO'
      Size = 6
    end
    object tabVEICULOSVALOR_UNITARIO: TFMTBCDField
      FieldName = 'VALOR_UNITARIO'
      Origin = 'VALOR_UNITARIO'
      Precision = 18
      Size = 2
    end
    object tabVEICULOSFRETE_UNITARIO: TFMTBCDField
      FieldName = 'FRETE_UNITARIO'
      Origin = 'FRETE_UNITARIO'
      Precision = 18
      Size = 2
    end
    object tabVEICULOSCHASSI: TStringField
      FieldName = 'CHASSI'
      Origin = 'CHASSI'
      Size = 17
    end
    object tabVEICULOSMARCA: TStringField
      FieldName = 'MARCA'
      Origin = 'MARCA'
      Size = 30
    end
    object tabVEICULOSMODELO: TStringField
      FieldName = 'MODELO'
      Origin = 'MODELO'
      Size = 100
    end
    object tabVEICULOSANO_FABRICACAO: TIntegerField
      FieldName = 'ANO_FABRICACAO'
      Origin = 'ANO_FABRICACAO'
    end
    object tabVEICULOSANO_MODELO: TIntegerField
      FieldName = 'ANO_MODELO'
      Origin = 'ANO_MODELO'
    end
    object tabVEICULOSNUMERO_EIXOS: TSmallintField
      FieldName = 'NUMERO_EIXOS'
      Origin = 'NUMERO_EIXOS'
    end
    object tabVEICULOSCODIGO_MUNICIPIO: TIntegerField
      FieldName = 'CODIGO_MUNICIPIO'
      Origin = 'CODIGO_MUNICIPIO'
    end
  end
  object tabUSUARIO: TFDQuery
    BeforePost = tabUSUARIOBeforePost
    Connection = cnx_BD
    SQL.Strings = (
      'SELECT '
      '  * '
      'FROM '
      '  USUARIO'
      'WHERE '
      '  1=1'
      '  AND ID_USUARIO = :ID_USUARIO'
      '')
    Left = 120
    Top = 448
    ParamData = <
      item
        Name = 'ID_USUARIO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object tabUSUARIOID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tabUSUARIOUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 50
    end
    object tabUSUARIOSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Size = 50
    end
    object tabUSUARIODATAHORA: TSQLTimeStampField
      FieldName = 'DATAHORA'
      Origin = 'DATAHORA'
    end
  end
  object cnx_BDSiscom: TFDConnection
    ConnectionName = 'Siscomsoft'
    Params.Strings = (
      'Protocol=TCPIP'
      'DriverID=FB'
      'Password=hfwarp'
      'User_Name=SYSDBA'
      'Database=C:\SISCOM\BD\COMERCIAL.FDB'
      'Port=3051')
    ResourceOptions.AssignedValues = [rvAutoReconnect]
    ResourceOptions.AutoReconnect = True
    LoginPrompt = False
    BeforeConnect = cnx_BDSiscomBeforeConnect
    Left = 496
    Top = 32
  end
  object SqlConsultaNFe: TFDQuery
    BeforeOpen = SqlConsultaNFeBeforeOpen
    Connection = cnx_BDSiscom
    SQL.Strings = (
      
        'select NF.NFNUMERO,NF.DATAMOV,NF.serie, nf.totalgeral, nf.chave_' +
        'acesso, nf.peso_bruto,cl.nome '
      
        'from NFVENDAS NF                                                ' +
        '                              '
      
        'inner join CLIENTE CL on cl.codcliente = nf.codcliente          ' +
        '                              '
      
        'where  NF.CODEMPRESA=:ID_EMPRESA and NF.COD_NATUREZA <> '#39#39'      ' +
        '                            ')
    Left = 504
    Top = 98
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        ParamType = ptInput
      end>
    object SqlConsultaNFeNFNUMERO: TIntegerField
      FieldName = 'NFNUMERO'
      Origin = 'NFNUMERO'
    end
    object SqlConsultaNFeDATAMOV: TDateField
      FieldName = 'DATAMOV'
      Origin = 'DATAMOV'
    end
    object SqlConsultaNFeSERIE: TStringField
      FieldName = 'SERIE'
      Origin = 'SERIE'
      Size = 5
    end
    object SqlConsultaNFeTOTALGERAL: TFMTBCDField
      FieldName = 'TOTALGERAL'
      Origin = 'TOTALGERAL'
      Precision = 18
      Size = 2
    end
    object SqlConsultaNFeCHAVE_ACESSO: TStringField
      FieldName = 'CHAVE_ACESSO'
      Origin = 'CHAVE_ACESSO'
      Size = 60
    end
    object SqlConsultaNFePESO_BRUTO: TFMTBCDField
      FieldName = 'PESO_BRUTO'
      Origin = 'PESO_BRUTO'
      Precision = 18
      Size = 2
    end
    object SqlConsultaNFeNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  object DtsConsultaNFe: TDataSource
    DataSet = SqlConsultaNFe
    Left = 504
    Top = 162
  end
end
