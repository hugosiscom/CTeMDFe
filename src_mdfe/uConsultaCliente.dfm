object FrmConsultaCliente: TFrmConsultaCliente
  Left = 193
  Top = 183
  ActiveControl = edtpesquisa
  BorderStyle = bsSingle
  Caption = 'Consulta Simples de Cliente '
  ClientHeight = 430
  ClientWidth = 822
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlue
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 136
    Width = 822
    Height = 275
    Align = alClient
    Caption = 'Resultado da Pesquisa'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 818
      Height = 258
      Align = alClient
      FixedColor = clInactiveBorder
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlue
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      OnKeyDown = DBGrid1KeyDown
      OnKeyPress = DBGrid1KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'CODCLIENTE'
          Title.Caption = 'C'#243'digo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Width = 261
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMEFANT'
          Title.Caption = 'Nome Fantasia'
          Width = 174
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CNPJ'
          Title.Caption = 'CPF/CNPJ'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENDERECO'
          Title.Caption = 'Endere'#231'o'
          Visible = True
        end
        item
          DropDownRows = 10
          Expanded = False
          FieldName = 'NUMERO'
          Title.Caption = 'N'#250'mero'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SETOR'
          Title.Caption = 'Bairro'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CEP'
          Title.Caption = 'Cep.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CIDADE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UF'
          Title.Caption = 'Estado'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TELEFONE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FAX'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CELULAR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ATIVIDADE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATANASC'
          Title.Caption = 'Data nasc.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATACAD'
          Title.Caption = 'Data cad.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SEXO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LOJA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODVENDEDOR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LCREDITO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FOTO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'E_MAIL'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPO'
          Visible = True
        end>
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 0
    Width = 822
    Height = 136
    Align = alTop
    Caption = 'Tipo de Pesquisa:'
    TabOrder = 0
    object lblnome: TLabel
      Left = 306
      Top = 16
      Width = 118
      Height = 13
      Caption = 'Conte'#250'do para pesquisa:'
    end
    object Rgbpesquisa: TRadioGroup
      Left = 3
      Top = 12
      Width = 110
      Height = 112
      Caption = 'Selecione:'
      ItemIndex = 2
      Items.Strings = (
        'C'#243'digo'
        'Nome/Fantasia'
        'CNPJ/CPF')
      TabOrder = 0
    end
    object edtpesquisa: TEdit
      Left = 306
      Top = 35
      Width = 373
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object btnconsulta: TBitBtn
      Left = 306
      Top = 64
      Width = 113
      Height = 33
      Caption = '&Consultar'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        A46769A46769A46769A46769A46769A46769A46769A46769A46769A46769A467
        69A46769A46769FF00FFFF00FFFF00FF485360FEE9C7F4DAB5F3D5AAF2D0A0EF
        CB96EFC68BEDC182EBC17FEBC180EBC180F2C782A46769FF00FFFF00FF4380B7
        1F6FC2656B86F3DABCF2D5B1F0D0A7EECB9EEDC793EDC28BE9BD81E9BD7FE9BD
        7FEFC481A46769FF00FFFF00FFFF00FF32A3FF1672D76B6A80F2DABCF2D5B2EF
        D0A9EECB9EEDC796EBC28CE9BD82E9BD7FEFC481A46769FF00FFFF00FFFF00FF
        A0675B34A1FF1572D45E6782F3DABBF2D5B1F0D0A6EECB9EEDC795EBC28AEABF
        81EFC480A46769FF00FFFF00FFFF00FFA7756BFFFBF033A6FF4078AD8E675EAC
        7F7597645EAC7D6FCAA083EDC695EBC28AEFC583A46769FF00FFFF00FFFF00FF
        A7756BFFFFFCFAF0E6AD8A88B78F84D8BAA5EED5B6D7B298B58877CBA083EBC7
        93F2C98CA46769FF00FFFF00FFFF00FFBC8268FFFFFFFEF7F2AF847FDAC0B4F7
        E3CFF6E0C5FFFFF4D7B198AC7D6FEECC9EF3CE97A46769FF00FFFF00FFFF00FF
        BC8268FFFFFFFFFEFC976560F6E9E0F7EADAF6E3CFFFFFEBEFD4B797645EF0D0
        A6F6D3A0A46769FF00FFFF00FFFF00FFD1926DFFFFFFFFFFFFB08884DECAC4FA
        EFE5F8EAD9FFFFD4D9B8A5AC7F74F4D8B1EBCFA4A46769FF00FFFF00FFFF00FF
        D1926DFFFFFFFFFFFFD5BFBCBA9793DECAC4F6E9DEDAC0B4B78F84B28C7BDECE
        B4B6AA93A46769FF00FFFF00FFFF00FFDA9D75FFFFFFFFFFFFFFFFFFD5BFBCB0
        8884976560AF867FCAA79DA56B5FA56B5FA56B5FA46769FF00FFFF00FFFF00FF
        DA9D75FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFBFFFEF7DAC1BAA56B5FE19E
        55E68F31B56D4DFF00FFFF00FFFF00FFE7AB79FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFDCC7C5A56B5FF8B55CBF7A5CFF00FFFF00FFFF00FFFF00FF
        E7AB79FBF4F0FBF4EFFAF3EFFAF3EFF8F2EFF7F2EFF7F2EFD8C2C0A56B5FC183
        6CFF00FFFF00FFFF00FFFF00FFFF00FFE7AB79D1926DD1926DD1926DD1926DD1
        926DD1926DD1926DD1926DA56B5FFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 2
      OnClick = btnconsultaClick
    end
    object btnok: TBitBtn
      Left = 566
      Top = 64
      Width = 113
      Height = 33
      Caption = '&Sair'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FF824B4B4E1E1FFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF824B4B824B4BA64B4BA9
        4D4D4E1E1FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        824B4B824B4BB64F50C24F50C54D4EB24D4E4E1E1F824B4B824B4B824B4B824B
        4B824B4B824B4BFF00FFFF00FFFF00FF824B4BD45859CB5556C95455C95253B7
        4F524E1E1FFE8B8CFB9A9CF8AAABF7B5B6F7B5B6824B4BFF00FFFF00FFFF00FF
        824B4BD75C5DD05A5BCF595ACF5758BD53564E1E1F23B54A13C14816BD480CBC
        41F7B5B6824B4BFF00FFFF00FFFF00FF824B4BDD6364D75F60D55E5FD55C5DC2
        575A4E1E1F2AB44D1CBF4C1EBC4C13BC45F7B5B6824B4BFF00FFFF00FFFF00FF
        824B4BE36869DD6566DA6364DE6667C6595B4E1E1F26B14916BC481BBB4910BB
        43F7B5B6824B4BFF00FFFF00FFFF00FF824B4BEB6D6EE26768E67E7FFAD3D4CC
        6E704E1E1FA5D89750D16F42C9662DC758F7B5B6824B4BFF00FFFF00FFFF00FF
        824B4BF27374E96C6DEB8182FCD1D3CF6E704E1E1FFFF2CCFFFFD7FFFFD4E6FC
        C7F7B5B6824B4BFF00FFFF00FFFF00FF824B4BF87879F07576EE7273F07374D1
        65664E1E1FFCEFC7FFFFD5FFFFD3FFFFD7F7B5B6824B4BFF00FFFF00FFFF00FF
        824B4BFE7F80F77A7BF6797AF77779D76B6B4E1E1FFCEFC7FFFFD5FFFFD3FFFF
        D5F7B5B6824B4BFF00FFFF00FFFF00FF824B4BFF8384FC7F80FB7E7FFE7F80DA
        6E6F4E1E1FFCEFC7FFFFD5FFFFD3FFFFD5F7B5B6824B4BFF00FFFF00FFFF00FF
        824B4BFF8889FF8283FF8182FF8283E073744E1E1FFCEFC7FFFFD5FFFFD3FFFF
        D5F7B5B6824B4BFF00FFFF00FFFF00FF824B4B824B4BE27576FE8182FF8687E5
        76774E1E1FFAEBC5FCFBD1FCFBCFFCFBD1F7B5B6824B4BFF00FFFF00FFFF00FF
        FF00FFFF00FF824B4B9C5657CB6C6DCF6E6E4E1E1F824B4B824B4B824B4B824B
        4B824B4B824B4BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF824B4B82
        4B4B4E1E1FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 1
      OnClick = btnokClick
    end
    object Radiotipo: TRadioGroup
      Left = 114
      Top = 12
      Width = 92
      Height = 112
      Caption = 'Que:'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemIndex = 1
      Items.Strings = (
        'Come'#231'e com'
        'Contenha')
      ParentFont = False
      TabOrder = 4
    end
    object CbxInativo: TCheckBox
      Left = 583
      Top = 12
      Width = 97
      Height = 17
      Caption = 'Cliente Inativo'
      TabOrder = 5
    end
    object GbxTipo: TGroupBox
      Left = 209
      Top = 12
      Width = 94
      Height = 112
      Caption = 'Tipo:'
      Enabled = False
      TabOrder = 6
      object RbtFornecedor: TRadioButton
        Left = 3
        Top = 36
        Width = 82
        Height = 17
        Caption = 'Fornecedor'
        Enabled = False
        TabOrder = 0
      end
      object RbtCliente: TRadioButton
        Left = 3
        Top = 18
        Width = 81
        Height = 17
        Caption = 'Cliente'
        Enabled = False
        TabOrder = 1
      end
      object RbtTodos: TRadioButton
        Left = 3
        Top = 91
        Width = 81
        Height = 17
        Caption = 'Todos'
        Checked = True
        Enabled = False
        TabOrder = 2
        TabStop = True
      end
      object RbtTransp: TRadioButton
        Left = 3
        Top = 54
        Width = 82
        Height = 17
        Caption = 'Transportador'
        Enabled = False
        TabOrder = 3
      end
      object RbtFuncionario: TRadioButton
        Left = 3
        Top = 72
        Width = 85
        Height = 17
        Caption = 'Funcion'#225'rio'
        Enabled = False
        TabOrder = 4
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 411
    Width = 822
    Height = 19
    Panels = <
      item
        Text = ' Insert = Incluir'
        Width = 100
      end
      item
        Text = ' F9 = Consultar'
        Width = 100
      end
      item
        Text = ' Esc = Sair'
        Width = 50
      end>
  end
  object fdqConsultaClientes: TFDQuery
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'select p.* from pessoa p'
      'where p.ID_PESSOA > 0')
    Left = 408
    Top = 224
    object fdqConsultaClientesID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqConsultaClientesID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
      Origin = 'ID_PESSOA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqConsultaClientesID_JURIDICA: TIntegerField
      FieldName = 'ID_JURIDICA'
      Origin = 'ID_JURIDICA'
      Required = True
    end
    object fdqConsultaClientesID_ATIVO: TIntegerField
      FieldName = 'ID_ATIVO'
      Origin = 'ID_ATIVO'
      Required = True
    end
    object fdqConsultaClientesID_PRODUTOR: TIntegerField
      FieldName = 'ID_PRODUTOR'
      Origin = 'ID_PRODUTOR'
      Required = True
    end
    object fdqConsultaClientesID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      Required = True
    end
    object fdqConsultaClientesID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
      Origin = 'ID_TRANSPORTADORA'
      Required = True
    end
    object fdqConsultaClientesID_TIPO_CONTRIBUINTE: TIntegerField
      FieldName = 'ID_TIPO_CONTRIBUINTE'
      Origin = 'ID_TIPO_CONTRIBUINTE'
      Required = True
    end
    object fdqConsultaClientesRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Size = 100
    end
    object fdqConsultaClientesNOMEFANTASIA: TStringField
      FieldName = 'NOMEFANTASIA'
      Origin = 'NOMEFANTASIA'
      Size = 100
    end
    object fdqConsultaClientesCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
      Size = 18
    end
    object fdqConsultaClientesIE_RG: TStringField
      FieldName = 'IE_RG'
      Origin = 'IE_RG'
    end
    object fdqConsultaClientesIM: TStringField
      FieldName = 'IM'
      Origin = 'IM'
    end
    object fdqConsultaClientesENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 100
    end
    object fdqConsultaClientesNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 10
    end
    object fdqConsultaClientesCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 30
    end
    object fdqConsultaClientesBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 50
    end
    object fdqConsultaClientesCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      FixedChar = True
      Size = 9
    end
    object fdqConsultaClientesID_CIDADES_UF: TStringField
      FieldName = 'ID_CIDADES_UF'
      Origin = 'ID_CIDADES_UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object fdqConsultaClientesID_CIDADES_IBGE: TIntegerField
      FieldName = 'ID_CIDADES_IBGE'
      Origin = 'ID_CIDADES_IBGE'
      Required = True
    end
    object fdqConsultaClientesTELEFONEFIXO: TStringField
      FieldName = 'TELEFONEFIXO'
      Origin = 'TELEFONEFIXO'
      Size = 15
    end
    object fdqConsultaClientesCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Size = 15
    end
    object fdqConsultaClientesTELEFONETRABALHO: TStringField
      FieldName = 'TELEFONETRABALHO'
      Origin = 'TELEFONETRABALHO'
      Size = 15
    end
    object fdqConsultaClientesEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 100
    end
    object fdqConsultaClientesCONTATO: TStringField
      FieldName = 'CONTATO'
      Origin = 'CONTATO'
      Size = 100
    end
    object fdqConsultaClientesNASCIMENTO_ABERTURA: TDateField
      FieldName = 'NASCIMENTO_ABERTURA'
      Origin = 'NASCIMENTO_ABERTURA'
    end
    object fdqConsultaClientesESTADOCIVIL: TStringField
      FieldName = 'ESTADOCIVIL'
      Origin = 'ESTADOCIVIL'
    end
    object fdqConsultaClientesCONJUGE: TStringField
      FieldName = 'CONJUGE'
      Origin = 'CONJUGE'
      Size = 100
    end
    object fdqConsultaClientesCONJUGE_NASCIMENTO: TDateField
      FieldName = 'CONJUGE_NASCIMENTO'
      Origin = 'CONJUGE_NASCIMENTO'
    end
    object fdqConsultaClientesMAE: TStringField
      FieldName = 'MAE'
      Origin = 'MAE'
      Size = 100
    end
    object fdqConsultaClientesPAI: TStringField
      FieldName = 'PAI'
      Origin = 'PAI'
      Size = 100
    end
    object fdqConsultaClientesSEXO: TStringField
      FieldName = 'SEXO'
      Origin = 'SEXO'
      FixedChar = True
      Size = 1
    end
    object fdqConsultaClientesOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Origin = 'OBSERVACOES'
      Size = 250
    end
    object fdqConsultaClientesCADASTRO_DATA: TSQLTimeStampField
      FieldName = 'CADASTRO_DATA'
      Origin = 'CADASTRO_DATA'
    end
    object fdqConsultaClientesALTERACAO_DATA: TSQLTimeStampField
      FieldName = 'ALTERACAO_DATA'
      Origin = 'ALTERACAO_DATA'
    end
    object fdqConsultaClientesFOTO: TBlobField
      FieldName = 'FOTO'
      Origin = 'FOTO'
    end
    object fdqConsultaClientesCBR_HISTORICO: TStringField
      FieldName = 'CBR_HISTORICO'
      Origin = 'CBR_HISTORICO'
      Size = 300
    end
    object fdqConsultaClientesCBR_VALOR: TFMTBCDField
      FieldName = 'CBR_VALOR'
      Origin = 'CBR_VALOR'
      Precision = 18
      Size = 2
    end
  end
  object fdqCliente: TFDQuery
    SQL.Strings = (
      'select p.* from pessoa p where ID_PESSOA=:ID_PESSOA')
    Left = 168
    Top = 256
    ParamData = <
      item
        Name = 'ID_PESSOA'
        ParamType = ptInput
      end>
  end
end
