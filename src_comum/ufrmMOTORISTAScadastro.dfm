inherited frmMOTORISTAScadastro: TfrmMOTORISTAScadastro
  Caption = 'Motoristas'
  ClientHeight = 521
  ClientWidth = 404
  ExplicitWidth = 420
  ExplicitHeight = 560
  TextHeight = 13
  inherited pnlComandos: TPanel
    Top = 466
    Width = 398
    ExplicitTop = 466
    ExplicitWidth = 398
    inherited btnCancelar: TJvSpeedButton
      Left = 285
      ExplicitLeft = 285
    end
    inherited btnConfirmar: TJvSpeedButton
      Left = 169
      ExplicitLeft = 169
    end
  end
  inherited pageDefault: TJvPageControl
    Width = 398
    Height = 457
    ExplicitWidth = 398
    ExplicitHeight = 457
    inherited tabDefault: TTabSheet
      ExplicitWidth = 390
      ExplicitHeight = 429
      object JvgGroupBox1: TJvgGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 384
        Height = 423
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
          Width = 21
          Height = 13
          Caption = 'CPF'
          Transparent = True
        end
        object JvLabel5: TJvLabel
          Left = 5
          Top = 114
          Width = 98
          Height = 13
          Caption = 'Data de Nascimento'
          Transparent = True
        end
        object JvLabel6: TJvLabel
          AlignWithMargins = True
          Left = 5
          Top = 160
          Width = 35
          Height = 13
          Caption = 'Celular'
          Transparent = True
        end
        object NOME: TJvDBMaskEdit
          Left = 5
          Top = 87
          Width = 378
          Height = 21
          DataField = 'NOME'
          DataSource = dtsDefault
          TabOrder = 0
          EditMask = ''
        end
        object CPF: TJvDBMaskEdit
          Left = 5
          Top = 41
          Width = 120
          Height = 21
          DataField = 'CPF'
          DataSource = dtsDefault
          MaxLength = 14
          TabOrder = 1
          EditMask = '999.999.999-99;0;_'
        end
        object DATA_NASCIMENTO: TJvDBDatePickerEdit
          Left = 5
          Top = 133
          Width = 121
          Height = 21
          AllowNoDate = True
          DataField = 'DATA_NASCIMENTO'
          DataSource = dtsDefault
          TabOrder = 2
        end
        object CNH: TGroupBox
          Left = 3
          Top = 206
          Width = 378
          Height = 211
          Caption = 'CNH'
          TabOrder = 3
          object JvLabel1: TJvLabel
            Left = 15
            Top = 18
            Width = 43
            Height = 13
            Caption = 'RENACH'
            Transparent = True
          end
          object JvLabel2: TJvLabel
            Left = 15
            Top = 64
            Width = 97
            Height = 13
            Caption = 'N'#250'mero do Registro'
            Transparent = True
          end
          object JvLabel3: TJvLabel
            Left = 15
            Top = 110
            Width = 104
            Height = 13
            Caption = 'C'#243'digo de Seguran'#231'a'
            Transparent = True
          end
          object JvLabel4: TJvLabel
            Left = 15
            Top = 155
            Width = 49
            Height = 13
            Caption = 'Categoria'
            Transparent = True
          end
          object RENACH: TJvDBMaskEdit
            Left = 15
            Top = 37
            Width = 351
            Height = 21
            DataField = 'RENACH'
            DataSource = dtsDefault
            MaxLength = 11
            TabOrder = 0
            EditMask = '!AA000000000'
          end
          object NUM_REGISTRO: TJvDBMaskEdit
            Left = 15
            Top = 83
            Width = 351
            Height = 21
            DataField = 'NUMERO_REGISTRO'
            DataSource = dtsDefault
            MaxLength = 9
            TabOrder = 1
            EditMask = '000000000'
          end
          object COD_SEGURANCA: TJvDBMaskEdit
            Left = 15
            Top = 129
            Width = 351
            Height = 21
            DataField = 'CODIGO_SEGURANCA'
            DataSource = dtsDefault
            MaxLength = 11
            TabOrder = 2
            EditMask = '00000000000'
          end
          object CATEGORIA: TJvDBMaskEdit
            Left = 15
            Top = 174
            Width = 349
            Height = 21
            DataField = 'CATEGORIA'
            DataSource = dtsDefault
            MaxLength = 2
            TabOrder = 3
            EditMask = '!AA'
          end
        end
        object CELULAR: TJvDBMaskEdit
          Left = 5
          Top = 179
          Width = 119
          Height = 21
          DataField = 'CELULAR'
          DataSource = dtsDefault
          MaxLength = 16
          TabOrder = 4
          EditMask = '(99) 9 9999-9999'
        end
      end
    end
    object Endereço: TTabSheet
      Caption = 'Endere'#231'o'
      ImageIndex = 1
      object gbEndereco: TGroupBox
        Left = 3
        Top = 3
        Width = 387
        Height = 423
        Caption = 'Informa'#231#245'es do Endere'#231'o'
        TabOrder = 0
        object Label6: TLabel
          Left = 11
          Top = 255
          Width = 94
          Height = 13
          Caption = 'C'#243'digo do Munic'#237'pio'
        end
        object Label5: TLabel
          Left = 11
          Top = 209
          Width = 19
          Height = 13
          Caption = 'CEP'
        end
        object Label4: TLabel
          Left = 11
          Top = 163
          Width = 28
          Height = 13
          Caption = 'Bairro'
        end
        object Label1: TLabel
          Left = 11
          Top = 21
          Width = 37
          Height = 13
          Caption = 'N'#250'mero'
        end
        object Label2: TLabel
          Left = 11
          Top = 69
          Width = 19
          Height = 13
          Caption = 'Rua'
        end
        object Label3: TLabel
          Left = 11
          Top = 117
          Width = 65
          Height = 13
          Caption = 'Complemento'
        end
        object End_CEP: TJvDBMaskEdit
          Left = 11
          Top = 228
          Width = 302
          Height = 21
          DataField = 'CEP'
          DataSource = dtsDefault
          TabOrder = 0
          EditMask = ''
        end
        object End_Cod_Municipio: TJvDBMaskEdit
          Left = 11
          Top = 274
          Width = 302
          Height = 21
          DataField = 'CODIGO_MUNICIPIO'
          DataSource = dtsDefault
          TabOrder = 1
          EditMask = ''
        end
        object End_Bairro: TJvDBMaskEdit
          Left = 11
          Top = 182
          Width = 302
          Height = 21
          DataField = 'BAIRRO'
          DataSource = dtsDefault
          TabOrder = 2
          EditMask = ''
        end
        object End_Rua: TJvDBMaskEdit
          Left = 11
          Top = 88
          Width = 302
          Height = 21
          DataField = 'RUA'
          DataSource = dtsDefault
          TabOrder = 3
          EditMask = ''
        end
        object End_Complemento: TJvDBMaskEdit
          Left = 11
          Top = 136
          Width = 302
          Height = 21
          DataField = 'COMPLEMENTO'
          DataSource = dtsDefault
          TabOrder = 4
          EditMask = ''
        end
        object End_Numero: TJvDBMaskEdit
          Left = 11
          Top = 40
          Width = 302
          Height = 21
          DataField = 'NUMERO'
          DataSource = dtsDefault
          TabOrder = 5
          EditMask = ''
        end
      end
    end
  end
  inherited statDefault: TJvStatusBar
    Top = 502
    Width = 404
    ExplicitTop = 502
    ExplicitWidth = 404
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 277
    Top = 160
  end
  inherited dtsDefault: TDataSource
    DataSet = dtmDefault.tabMOTORISTAS
    Left = 230
    Top = 51
  end
end
