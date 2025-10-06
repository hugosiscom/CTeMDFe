inherited frmUSUARIOScadastro: TfrmUSUARIOScadastro
  Caption = 'Cadastro de Usu'#225'rio'
  ClientHeight = 275
  ClientWidth = 555
  ExplicitWidth = 571
  ExplicitHeight = 314
  TextHeight = 13
  inherited pnlComandos: TPanel
    Top = 220
    Width = 549
    ExplicitTop = 452
    ExplicitWidth = 700
    inherited btnCancelar: TJvSpeedButton
      Left = 436
    end
    inherited btnConfirmar: TJvSpeedButton
      Left = 320
    end
  end
  inherited pageDefault: TJvPageControl
    Width = 549
    Height = 211
    ExplicitWidth = 700
    ExplicitHeight = 443
    inherited tabDefault: TTabSheet
      ExplicitWidth = 541
      ExplicitHeight = 183
      object JvgGroupBox1: TJvgGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 535
        Height = 177
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
        ExplicitWidth = 686
        ExplicitHeight = 409
        FullHeight = 0
        object lbRazaoSocial: TJvLabel
          Left = 5
          Top = 108
          Width = 32
          Height = 13
          Caption = 'Senha'
          Transparent = True
        end
        object lbCNPJ: TJvLabel
          AlignWithMargins = True
          Left = 5
          Top = 19
          Width = 525
          Height = 13
          Align = alTop
          Caption = 'ID'
          Transparent = True
          ExplicitLeft = 3
          ExplicitWidth = 676
        end
        object JvLabel1: TJvLabel
          Left = 5
          Top = 62
          Width = 38
          Height = 13
          Caption = 'Usu'#225'rio'
          Transparent = True
        end
        object DBText1: TDBText
          Left = 5
          Top = 38
          Width = 84
          Height = 17
          DataField = 'ID_USUARIO'
          DataSource = dtsDefault
        end
        object JvLabel2: TJvLabel
          Left = 213
          Top = 108
          Width = 32
          Height = 13
          Caption = 'Senha'
          Transparent = True
        end
        object EdtUsuario: TJvDBMaskEdit
          Left = 5
          Top = 81
          Width = 378
          Height = 21
          DataField = 'USUARIO'
          DataSource = dtsDefault
          TabOrder = 0
          EditMask = ''
        end
        object EdtCofirmacao: TEdit
          Left = 213
          Top = 127
          Width = 170
          Height = 21
          PasswordChar = '*'
          TabOrder = 2
        end
        object Edtsenha: TDBEdit
          Left = 5
          Top = 127
          Width = 170
          Height = 21
          DataField = 'SENHA'
          DataSource = dtsDefault
          PasswordChar = '*'
          TabOrder = 1
        end
      end
    end
  end
  inherited statDefault: TJvStatusBar
    Top = 256
    Width = 555
    ExplicitTop = 488
    ExplicitWidth = 706
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 165
    Top = 216
  end
  inherited dtsDefault: TDataSource
    DataSet = dtmDefault.tabUSUARIO
    Left = 254
    Top = 179
  end
end
