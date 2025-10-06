inherited frmMDFEsegurosCADASTRO: TfrmMDFEsegurosCADASTRO
  Caption = 'Seguros'
  ClientHeight = 548
  ClientWidth = 597
  ExplicitWidth = 613
  ExplicitHeight = 587
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlComandos: TPanel
    Top = 493
    Width = 591
    ExplicitTop = 493
    ExplicitWidth = 591
    inherited btnCancelar: TJvSpeedButton
      Left = 478
      ExplicitLeft = 478
    end
    inherited btnConfirmar: TJvSpeedButton
      Left = 362
      ExplicitLeft = 362
    end
  end
  inherited pageDefault: TJvPageControl
    Width = 591
    Height = 484
    ExplicitWidth = 591
    ExplicitHeight = 484
    inherited tabDefault: TTabSheet
      ExplicitWidth = 583
      ExplicitHeight = 456
      object JvgGroupBox8: TJvgGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 95
        Width = 577
        Height = 122
        Align = alTop
        Caption = 'Informa'#231#245'es da Seguradora'
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
        object Label23: TLabel
          AlignWithMargins = True
          Left = 5
          Top = 29
          Width = 107
          Height = 13
          Caption = 'Nome da Seguradora*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label1: TLabel
          AlignWithMargins = True
          Left = 5
          Top = 81
          Width = 95
          Height = 13
          Caption = 'N'#250'mero da Ap'#243'lice*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label4: TLabel
          AlignWithMargins = True
          Left = 5
          Top = 54
          Width = 31
          Height = 13
          Caption = 'CNPJ*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object CNPJ: TJvDBMaskEdit
          Left = 136
          Top = 51
          Width = 249
          Height = 21
          DataField = 'CNPJ'
          DataSource = dtsDefault
          MaxLength = 18
          TabOrder = 1
          EditMask = ''
          OnChange = TEditMascaraCNPJ
        end
        object APOLICE: TJvDBMaskEdit
          Left = 136
          Top = 78
          Width = 249
          Height = 21
          DataField = 'APOLICE'
          DataSource = dtsDefault
          TabOrder = 2
          EditMask = ''
        end
        object NOME: TJvDBMaskEdit
          Left = 136
          Top = 24
          Width = 425
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NOME'
          DataSource = dtsDefault
          TabOrder = 0
          EditMask = ''
        end
      end
      object JvgGroupBox1: TJvgGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 577
        Height = 86
        Align = alTop
        Caption = 'Informa'#231#245'es do Respons'#225'vel pelo Seguro'
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
        object Label2: TLabel
          AlignWithMargins = True
          Left = 5
          Top = 27
          Width = 127
          Height = 13
          Caption = 'Respons'#225'vel pelo Seguro*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label3: TLabel
          AlignWithMargins = True
          Left = 5
          Top = 54
          Width = 54
          Height = 13
          Caption = 'Documento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object JvDBComboBox1: TJvDBComboBox
          Left = 136
          Top = 24
          Width = 425
          Height = 21
          DataField = 'ID_RESPONSAVEL'
          DataSource = dtsDefault
          Items.Strings = (
            ''
            'Emitente do MDF-e'
            
              'Respons'#225'vel pela contrata'#231#227'o do servi'#231'o de transporte(contratant' +
              'e)')
          TabOrder = 0
          Values.Strings = (
            ''
            '0'
            '1')
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Tahoma'
          ListSettings.OutfilteredValueFont.Style = []
        end
        object ID_CNPJCPF: TJvDBMaskEdit
          Left = 136
          Top = 51
          Width = 249
          Height = 21
          DataField = 'ID_CNPJCPF'
          DataSource = dtsDefault
          TabOrder = 1
          EditMask = ''
        end
      end
      object JvgGroupBox2: TJvgGroupBox
        Left = 3
        Top = 223
        Width = 577
        Height = 218
        Caption = 'Lista de N'#250'meros da Averba'#231#227'o'
        TabOrder = 2
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
        object Label5: TLabel
          AlignWithMargins = True
          Left = 5
          Top = 26
          Width = 107
          Height = 13
          Caption = 'N'#250'mero da Averba'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Panel1: TPanel
          AlignWithMargins = True
          Left = 5
          Top = 180
          Width = 567
          Height = 33
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 2
          object btnNUMAVERBACAOexcluir: TJvSpeedButton
            AlignWithMargins = True
            Left = 119
            Top = 3
            Width = 110
            Height = 27
            Hint = 'Cancela opera'#231#227'o atual'
            Align = alLeft
            Caption = 'Excluir'
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000001B2856664463
              D8FF0E142B3300000000000000000E142B334463D8FF1B285666000000000000
              0000848484FF848484FF848484FF848484FF848484FFFFFFFFFF4463D8FF4463
              D8FF4463D8FFDAE0F7FFDAE0F7FF4463D8FF4463D8FF4463D8FF000000000000
              0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAE0F7FF4463
              D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF0E142B33000000000000
              0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAE0
              F7FF4463D8FF4463D8FF4463D8FF4463D8FF0E142B3300000000000000000000
              0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAE0
              F7FF4463D8FF4463D8FF4463D8FF4463D8FF0E142B3300000000000000000000
              0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAE0F7FF4463
              D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF0E142B33000000000000
              0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4463D8FF4463
              D8FF4463D8FFDAE0F7FFDAE0F7FF4463D8FF4463D8FF4463D8FF000000000000
              0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4C1EFFF4463
              D8FFDAE0F7FFFFFFFFFFFFFFFFFFDAE0F7FF4463D8FF1B285666000000000000
              0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
              0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
              0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
              0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFF848484FF848484FF848484FF848484FF0000000000000000000000000000
              0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFF848484FFFAFAFAFA7B7B7BDD1A1A1A330000000000000000000000000000
              0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFF848484FF7B7B7BDD1A1A1A33000000000000000000000000000000000000
              0000848484FF848484FF848484FF848484FF848484FF848484FF848484FF8383
              83FE848484FF1A1A1A3300000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000}
            Layout = blGlyphLeft
            OnClick = btnNUMAVERBACAOexcluirClick
            ExplicitLeft = 694
          end
          object btnNUMAVERBACAOincluir: TJvSpeedButton
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 110
            Height = 27
            Hint = 'Confirma opera'#231#227'o atual'
            Align = alLeft
            Caption = 'Incluir'
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000097A776FF97A776FF00000000000000000000000000000000000000000000
              0000848484FF848484FF848484FF848484FF848484FF848484FF848484FFFFFF
              FFFF97A776FF97A776FF00000000000000000000000000000000000000000000
              0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFF97A776FF97A776FF00000000000000000000000000000000000000000000
              0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF97A776FF97A776FF97A7
              76FF97A776FF97A776FF97A776FF97A776FF97A776FF00000000000000000000
              0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF97A776FF97A776FF97A7
              76FF97A776FF97A776FF97A776FF97A776FF97A776FF00000000000000000000
              0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFF97A776FF97A776FFFFFFFFFFFFFFFFFF0000000000000000000000000000
              0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFF97A776FF97A776FFFFFFFFFF848484FF0000000000000000000000000000
              0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFF97A776FF97A776FFFFFFFFFF848484FF0000000000000000000000000000
              0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
              0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
              0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFF838383FE0000000000000000000000000000
              0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFF848484FF848484FF848484FF848484FF0000000000000000000000000000
              0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFF848484FFFAFAFAFA7B7B7BDD1A1A1A330000000000000000000000000000
              0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFF848484FF7B7B7BDD1A1A1A33000000000000000000000000000000000000
              0000848484FF848484FF848484FF848484FF848484FF848484FF848484FF8383
              83FE848484FF1A1A1A3300000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000}
            Layout = blGlyphLeft
            OnClick = btnNUMAVERBACAOincluirClick
            ExplicitLeft = 578
          end
        end
        object gridLocalCarregamento: TJvDBGrid
          AlignWithMargins = True
          Left = 5
          Top = 54
          Width = 567
          Height = 120
          Align = alBottom
          DataSource = dtstabMDFE_SEGUROS_AVERBACAO
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
          ReadOnly = True
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          MultiSelect = True
          AlternateRowColor = clInactiveCaption
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
          Columns = <
            item
              Expanded = False
              FieldName = 'NAVER'
              Title.Caption = 'N'#250'mero do Averba'#231#227'o'
              Width = 363
              Visible = True
            end>
        end
        object NUM_AVERBACAO: TJvMaskEdit
          Left = 118
          Top = 23
          Width = 454
          Height = 21
          TabOrder = 0
          Text = ''
        end
      end
    end
  end
  inherited statDefault: TJvStatusBar
    Top = 529
    Width = 597
    ExplicitTop = 529
    ExplicitWidth = 597
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 461
    Top = 136
  end
  inherited dtsDefault: TDataSource
    DataSet = dtmMDFE.tabMDFE_SEGUROS
    Left = 438
    Top = 91
  end
  object dtstabMDFE_SEGUROS_AVERBACAO: TDataSource
    DataSet = dtmMDFE.tabMDFE_SEGUROS_AVERBACAO
    OnDataChange = dtsDefaultDataChange
    Left = 462
    Top = 107
  end
end
