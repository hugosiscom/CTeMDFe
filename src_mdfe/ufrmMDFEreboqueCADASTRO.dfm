inherited frmMDFEreboqueCADASTRO: TfrmMDFEreboqueCADASTRO
  Caption = 'Reboque'
  ClientHeight = 352
  ClientWidth = 601
  ExplicitWidth = 617
  ExplicitHeight = 391
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlComandos: TPanel
    Top = 297
    Width = 595
    ExplicitTop = 297
    ExplicitWidth = 595
    inherited btnCancelar: TJvSpeedButton
      Left = 482
      ExplicitLeft = 482
    end
    inherited btnConfirmar: TJvSpeedButton
      Left = 366
      ExplicitLeft = 366
    end
  end
  inherited pageDefault: TJvPageControl
    Width = 595
    Height = 288
    ExplicitWidth = 595
    ExplicitHeight = 288
    inherited tabDefault: TTabSheet
      ExplicitWidth = 587
      ExplicitHeight = 260
      object JvgGroupBox15: TJvgGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 581
        Height = 254
        Align = alClient
        Caption = 'Reboque'
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
        object Label16: TLabel
          Left = 9
          Top = 19
          Width = 123
          Height = 13
          Caption = 'C'#243'digo Interno do Ve'#237'culo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label35: TLabel
          Left = 9
          Top = 46
          Width = 31
          Height = 13
          Caption = 'Placa*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label36: TLabel
          Left = 344
          Top = 19
          Width = 83
          Height = 13
          Caption = 'Capacidade(KG)*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label38: TLabel
          Left = 344
          Top = 73
          Width = 49
          Height = 13
          Caption = 'Tara(KG)*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label43: TLabel
          Left = 344
          Top = 46
          Width = 78
          Height = 13
          Caption = 'Capacidade(M3)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label44: TLabel
          Left = 344
          Top = 100
          Width = 48
          Height = 13
          Caption = 'RENAVAM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label1: TLabel
          Left = 9
          Top = 73
          Width = 94
          Height = 13
          Caption = 'Tipo de Carroceria*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label2: TLabel
          Left = 9
          Top = 100
          Width = 150
          Height = 13
          Caption = 'UF de licenciamento do Ve'#250'culo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object INTT: TJvDBMaskEdit
          Tag = 1
          Left = 167
          Top = 16
          Width = 122
          Height = 21
          TabStop = False
          DataField = 'INTT'
          DataSource = dtsDefault
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          EditMask = ''
        end
        object ID_TIPO_RODADO: TJvDBComboBox
          Left = 167
          Top = 70
          Width = 122
          Height = 21
          DataField = 'ID_TIPO_RODADO'
          DataSource = dtsDefault
          Items.Strings = (
            'N'#227'o Aplic'#225'vel'
            'Aberta'
            'Fechada/Ba'#250
            'Granelera'
            'Porta-cont'#234'iner'
            'Sider')
          TabOrder = 4
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
        object PLACA: TJvDBMaskEdit
          Tag = 1
          Left = 167
          Top = 43
          Width = 122
          Height = 21
          TabStop = False
          DataField = 'PLACA'
          DataSource = dtsDefault
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          EditMask = ''
        end
        object RENAVAN: TJvDBMaskEdit
          Tag = 1
          Left = 437
          Top = 97
          Width = 122
          Height = 21
          TabStop = False
          DataField = 'RENAVAN'
          DataSource = dtsDefault
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          EditMask = ''
        end
        object CAPKG: TJvDBCalcEdit
          Left = 437
          Top = 16
          Width = 122
          Height = 21
          ShowButton = False
          TabOrder = 1
          DecimalPlacesAlwaysShown = False
          DataField = 'CAPKG'
          DataSource = dtsDefault
        end
        object CAPM3: TJvDBCalcEdit
          Left = 437
          Top = 43
          Width = 122
          Height = 21
          ShowButton = False
          TabOrder = 3
          DecimalPlacesAlwaysShown = False
          DataField = 'CAPM3'
          DataSource = dtsDefault
        end
        object TARA: TJvDBCalcEdit
          Left = 437
          Top = 70
          Width = 122
          Height = 21
          ShowButton = False
          TabOrder = 5
          DecimalPlacesAlwaysShown = False
          DataField = 'TARA'
          DataSource = dtsDefault
        end
        object VEICULO_UF: TDBLookupComboBox
          Left = 167
          Top = 97
          Width = 57
          Height = 21
          DataField = 'UF'
          DataSource = dtsDefault
          KeyField = 'ID_CIDADES_UF'
          ListField = 'ID_CIDADES_UF'
          ListSource = dtsCIDADES_UF
          TabOrder = 7
        end
      end
    end
  end
  inherited statDefault: TJvStatusBar
    Top = 333
    Width = 601
    ExplicitTop = 333
    ExplicitWidth = 601
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 429
    Top = 216
  end
  inherited dtsDefault: TDataSource
    DataSet = dtmMDFE.tabMDFE_REBOQUE
    Left = 198
    Top = 187
  end
  object dtsCIDADES_UF: TDataSource
    DataSet = dtmMDFE.qryCIDADES_UF
    Left = 198
    Top = 243
  end
end
