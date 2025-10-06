inherited frmMDFEencerramento: TfrmMDFEencerramento
  Caption = 'Encerramento do MDF-e'
  ClientHeight = 230
  ClientWidth = 580
  ExplicitWidth = 596
  ExplicitHeight = 269
  TextHeight = 13
  inherited pnlComandos: TPanel
    Left = 3
    Top = 194
    Width = 574
    Align = alBottom
    ExplicitLeft = 3
    ExplicitTop = 194
    ExplicitWidth = 574
    inherited btnCancelar: TJvSpeedButton
      Left = 461
      ExplicitLeft = 673
    end
    inherited btnConfirmar: TJvSpeedButton
      Left = 345
      ExplicitLeft = 557
    end
  end
  object JvgGroupBox3: TJvgGroupBox [1]
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 574
    Height = 185
    Align = alClient
    Caption = 'Dados Principais'
    TabOrder = 1
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
    object Label21: TLabel
      AlignWithMargins = True
      Left = 5
      Top = 19
      Width = 564
      Height = 13
      Align = alTop
      Caption = 'Modelo*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      ExplicitWidth = 40
    end
    object Label4: TLabel
      Left = 194
      Top = 19
      Width = 123
      Height = 13
      Caption = 'Data e Hora de emiss'#227'o *'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 59
      Top = 19
      Width = 30
      Height = 13
      Caption = 'S'#233'rie*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label18: TLabel
      Left = 113
      Top = 19
      Width = 43
      Height = 13
      Caption = 'N'#250'mero*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object ID_MODELO: TJvMaskEdit
      Left = 5
      Top = 35
      Width = 48
      Height = 21
      Alignment = taCenter
      Enabled = False
      ReadOnly = True
      TabOrder = 0
      Text = '58'
    end
    object ID_SERIE: TJvMaskEdit
      Left = 59
      Top = 35
      Width = 48
      Height = 21
      Enabled = False
      TabOrder = 1
      Text = 'ID_SERIE'
    end
    object ID_MDFE: TJvMaskEdit
      Left = 113
      Top = 35
      Width = 75
      Height = 21
      Enabled = False
      TabOrder = 2
      Text = 'ID_MDFE'
    end
    object DATA_HORA: TJvDateTimePicker
      Left = 194
      Top = 35
      Width = 151
      Height = 21
      Date = 43367.000000000000000000
      Time = 43367.000000000000000000
      Enabled = False
      TabOrder = 3
      DropDownDate = 43367.000000000000000000
    end
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 112
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
    Left = 393
    Top = 93
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
end
