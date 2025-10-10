inherited frmPESSOAScadastro: TfrmPESSOAScadastro
  Caption = 'Pessoas'
  ClientHeight = 518
  ClientWidth = 797
  ExplicitWidth = 813
  ExplicitHeight = 557
  TextHeight = 13
  inherited pnlComandos: TPanel
    Top = 463
    Width = 791
    TabOrder = 1
    ExplicitTop = 463
    ExplicitWidth = 791
    inherited btnCancelar: TJvSpeedButton
      Left = 678
      ExplicitLeft = 678
    end
    inherited btnConfirmar: TJvSpeedButton
      Left = 562
      ExplicitLeft = 562
    end
  end
  inherited pageDefault: TJvPageControl
    Width = 791
    Height = 454
    TabOrder = 0
    ExplicitWidth = 791
    ExplicitHeight = 454
    inherited tabDefault: TTabSheet
      ExplicitWidth = 783
      ExplicitHeight = 426
      object JvgGroupBox1: TJvgGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 777
        Height = 420
        Align = alClient
        Caption = 'Dados Principais'
        TabOrder = 0
        Border.Inner = bvSpace
        Border.Outer = bvNone
        Border.Bold = False
        CaptionBorder.Inner = bvSpace
        CaptionBorder.Outer = bvNone
        CaptionBorder.Bold = False
        CaptionGradient.Active = False
        CaptionGradient.Orientation = fgdHorizontal
        CaptionShift.X = 8
        CaptionShift.Y = 0
        Colors.Text = clHighlightText
        Colors.TextActive = clHighlightText
        Colors.Caption = clBtnShadow
        Colors.CaptionActive = clBtnShadow
        Colors.Client = clBtnFace
        Colors.ClientActive = clBtnFace
        Gradient.FromColor = clBlack
        Gradient.ToColor = clGray
        Gradient.Active = False
        Gradient.Orientation = fgdHorizontal
        Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
        FullHeight = 0
        object lbRazaoSocial: TJvLabel
          Left = 5
          Top = 60
          Width = 29
          Height = 13
          Caption = 'Nome'
          Transparent = True
        end
        object JvShape1: TJvShape
          Left = 5
          Top = 184
          Width = 767
          Height = 1
        end
        object JvLabel9: TJvLabel
          Left = 5
          Top = 225
          Width = 21
          Height = 13
          Caption = 'CEP'
          Transparent = True
        end
        object JvLabel10: TJvLabel
          Left = 5
          Top = 265
          Width = 47
          Height = 13
          Caption = 'Endere'#231'o'
          Transparent = True
        end
        object JvLabel11: TJvLabel
          Left = 5
          Top = 306
          Width = 67
          Height = 13
          Caption = 'Complemento'
          Transparent = True
        end
        object JvLabel12: TJvLabel
          Left = 664
          Top = 307
          Width = 39
          Height = 13
          Caption = 'N'#250'mero'
          Transparent = True
        end
        object JvLabel13: TJvLabel
          Left = 5
          Top = 347
          Width = 30
          Height = 13
          Caption = 'Bairro'
          Transparent = True
        end
        object JvLabel14: TJvLabel
          Left = 5
          Top = 101
          Width = 30
          Height = 13
          Caption = 'E-Mail'
          Transparent = True
        end
        object JvLabel1: TJvLabel
          Left = 389
          Top = 60
          Width = 84
          Height = 13
          Caption = 'Tipo Contribuinte'
          Transparent = True
        end
        object JvLabel2: TJvLabel
          Left = 626
          Top = 225
          Width = 104
          Height = 13
          Caption = 'Telefone do Trabalho'
          Transparent = True
        end
        object JvLabel3: TJvLabel
          Left = 474
          Top = 225
          Width = 75
          Height = 13
          Caption = 'Telefone M'#243'vel'
          Transparent = True
        end
        object JvLabel4: TJvLabel
          Left = 322
          Top = 224
          Width = 67
          Height = 13
          Caption = 'Telefone Fixo'
          Transparent = True
        end
        object lbCNPJ: TJvLabel
          AlignWithMargins = True
          Left = 5
          Top = 19
          Width = 767
          Height = 13
          Align = alTop
          Caption = 'CNPJ'
          Transparent = True
          ExplicitWidth = 27
        end
        object CPF_CNPJ: TJvDBMaskEdit
          Left = 5
          Top = 33
          Width = 157
          Height = 21
          DataField = 'CPF_CNPJ'
          DataSource = dtsDefault
          TabOrder = 1
          EditMask = ''
          OnChange = TEditMascaraCPFCNPJ
        end
        object RAZAOSOCIAL: TJvDBMaskEdit
          Left = 5
          Top = 74
          Width = 378
          Height = 21
          DataField = 'RAZAOSOCIAL'
          DataSource = dtsDefault
          TabOrder = 5
          EditMask = ''
        end
        object CEP: TJvDBMaskEdit
          Left = 5
          Top = 238
          Width = 77
          Height = 21
          DataField = 'CEP'
          DataSource = dtsDefault
          TabOrder = 8
          EditMask = ''
          OnChange = TEditMascaraCEP
        end
        object ENDERECO: TJvDBMaskEdit
          Left = 5
          Top = 279
          Width = 767
          Height = 21
          DataField = 'ENDERECO'
          DataSource = dtsDefault
          TabOrder = 12
          EditMask = ''
        end
        object COMPLEMENTO: TJvDBMaskEdit
          Left = 5
          Top = 320
          Width = 653
          Height = 21
          DataField = 'COMPLEMENTO'
          DataSource = dtsDefault
          TabOrder = 13
          EditMask = ''
        end
        object NUMERO: TJvDBMaskEdit
          Left = 664
          Top = 320
          Width = 108
          Height = 21
          DataField = 'NUMERO'
          DataSource = dtsDefault
          TabOrder = 14
          EditMask = ''
        end
        object BAIRRO: TJvDBMaskEdit
          Left = 5
          Top = 361
          Width = 344
          Height = 21
          DataField = 'BAIRRO'
          DataSource = dtsDefault
          TabOrder = 15
          EditMask = ''
        end
        object ID_CIDADES_UF: TJvDBLookupCombo
          Left = 355
          Top = 361
          Width = 58
          Height = 21
          DataField = 'ID_CIDADES_UF'
          DataSource = dtsDefault
          LookupField = 'ID_CIDADES_UF'
          LookupDisplay = 'ID_CIDADES_UF'
          LookupSource = dtscnsCIDADES_UF
          TabOrder = 16
          OnChange = ID_CIDADES_UFChange
        end
        object ID_CIDADES_IBGE: TJvDBLookupCombo
          Left = 421
          Top = 361
          Width = 353
          Height = 21
          DataField = 'ID_CIDADES_IBGE'
          DataSource = dtsDefault
          LookupField = 'ID_CIDADES_IBGE'
          LookupDisplay = 'DESCRICAO'
          LookupSource = dtscnsCIDADES
          TabOrder = 17
        end
        object EMAIL: TJvDBMaskEdit
          Left = 5
          Top = 115
          Width = 378
          Height = 21
          DataField = 'EMAIL'
          DataSource = dtsDefault
          TabOrder = 7
          EditMask = ''
        end
        object ID_TRANSPORTADORA: TJvDBCheckBox
          Left = 389
          Top = 35
          Width = 97
          Height = 17
          TabStop = False
          Caption = 'Transportadora'
          DataField = 'ID_TRANSPORTADORA'
          DataSource = dtsDefault
          TabOrder = 2
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object ID_PRODUTOR: TJvDBCheckBox
          Left = 507
          Top = 35
          Width = 88
          Height = 17
          TabStop = False
          Caption = 'Produtor Rural'
          DataField = 'ID_PRODUTOR'
          DataSource = dtsDefault
          TabOrder = 3
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object ID_TIPO_CONTRIBUINTE: TJvDBComboBox
          Left = 389
          Top = 74
          Width = 206
          Height = 21
          DataField = 'ID_TIPO_CONTRIBUINTE'
          DataSource = dtsDefault
          Items.Strings = (
            '1 - CONTRIBUINTE'
            '2 - ISENTO'
            '3 - N'#195'O CONTRIBUINTE')
          TabOrder = 6
          Values.Strings = (
            '1'
            '2'
            '3')
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Tahoma'
          ListSettings.OutfilteredValueFont.Style = []
        end
        object JvDBImage1: TJvDBImage
          Left = 611
          Top = 38
          Width = 161
          Height = 122
          DataField = 'FOTO'
          DataSource = dtsDefault
          TabOrder = 4
          TabStop = False
        end
        object ID_ATIVO: TJvDBCheckBox
          Left = 681
          Top = 15
          Width = 89
          Height = 17
          TabStop = False
          Caption = 'Registro Ativo'
          DataField = 'ID_ATIVO'
          DataSource = dtsDefault
          TabOrder = 0
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object TELEFONETRABALHO: TJvDBMaskEdit
          Left = 626
          Top = 238
          Width = 146
          Height = 21
          DataField = 'TELEFONETRABALHO'
          DataSource = dtsDefault
          TabOrder = 11
          EditMask = ''
          OnChange = TEditMascaraTELEFONE
        end
        object CELULAR: TJvDBMaskEdit
          Left = 474
          Top = 238
          Width = 146
          Height = 21
          DataField = 'CELULAR'
          DataSource = dtsDefault
          TabOrder = 10
          EditMask = ''
          OnChange = TEditMascaraTELEFONE
        end
        object TELEFONEFIXO: TJvDBMaskEdit
          Left = 322
          Top = 238
          Width = 146
          Height = 21
          DataField = 'TELEFONEFIXO'
          DataSource = dtsDefault
          TabOrder = 9
          EditMask = ''
          OnChange = TEditMascaraTELEFONE
        end
        object btnpesquisar: TBitBtn
          Left = 316
          Top = 33
          Width = 33
          Height = 21
          Hint = 'Consulta Cliente'
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000320B0000320B000000010000000100005A6B7300AD7B
            73004A637B00EFBD8400B58C8C00A5948C00C6948C00B59C8C00BD9C8C00F7BD
            8C00BD949400C6949400CE949400C69C9400CEAD9400F7CE9400C6A59C00CEA5
            9C00D6A59C00C6AD9C00CEAD9C00D6AD9C00F7CE9C00F7D69C004A7BA500CEAD
            A500D6B5A500DEBDA500F7D6A500DEBDAD00DEC6AD00E7C6AD00FFDEAD00FFE7
            AD00CEB5B500F7DEB500F7E7B500FFE7B500FFEFB500D6BDBD00DED6BD00E7DE
            BD00FFE7BD006B9CC600EFDEC600FFEFC600FFF7C600F7E7CE00FFF7CE00F7EF
            D600F7F7D600FFF7D600FFFFD6002184DE00F7F7DE00FFFFDE001884E700188C
            E700FFFFE700188CEF00218CEF00B5D6EF00F7F7EF00FFF7EF00FFFFEF00FFFF
            F700FF00FF004AB5FF0052B5FF0052BDFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0042020A424242
            424242424242424242422B39180B42424242424242424242424243443C180B42
            4242424242424242424242444438180B42424242424242424242424244433918
            0A424242424242424242424242444335004201101A114242424242424242453D
            05072F343434291942424242424242221A2D34343437403E0442424242424206
            231C303437404146284242424242421B210F30373A414140310D42424242421F
            20032434373A3A37321342424242421D25030F2D37373737311042424242420D
            2D2D1C162430333429424242424242421E463F0F0316252E0842424242424242
            4227312D21252314424242424242424242420E141B1B42424242}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 18
          TabStop = False
        end
        object rgPessoa: TRadioGroup
          Left = 168
          Top = 15
          Width = 142
          Height = 46
          Caption = 'Pessoa'
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'F'#237'sica'
            'Jur'#237'dica')
          TabOrder = 19
          OnClick = rgPessoaClick
        end
      end
    end
    object tabFisica: TTabSheet
      Caption = 'Pessoa F'#237'sica'
      ImageIndex = 1
      object JvgGroupBox3: TJvgGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 777
        Height = 420
        Align = alClient
        Caption = 'Pessoa F'#237'sica'
        TabOrder = 0
        Border.Inner = bvSpace
        Border.Outer = bvNone
        Border.Bold = False
        CaptionBorder.Inner = bvSpace
        CaptionBorder.Outer = bvNone
        CaptionBorder.Bold = False
        CaptionGradient.Active = False
        CaptionGradient.Orientation = fgdHorizontal
        CaptionShift.X = 8
        CaptionShift.Y = 0
        Colors.Text = clHighlightText
        Colors.TextActive = clHighlightText
        Colors.Caption = clBtnShadow
        Colors.CaptionActive = clBtnShadow
        Colors.Client = clBtnFace
        Colors.ClientActive = clBtnFace
        Gradient.FromColor = clBlack
        Gradient.ToColor = clGray
        Gradient.Active = False
        Gradient.Orientation = fgdHorizontal
        Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
        FullHeight = 0
        object JvLabel8: TJvLabel
          AlignWithMargins = True
          Left = 5
          Top = 19
          Width = 767
          Height = 13
          Align = alTop
          Caption = 'Documento de Identidade'
          Transparent = True
          ExplicitWidth = 126
        end
        object JvLabel7: TJvLabel
          Left = 151
          Top = 19
          Width = 98
          Height = 13
          Caption = 'Data de Nascimento'
          Transparent = True
        end
        object JvLabel15: TJvLabel
          Left = 5
          Top = 60
          Width = 87
          Height = 13
          Caption = 'Nome do Conjuge'
          Transparent = True
        end
        object JvLabel41: TJvLabel
          Left = 5
          Top = 101
          Width = 67
          Height = 13
          Caption = 'Nome da M'#227'e'
          Transparent = True
        end
        object JvLabel6: TJvLabel
          Left = 270
          Top = 19
          Width = 57
          Height = 13
          Caption = 'Estado C'#237'vil'
          Transparent = True
        end
        object JvLabel16: TJvLabel
          Left = 5
          Top = 142
          Width = 61
          Height = 13
          Caption = 'Nome do Pai'
          Transparent = True
        end
        object JvLabel20: TJvLabel
          Left = 659
          Top = 60
          Width = 98
          Height = 13
          Caption = 'Data de Nascimento'
          Transparent = True
        end
        object RG: TJvDBMaskEdit
          Left = 5
          Top = 33
          Width = 140
          Height = 21
          DataField = 'IE_RG'
          DataSource = dtsDefault
          TabOrder = 0
          EditMask = ''
        end
        object NASCIMENTO: TJvDBDateEdit
          Left = 151
          Top = 33
          Width = 113
          Height = 21
          DataField = 'NASCIMENTO_ABERTURA'
          DataSource = dtsDefault
          ButtonWidth = 25
          ShowNullDate = False
          TabOrder = 1
        end
        object CONJUGE: TJvDBMaskEdit
          Left = 5
          Top = 74
          Width = 648
          Height = 21
          DataField = 'CONJUGE'
          DataSource = dtsDefault
          TabOrder = 3
          EditMask = ''
        end
        object MAE: TJvDBMaskEdit
          Left = 5
          Top = 115
          Width = 767
          Height = 21
          DataField = 'MAE'
          DataSource = dtsDefault
          TabOrder = 5
          EditMask = ''
        end
        object ESTADOCIVIL: TJvDBComboBox
          Left = 270
          Top = 33
          Width = 211
          Height = 21
          DataField = 'ESTADOCIVIL'
          DataSource = dtsDefault
          Items.Strings = (
            'SOLTEIRO(A)'
            'CASADO(A)'
            'DIVORCIADO(A)'
            'VIUVO(A)')
          TabOrder = 2
          Values.Strings = (
            'SOLTEIRO(A)'
            'CASADO(A)'
            'DIVORCIADO(A)'
            'VIUVO(A)')
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Tahoma'
          ListSettings.OutfilteredValueFont.Style = []
        end
        object PAI: TJvDBMaskEdit
          Left = 5
          Top = 156
          Width = 767
          Height = 21
          DataField = 'PAI'
          DataSource = dtsDefault
          TabOrder = 6
          EditMask = ''
        end
        object CONJUGE_NASCIMENTO: TJvDBDateEdit
          Left = 659
          Top = 74
          Width = 113
          Height = 21
          DataField = 'CONJUGE_NASCIMENTO'
          DataSource = dtsDefault
          ButtonWidth = 25
          ShowNullDate = False
          TabOrder = 4
        end
      end
    end
    object tabJuridica: TTabSheet
      Caption = 'Pessoa Jur'#237'dica'
      ImageIndex = 2
      object JvgGroupBox2: TJvgGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 777
        Height = 420
        Align = alClient
        Caption = 'Pessoa Jur'#237'dica'
        TabOrder = 0
        Border.Inner = bvSpace
        Border.Outer = bvNone
        Border.Bold = False
        CaptionBorder.Inner = bvSpace
        CaptionBorder.Outer = bvNone
        CaptionBorder.Bold = False
        CaptionGradient.Active = False
        CaptionGradient.Orientation = fgdHorizontal
        CaptionShift.X = 8
        CaptionShift.Y = 0
        Colors.Text = clHighlightText
        Colors.TextActive = clHighlightText
        Colors.Caption = clBtnShadow
        Colors.CaptionActive = clBtnShadow
        Colors.Client = clBtnFace
        Colors.ClientActive = clBtnFace
        Gradient.FromColor = clBlack
        Gradient.ToColor = clGray
        Gradient.Active = False
        Gradient.Orientation = fgdHorizontal
        Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
        FullHeight = 0
        object JvLabel19: TJvLabel
          AlignWithMargins = True
          Left = 5
          Top = 19
          Width = 767
          Height = 13
          Align = alTop
          Caption = 'Nome Fantasia'
          Transparent = True
          ExplicitWidth = 73
        end
        object JvLabel21: TJvLabel
          Left = 5
          Top = 59
          Width = 89
          Height = 13
          Caption = 'Inscri'#231#227'o Estadual'
          Transparent = True
        end
        object JvLabel31: TJvLabel
          Left = 534
          Top = 59
          Width = 175
          Height = 13
          Caption = 'Nome do Respons'#225'vel pela Empresa'
          Transparent = True
        end
        object JvLabel18: TJvLabel
          Left = 415
          Top = 59
          Width = 86
          Height = 13
          Caption = 'Data de Abertura'
          Transparent = True
        end
        object JvLabel5: TJvLabel
          Left = 210
          Top = 59
          Width = 91
          Height = 13
          Caption = 'Inscri'#231#227'o Municipal'
          Transparent = True
        end
        object IE: TJvDBMaskEdit
          Left = 5
          Top = 73
          Width = 199
          Height = 21
          DataField = 'IE_RG'
          DataSource = dtsDefault
          TabOrder = 1
          EditMask = ''
        end
        object NOMEFANTASIA: TJvDBMaskEdit
          Left = 5
          Top = 32
          Width = 767
          Height = 21
          DataField = 'NOMEFANTASIA'
          DataSource = dtsDefault
          TabOrder = 0
          EditMask = ''
        end
        object CONTATO: TJvDBMaskEdit
          Left = 534
          Top = 73
          Width = 238
          Height = 21
          DataField = 'CONTATO'
          DataSource = dtsDefault
          TabOrder = 3
          EditMask = ''
        end
        object ABERTURA: TJvDBDateEdit
          Left = 415
          Top = 73
          Width = 113
          Height = 21
          DataField = 'NASCIMENTO_ABERTURA'
          DataSource = dtsDefault
          ButtonWidth = 25
          ShowNullDate = False
          TabOrder = 2
        end
        object IM: TJvDBMaskEdit
          Left = 210
          Top = 73
          Width = 199
          Height = 21
          DataField = 'IM'
          DataSource = dtsDefault
          TabOrder = 4
          EditMask = ''
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Observa'#231#245'es'
      ImageIndex = 3
      object JvgGroupBox4: TJvgGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 777
        Height = 420
        Align = alClient
        Caption = 'Observa'#231#245'es'
        TabOrder = 0
        Border.Inner = bvSpace
        Border.Outer = bvNone
        Border.Bold = False
        CaptionBorder.Inner = bvSpace
        CaptionBorder.Outer = bvNone
        CaptionBorder.Bold = False
        CaptionGradient.Active = False
        CaptionGradient.Orientation = fgdHorizontal
        CaptionShift.X = 8
        CaptionShift.Y = 0
        Colors.Text = clHighlightText
        Colors.TextActive = clHighlightText
        Colors.Caption = clBtnShadow
        Colors.CaptionActive = clBtnShadow
        Colors.Client = clBtnFace
        Colors.ClientActive = clBtnFace
        Gradient.FromColor = clBlack
        Gradient.ToColor = clGray
        Gradient.Active = False
        Gradient.Orientation = fgdHorizontal
        Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
        FullHeight = 0
        object OBSERVACOES: TDBMemo
          AlignWithMargins = True
          Left = 5
          Top = 19
          Width = 767
          Height = 396
          Align = alClient
          DataField = 'OBSERVACOES'
          DataSource = dtsDefault
          TabOrder = 0
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Cobran'#231'a'
      ImageIndex = 4
      object JvgGroupBox5: TJvgGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 777
        Height = 420
        Align = alClient
        Caption = 'Lan'#231'amento Mensal'
        TabOrder = 0
        Border.Inner = bvSpace
        Border.Outer = bvNone
        Border.Bold = False
        CaptionBorder.Inner = bvSpace
        CaptionBorder.Outer = bvNone
        CaptionBorder.Bold = False
        CaptionGradient.Active = False
        CaptionGradient.Orientation = fgdHorizontal
        CaptionShift.X = 8
        CaptionShift.Y = 0
        Colors.Text = clHighlightText
        Colors.TextActive = clHighlightText
        Colors.Caption = clBtnShadow
        Colors.CaptionActive = clBtnShadow
        Colors.Client = clBtnFace
        Colors.ClientActive = clBtnFace
        Gradient.FromColor = clBlack
        Gradient.ToColor = clGray
        Gradient.Active = False
        Gradient.Orientation = fgdHorizontal
        Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
        FullHeight = 0
        object JvLabel17: TJvLabel
          AlignWithMargins = True
          Left = 5
          Top = 19
          Width = 767
          Height = 13
          Align = alTop
          Caption = 'Hist'#243'rico'
          Transparent = True
          ExplicitWidth = 43
        end
        object JvLabel22: TJvLabel
          Left = 5
          Top = 59
          Width = 140
          Height = 13
          Caption = 'Valor Mensalidade/Presta'#231#227'o'
          Transparent = True
        end
        object CBR_HISTORICO: TJvDBMaskEdit
          Left = 5
          Top = 32
          Width = 767
          Height = 21
          DataField = 'CBR_HISTORICO'
          DataSource = dtsDefault
          TabOrder = 0
          EditMask = ''
        end
        object CBR_VALOR: TJvDBCalcEdit
          Left = 5
          Top = 72
          Width = 156
          Height = 21
          TabOrder = 1
          DecimalPlacesAlwaysShown = False
          DataField = 'CBR_VALOR'
          DataSource = dtsDefault
        end
      end
    end
  end
  inherited statDefault: TJvStatusBar
    Top = 499
    Width = 797
    ExplicitTop = 499
    ExplicitWidth = 797
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 733
    Top = 144
  end
  inherited dtsDefault: TDataSource
    DataSet = dtmDefault.tabPESSOAS
    Left = 222
    Top = 203
  end
  object dtscnsCIDADES_UF: TDataSource
    DataSet = cnsCIDADES_UF
    Left = 338
    Top = 142
  end
  object cnsCIDADES_UF: TFDQuery
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'SELECT * FROM CIDADES_UF ORDER BY ID_CIDADES_UF')
    Left = 226
    Top = 134
    object cnsCIDADES_UFID_CIDADES_UF: TStringField
      FieldName = 'ID_CIDADES_UF'
      Origin = 'ID_CIDADES_UF'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 2
    end
    object cnsCIDADES_UFCODIBGE: TIntegerField
      FieldName = 'CODIBGE'
      Origin = 'CODIBGE'
      Required = True
    end
    object cnsCIDADES_UFDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 30
    end
  end
  object cnsCIDADES: TFDQuery
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      
        'SELECT * FROM CIDADES WHERE ID_CIDADES_UF = :ID_CIDADES_UF ORDER' +
        ' BY DESCRICAO')
    Left = 506
    Top = 166
    ParamData = <
      item
        Name = 'ID_CIDADES_UF'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 2
        Value = Null
      end>
    object cnsCIDADESID_CIDADES_IBGE: TIntegerField
      FieldName = 'ID_CIDADES_IBGE'
      Origin = 'ID_CIDADES_IBGE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cnsCIDADESID_CIDADES_UF: TStringField
      FieldName = 'ID_CIDADES_UF'
      Origin = 'ID_CIDADES_UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object cnsCIDADESID_PAIS: TIntegerField
      FieldName = 'ID_PAIS'
      Origin = 'ID_PAIS'
      Required = True
    end
    object cnsCIDADESDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
  end
  object dtscnsCIDADES: TDataSource
    DataSet = cnsCIDADES
    Left = 506
    Top = 214
  end
end
