inherited frmMOTORISTAScadastro: TfrmMOTORISTAScadastro
  Caption = 'Motoristas'
  ClientHeight = 234
  ExplicitHeight = 273
  TextHeight = 13
  inherited pnlComandos: TPanel
    Top = 179
  end
  inherited pageDefault: TJvPageControl
    Height = 170
    inherited tabDefault: TTabSheet
      ExplicitHeight = 142
      object JvgGroupBox1: TJvgGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 686
        Height = 136
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
        ExplicitLeft = 6
        ExplicitTop = 6
        ExplicitHeight = 409
        FullHeight = 0
        object lbRazaoSocial: TJvLabel
          Left = 5
          Top = 68
          Width = 29
          Height = 13
          Caption = 'Nome'
          Transparent = True
        end
        object lbCNPJ: TJvLabel
          AlignWithMargins = True
          Left = 5
          Top = 19
          Width = 676
          Height = 13
          Align = alTop
          Caption = 'CPF'
          Transparent = True
          ExplicitTop = 20
        end
        object RAZAOSOCIAL: TJvDBMaskEdit
          Left = 5
          Top = 82
          Width = 378
          Height = 21
          DataField = 'NOME'
          DataSource = dtsDefault
          TabOrder = 0
          EditMask = ''
        end
        object CPF_CNPJ: TJvDBMaskEdit
          Left = 5
          Top = 41
          Width = 157
          Height = 21
          DataField = 'CPF'
          DataSource = dtsDefault
          TabOrder = 1
          EditMask = ''
        end
      end
    end
  end
  inherited statDefault: TJvStatusBar
    Top = 215
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 421
    Top = 80
  end
  inherited dtsDefault: TDataSource
    DataSet = dtmDefault.tabMOTORISTAS
    Left = 486
    Top = 115
  end
end
