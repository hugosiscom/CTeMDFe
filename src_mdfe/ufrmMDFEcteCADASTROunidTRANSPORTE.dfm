inherited frmMDFEcteCADASTROunidTRANSPORTEcadastro: TfrmMDFEcteCADASTROunidTRANSPORTEcadastro
  Caption = 'Unidade de Transporte'
  ClientHeight = 661
  ClientWidth = 711
  ExplicitWidth = 727
  ExplicitHeight = 700
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlComandos: TPanel
    Top = 606
    Width = 705
    ExplicitTop = 606
    ExplicitWidth = 705
    inherited btnCancelar: TJvSpeedButton
      Left = 592
      Caption = 'Retornar'
      ExplicitLeft = 594
    end
    inherited btnConfirmar: TJvSpeedButton
      Left = 476
      ExplicitLeft = 478
    end
  end
  inherited pageDefault: TJvPageControl
    Width = 705
    Height = 597
    ExplicitWidth = 705
    ExplicitHeight = 597
    inherited tabDefault: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 697
      ExplicitHeight = 569
      object JvgGroupBox15: TJvgGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 691
        Height = 563
        Align = alClient
        Caption = 'CT-e - Unidades de Transporte'
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
          Left = 184
          Top = 19
          Width = 62
          Height = 13
          Caption = 'Identifica'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Município: TLabel
          Left = 536
          Top = 19
          Width = 100
          Height = 13
          Caption = 'Quantidade Rateada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label29: TLabel
          AlignWithMargins = True
          Left = 5
          Top = 19
          Width = 681
          Height = 13
          Align = alTop
          Caption = 'Tipo*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          ExplicitWidth = 26
        end
        object ID_IDENTIFICACAO: TJvDBMaskEdit
          Tag = 1
          Left = 184
          Top = 33
          Width = 346
          Height = 21
          TabStop = False
          DataField = 'ID_IDENTIFICACAO'
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
        object ID_TIPO: TJvDBComboBox
          Left = 5
          Top = 33
          Width = 173
          Height = 21
          DataField = 'ID_TIPO'
          DataSource = dtsDefault
          Items.Strings = (
            'Rodovi'#225'rio Tra'#231#227'o'
            'Rodovi'#225'rio Reboque'
            'Navio'
            'Balsa'
            'Aeronave'
            'Vag'#227'o'
            'Outros'
            '')
          TabOrder = 1
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
        object QUANTIDADE: TJvDBCalcEdit
          Left = 536
          Top = 33
          Width = 146
          Height = 21
          ShowButton = False
          TabOrder = 2
          DecimalPlacesAlwaysShown = False
          DataField = 'QUANTIDADE'
          DataSource = dtsDefault
        end
        object JvgGroupBox12: TJvgGroupBox
          AlignWithMargins = True
          Left = 5
          Top = 60
          Width = 677
          Height = 242
          Caption = 'Lacres'
          TabOrder = 3
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
          object Label9: TLabel
            AlignWithMargins = True
            Left = 5
            Top = 19
            Width = 667
            Height = 13
            Align = alTop
            Caption = 'N'#186' Lacre'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
            ExplicitWidth = 41
          end
          object Panel4: TPanel
            AlignWithMargins = True
            Left = 5
            Top = 204
            Width = 667
            Height = 33
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 0
            object btnLacresExcluir: TJvSpeedButton
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
              OnClick = btnLacresExcluirClick
              ExplicitLeft = 694
            end
            object btnLacresIncluir: TJvSpeedButton
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
              OnClick = btnLacresIncluirClick
              ExplicitLeft = 578
            end
          end
          object JvDBGrid2: TJvDBGrid
            AlignWithMargins = True
            Left = 5
            Top = 48
            Width = 667
            Height = 150
            Align = alBottom
            DataSource = dtstabMDFE_CTE_UNIDTRANS_LACRE
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
                FieldName = 'ID_LACRE'
                Title.Caption = 'Lacre'
                Width = 300
                Visible = True
              end>
          end
          object N_LACRE: TJvMaskEdit
            Left = 64
            Top = 16
            Width = 461
            Height = 21
            TabOrder = 2
            Text = ''
          end
        end
        object JvgGroupBox1: TJvgGroupBox
          AlignWithMargins = True
          Left = 5
          Top = 308
          Width = 677
          Height = 242
          Caption = 'CT-e - Unidades de Carga'
          TabOrder = 4
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
          object Panel1: TPanel
            AlignWithMargins = True
            Left = 5
            Top = 204
            Width = 667
            Height = 33
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 0
            object btnUNIDCARGAexcluir: TJvSpeedButton
              AlignWithMargins = True
              Left = 235
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
              OnClick = btnUNIDCARGAexcluirClick
              ExplicitLeft = 119
              ExplicitTop = 11
            end
            object btnUNIDCARGAincluir: TJvSpeedButton
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
              OnClick = btnUNIDCARGAincluirClick
              ExplicitLeft = 578
            end
            object btnUNIDCARGAalterar: TJvSpeedButton
              AlignWithMargins = True
              Left = 119
              Top = 3
              Width = 110
              Height = 27
              Hint = 'Cancela opera'#231#227'o atual'
              Align = alLeft
              Caption = 'Alterar'
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000003827174DB8824DFF3827174D00000000000000000000
                0000848484FF848484FF848484FF848484FF848484FF848484FF848484FFFFFF
                FFFFFFFFFFFFEAD9C9FFB8824DFFB8824DFFB8824DFF00000000000000000000
                0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFEAD9C9FFB8824DFFB8824DFFB8824DFF3827174D00000000000000000000
                0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFBF9F6FFDBC0A6FFB8824DFFB882
                4DFFB8824DFFB8824DFFB8824DFFEAD9C9FF0000000000000000000000000000
                0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFE3CEBAFFB8824DFFB9834EFFB882
                4DFFB8824DFFB8824DFFEAD9C9FFFFFFFFFF0000000000000000000000000000
                0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFC59A6FFFBA8551FFE8D6C5FFFEFE
                FDFFB8824DFFB8824DFFFFFFFFFFFFFFFFFF0000000000000000000000000000
                0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFC9A078FFE8D7C6FFFFFFFFFFE5D1
                BEFFB8824EFFB8824DFFFFFFFFFF848484FF0000000000000000000000000000
                0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5D2BFFFB983
                4FFFB8824DFFDBC0A6FFFFFFFFFF848484FF0000000000000000000000000000
                0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC89F76FFBA85
                52FFE3CEBAFFFCFAF7FFFFFFFFFF848484FF0000000000000000000000000000
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
              OnClick = btnUNIDCARGAalterarClick
              ExplicitLeft = 127
              ExplicitTop = 6
            end
          end
          object JvDBGrid1: TJvDBGrid
            AlignWithMargins = True
            Left = 5
            Top = 24
            Width = 667
            Height = 174
            Align = alBottom
            DataSource = dtstabMDFE_CTE_CARGTRANS
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
                FieldName = 'ID_IDENTIFICADOR'
                Title.Caption = 'Identifica'#231#227'o'
                Width = 130
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QUANTIDADE'
                Title.Caption = 'Quantidade Rateada'
                Width = 130
                Visible = True
              end>
          end
        end
      end
    end
  end
  inherited statDefault: TJvStatusBar
    Top = 642
    Width = 711
    ExplicitTop = 642
    ExplicitWidth = 711
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 373
    Top = 168
  end
  inherited dtsDefault: TDataSource
    DataSet = dtmMDFE.tabMDFE_CTE_UNIDTRANS
    Left = 494
    Top = 163
  end
  object dtstabMDFE_CTE_UNIDTRANS_LACRE: TDataSource
    DataSet = dtmMDFE.tabMDFE_LOCAL_CARREGAMENTO
    OnDataChange = dtstabMDFE_CTE_UNIDTRANS_LACREDataChange
    Left = 526
    Top = 203
  end
  object dtstabMDFE_CTE_CARGTRANS: TDataSource
    DataSet = dtmMDFE.tabMDFE_CTE_CARGTRANS
    OnDataChange = dtstabMDFE_CTE_UNIDTRANS_LACREDataChange
    Left = 510
    Top = 411
  end
end
