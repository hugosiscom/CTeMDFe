inherited frmMDFEcancela: TfrmMDFEcancela
  Caption = 'Cancelamento do MDF-e'
  ClientHeight = 303
  ClientWidth = 701
  ExplicitWidth = 717
  ExplicitHeight = 342
  TextHeight = 13
  inherited pnlComandos: TPanel
    Left = 3
    Top = 267
    Width = 695
    Align = alBottom
    ExplicitLeft = 3
    ExplicitTop = 267
    ExplicitWidth = 695
    inherited btnCancelar: TJvSpeedButton
      Left = 582
      ExplicitLeft = 673
    end
    inherited btnConfirmar: TJvSpeedButton
      Left = 466
      ExplicitLeft = 557
    end
  end
  object JvgGroupBox7: TJvgGroupBox [1]
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 695
    Height = 258
    Align = alClient
    Caption = 'Informe o Motivo do cancelamento da MDF-e'
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
    object memJustificativa: TMemo
      AlignWithMargins = True
      Left = 5
      Top = 19
      Width = 685
      Height = 234
      Align = alClient
      MaxLength = 1000
      ScrollBars = ssBoth
      TabOrder = 0
      WantReturns = False
    end
  end
  object updCancelado: TFDQuery
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'UPDATE MDFE'
      'SET ID_SITUACAO            = '#39'C'#39','
      '    XML_CANC_DATAHORA      = :XML_CANC_DATAHORA,'
      '    XML_CANC_PROTOCOLO     = :XML_CANC_PROTOCOLO,'
      '    XML_CANC_STRING        = :XML_CANC_STRING,'
      '    XML_STATUS_CODIGO      = :XML_STATUS_CODIGO,'
      '    XML_XMOTIVO            = :XML_XMOTIVO'
      
        'WHERE (ID_EMPRESA = :ID_EMPRESA) AND (ID_MDFE = :ID_MDFE) AND (I' +
        'D_SERIE = :ID_SERIE);')
    Left = 272
    Top = 161
    ParamData = <
      item
        Name = 'XML_CANC_DATAHORA'
        ParamType = ptInput
      end
      item
        Name = 'XML_CANC_PROTOCOLO'
        ParamType = ptInput
      end
      item
        Name = 'XML_CANC_STRING'
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
end
