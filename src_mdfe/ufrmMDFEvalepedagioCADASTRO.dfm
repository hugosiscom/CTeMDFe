inherited frmMDFEvalepedagioCADASTRO: TfrmMDFEvalepedagioCADASTRO
  Caption = 'Vale ped'#225'gio'
  ClientHeight = 329
  ClientWidth = 553
  ExplicitWidth = 569
  ExplicitHeight = 368
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlComandos: TPanel
    Top = 274
    Width = 547
    ExplicitTop = 274
    ExplicitWidth = 547
    inherited btnCancelar: TJvSpeedButton
      Left = 434
      ExplicitLeft = 434
    end
    inherited btnConfirmar: TJvSpeedButton
      Left = 318
      ExplicitLeft = 318
    end
  end
  inherited pageDefault: TJvPageControl
    Width = 547
    Height = 265
    ExplicitWidth = 547
    ExplicitHeight = 265
    inherited tabDefault: TTabSheet
      ExplicitWidth = 539
      ExplicitHeight = 237
      object JvgGroupBox15: TJvgGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 533
        Height = 231
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
          Width = 233
          Height = 13
          Caption = 'CNPJ da Empresa Fornecedora do Vale Ped'#225'gio*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label35: TLabel
          Left = 263
          Top = 19
          Width = 181
          Height = 13
          Caption = 'N'#250'mero do Comprovante de Compra*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label3: TLabel
          Left = 9
          Top = 62
          Width = 222
          Height = 13
          Caption = 'Documento do respons'#225'vel pelo pagamanento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label4: TLabel
          Left = 263
          Top = 62
          Width = 109
          Height = 13
          Caption = 'Valor do Vale Ped'#225'gio*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object CNPJFORN: TJvDBMaskEdit
          Tag = 1
          Left = 9
          Top = 35
          Width = 248
          Height = 21
          TabStop = False
          DataField = 'CNPJFORN'
          DataSource = dtsDefault
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          EditMask = ''
          OnChange = TEditMascaraCNPJ
        end
        object VALOR: TJvDBCalcEdit
          Left = 303
          Top = 78
          Width = 208
          Height = 21
          ShowButton = False
          TabOrder = 1
          DecimalPlacesAlwaysShown = False
          DataField = 'VALOR'
          DataSource = dtsDefault
        end
        object NCOMPRA: TJvDBMaskEdit
          Tag = 1
          Left = 263
          Top = 35
          Width = 248
          Height = 21
          TabStop = False
          DataField = 'NCOMPRA'
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
        object CNPJPG: TJvDBMaskEdit
          Tag = 1
          Left = 9
          Top = 78
          Width = 248
          Height = 21
          TabStop = False
          DataField = 'CNPJPG'
          DataSource = dtsDefault
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          EditMask = ''
          OnChange = TEditMascaraCPFCNPJ
        end
      end
    end
  end
  inherited statDefault: TJvStatusBar
    Top = 310
    Width = 553
    ExplicitTop = 310
    ExplicitWidth = 553
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 181
    Top = 48
  end
  inherited dtsDefault: TDataSource
    DataSet = dtmMDFE.tabMDFE_VALEPEDAGIO
    Left = 198
    Top = 67
  end
end
