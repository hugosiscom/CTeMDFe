inherited frmVEICULOScadastro: TfrmVEICULOScadastro
  Caption = 'Ve'#237'culos'
  ClientHeight = 362
  ClientWidth = 769
  ExplicitWidth = 783
  ExplicitHeight = 397
  TextHeight = 13
  object Label7: TLabel [0]
    Left = 298
    Top = 69
    Width = 45
    Height = 13
    Caption = 'Renavam'
  end
  inherited pnlComandos: TPanel
    Top = 307
    Width = 763
    ExplicitTop = 303
    ExplicitWidth = 761
    inherited btnCancelar: TJvSpeedButton
      Left = 650
      ExplicitLeft = 707
    end
    inherited btnConfirmar: TJvSpeedButton
      Left = 534
      ExplicitLeft = 591
    end
  end
  inherited pageDefault: TJvPageControl
    Width = 763
    Height = 298
    ExplicitWidth = 761
    ExplicitHeight = 294
    inherited tabDefault: TTabSheet
      ExplicitWidth = 755
      ExplicitHeight = 270
      object JvgGroupBox1: TJvgGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 749
        Height = 264
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
        ExplicitWidth = 747
        ExplicitHeight = 260
        FullHeight = 0
        object Label1: TLabel
          Left = 16
          Top = 64
          Width = 82
          Height = 13
          Caption = 'Descri'#231#227'o Ve'#237'culo'
        end
        object Label2: TLabel
          Left = 16
          Top = 18
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
        end
        object DBText1: TDBText
          Left = 16
          Top = 39
          Width = 96
          Height = 17
          DataField = 'ID_VEICULO'
          DataSource = dtsDefault
        end
        object Label3: TLabel
          Left = 290
          Top = 64
          Width = 45
          Height = 13
          Caption = 'Renavam'
        end
        object Label4: TLabel
          Left = 464
          Top = 64
          Width = 34
          Height = 13
          Caption = 'RNTCR'
        end
        object Label5: TLabel
          Left = 594
          Top = 64
          Width = 25
          Height = 13
          Caption = 'Placa'
        end
        object Label6: TLabel
          Left = 16
          Top = 110
          Width = 13
          Height = 13
          Caption = 'UF'
        end
        object Label8: TLabel
          Left = 80
          Top = 110
          Width = 75
          Height = 13
          Caption = 'Tipo do Rodado'
        end
        object Label9: TLabel
          Left = 290
          Top = 110
          Width = 71
          Height = 13
          Caption = 'Tipo carroceria'
        end
        object Label10: TLabel
          Left = 16
          Top = 158
          Width = 49
          Height = 13
          Caption = 'Tara(KG)*'
        end
        object Label11: TLabel
          Left = 108
          Top = 158
          Width = 77
          Height = 13
          Caption = 'Capacidade(KG)'
        end
        object Label12: TLabel
          Left = 201
          Top = 158
          Width = 78
          Height = 13
          Caption = 'Capacidade(M3)'
        end
        object Label41: TLabel
          Left = 464
          Top = 115
          Width = 94
          Height = 13
          Caption = 'Tipo de Propriet'#225'rio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label13: TLabel
          Left = 118
          Top = 18
          Width = 123
          Height = 13
          Caption = 'C'#243'digo Interno do Ve'#237'culo'
        end
        object Label14: TLabel
          AlignWithMargins = True
          Left = 291
          Top = 18
          Width = 23
          Height = 13
          Caption = 'Cor*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label15: TLabel
          Left = 359
          Top = 18
          Width = 87
          Height = 13
          Caption = 'Descri'#231#227'o da Cor*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label16: TLabel
          Left = 201
          Top = 206
          Width = 66
          Height = 13
          Caption = 'Frete Unit'#225'rio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label17: TLabel
          Left = 464
          Top = 158
          Width = 37
          Height = 13
          Caption = 'Chassi*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label18: TLabel
          Left = 289
          Top = 158
          Width = 110
          Height = 13
          Caption = 'C'#243'digo/Marca/Modelo*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label19: TLabel
          Left = 16
          Top = 206
          Width = 121
          Height = 13
          Caption = 'Valor Unit'#225'rio do Ve'#237'culo*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object DBEdit1: TDBEdit
          Left = 16
          Top = 83
          Width = 268
          Height = 21
          DataField = 'DESCRICAO'
          DataSource = dtsDefault
          TabOrder = 3
        end
        object DBEdit2: TDBEdit
          Left = 118
          Top = 37
          Width = 166
          Height = 21
          DataField = 'CODIGO_INTERNO'
          DataSource = dtsDefault
          TabOrder = 0
        end
        object DBEdit3: TDBEdit
          Left = 464
          Top = 83
          Width = 123
          Height = 21
          DataField = 'RNTRC'
          DataSource = dtsDefault
          TabOrder = 5
        end
        object DBEdit4: TDBEdit
          Left = 594
          Top = 83
          Width = 123
          Height = 21
          DataField = 'PLACA'
          DataSource = dtsDefault
          TabOrder = 6
        end
        object ID_CIDADES_UF: TJvDBLookupCombo
          Left = 16
          Top = 129
          Width = 58
          Height = 21
          DataField = 'UF'
          DataSource = dtsDefault
          LookupField = 'ID_CIDADES_UF'
          LookupDisplay = 'ID_CIDADES_UF'
          LookupSource = dtmDefault.dtstabCIDADES_UF
          TabOrder = 7
        end
        object VEICULO_TIPO_CARROCERIA: TJvDBComboBox
          Left = 290
          Top = 129
          Width = 168
          Height = 21
          DataField = 'TIPO_CARROCERIA'
          DataSource = dtsDefault
          Items.Strings = (
            'N'#227'o Aplic'#225'vel'
            'Aberta'
            'Fechada/Ba'#250
            'Granelera'
            'Porta-cont'#234'iner'
            'Sider'
            '')
          TabOrder = 9
          Values.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4'
            '5')
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Tahoma'
          ListSettings.OutfilteredValueFont.Style = []
        end
        object VEICULO_TIPO_RODADO: TJvDBComboBox
          Left = 80
          Top = 129
          Width = 204
          Height = 21
          DataField = 'TIPO_RODADO'
          DataSource = dtsDefault
          Items.Strings = (
            'Nao Aplicavel'
            'Truc'
            'Toco'
            'CavaloMecanico'
            'VAN'
            'Utilitario'
            'Outros')
          TabOrder = 8
          Values.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4'
            '5'
            '6')
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Tahoma'
          ListSettings.OutfilteredValueFont.Style = []
        end
        object DBEdit5: TDBEdit
          Left = 16
          Top = 176
          Width = 82
          Height = 21
          DataField = 'TARA'
          DataSource = dtsDefault
          TabOrder = 11
        end
        object DBEdit6: TDBEdit
          Left = 108
          Top = 176
          Width = 82
          Height = 21
          DataField = 'CAPACIDADE_KG'
          DataSource = dtsDefault
          TabOrder = 12
        end
        object DBEdit7: TDBEdit
          Left = 201
          Top = 176
          Width = 82
          Height = 21
          DataField = 'CAPACIDADE_M3'
          DataSource = dtsDefault
          TabOrder = 13
        end
        object EMI_N_PROP_TIPO: TJvDBComboBox
          Left = 464
          Top = 131
          Width = 252
          Height = 21
          DataField = 'TIPO_VEICULO'
          DataSource = dtsDefault
          Items.Strings = (
            'Pr'#243'pio'
            'Terceiro'
            '')
          TabOrder = 10
          Values.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4'
            '5')
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Tahoma'
          ListSettings.OutfilteredValueFont.Style = []
        end
        object DBEdit8: TDBEdit
          Left = 290
          Top = 83
          Width = 168
          Height = 21
          DataField = 'RENAVAN'
          DataSource = dtsDefault
          TabOrder = 4
        end
        object VALOR_UNITARIO: TJvDBCalcEdit
          Left = 16
          Top = 225
          Width = 170
          Height = 21
          DisplayFormat = '#0.00'
          FormatOnEditing = True
          ShowButton = False
          TabOrder = 16
          DecimalPlacesAlwaysShown = False
          DataField = 'VALOR_UNITARIO'
          DataSource = dtsDefault
        end
        object FRETE_UNITARIO: TJvDBCalcEdit
          Left = 201
          Top = 225
          Width = 182
          Height = 21
          DisplayFormat = '#0.00'
          FormatOnEditing = True
          ShowButton = False
          TabOrder = 17
          DecimalPlacesAlwaysShown = False
          DataField = 'FRETE_UNITARIO'
          DataSource = dtsDefault
        end
        object DBEdit9: TDBEdit
          Left = 290
          Top = 37
          Width = 63
          Height = 21
          DataField = 'COR'
          DataSource = dtsDefault
          TabOrder = 1
        end
        object DBEdit10: TDBEdit
          Left = 358
          Top = 37
          Width = 359
          Height = 21
          DataField = 'COR_DESCRICAO'
          DataSource = dtsDefault
          TabOrder = 2
        end
        object DBEdit11: TDBEdit
          Left = 289
          Top = 177
          Width = 169
          Height = 21
          DataField = 'CODIGO_MARCA_MODELO'
          DataSource = dtsDefault
          TabOrder = 14
        end
        object DBEdit12: TDBEdit
          Left = 464
          Top = 177
          Width = 253
          Height = 21
          DataField = 'CHASSI'
          DataSource = dtsDefault
          TabOrder = 15
        end
      end
    end
  end
  inherited statDefault: TJvStatusBar
    Top = 343
    Width = 769
    ExplicitTop = 339
    ExplicitWidth = 767
  end
  inherited dtsDefault: TDataSource
    DataSet = dtmDefault.tabVEICULOS
  end
end
