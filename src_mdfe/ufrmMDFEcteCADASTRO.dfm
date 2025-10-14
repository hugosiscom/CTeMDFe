inherited frmMDFEcteCADASTRO: TfrmMDFEcteCADASTRO
  Caption = 'Conhecimento de Transporte Eletr'#244'nico - CT-e'
  ClientHeight = 542
  ClientWidth = 872
  ExplicitWidth = 888
  ExplicitHeight = 581
  TextHeight = 13
  inherited pnlComandos: TPanel
    Top = 487
    Width = 866
    ExplicitTop = 487
    ExplicitWidth = 866
    inherited btnCancelar: TJvSpeedButton
      Left = 753
      Caption = 'Retornar'
      ExplicitLeft = 753
    end
    inherited btnConfirmar: TJvSpeedButton
      Left = 637
      ExplicitLeft = 637
    end
  end
  inherited pageDefault: TJvPageControl
    Width = 866
    Height = 478
    ExplicitWidth = 866
    ExplicitHeight = 478
    inherited tabDefault: TTabSheet
      ExplicitWidth = 858
      ExplicitHeight = 450
      object JvgGroupBox15: TJvgGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 852
        Height = 444
        Align = alClient
        Caption = 'Conhecimento de Transporte (CT-e)'
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
          Top = 26
          Width = 89
          Height = 13
          Caption = 'Chave de Acesso*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Município: TLabel
          Left = 385
          Top = 26
          Width = 133
          Height = 13
          Caption = 'Munic'#237'pio de descarramento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object ID_CHAVE: TJvDBMaskEdit
          Tag = 1
          Left = 9
          Top = 39
          Width = 370
          Height = 21
          TabStop = False
          DataField = 'ID_CHAVE'
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
        object ID_CIDADES_IBGE: TJvDBMaskEdit
          Tag = 1
          Left = 385
          Top = 39
          Width = 192
          Height = 21
          TabStop = False
          DataField = 'lookCIDADE'
          DataSource = dtsDefault
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          EditMask = ''
        end
        object ID_IND_REENTREGA: TJvDBCheckBox
          Left = 9
          Top = 72
          Width = 185
          Height = 17
          Caption = 'Indicador de Reentrega'
          DataField = 'ID_IND_REENTREGA'
          DataSource = dtsDefault
          TabOrder = 2
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object JvPageControl1: TJvPageControl
          AlignWithMargins = True
          Left = 5
          Top = 95
          Width = 842
          Height = 344
          ActivePage = TabSheet1
          Align = alBottom
          TabOrder = 3
          object TabSheet1: TTabSheet
            Caption = 'Unidades de Transporte'
            object JvgGroupBox2: TJvgGroupBox
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 828
              Height = 310
              Align = alClient
              Caption = ''
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
              object Panel1: TPanel
                AlignWithMargins = True
                Left = 5
                Top = 272
                Width = 818
                Height = 33
                Align = alBottom
                BevelOuter = bvNone
                TabOrder = 0
                object btnUNIDTRANSexcluir: TJvSpeedButton
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
                  OnClick = btnUNIDTRANSexcluirClick
                  ExplicitLeft = 694
                end
                object btnUNIDTRANSincluir: TJvSpeedButton
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
                  OnClick = btnUNIDTRANSincluirClick
                  ExplicitLeft = 578
                end
                object btnUNIDTRANSalterar: TJvSpeedButton
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
                  OnClick = btnUNIDTRANSalterarClick
                  ExplicitLeft = 694
                end
              end
              object gridLocalCarregamento: TJvDBGrid
                AlignWithMargins = True
                Left = 5
                Top = 19
                Width = 818
                Height = 247
                Align = alClient
                DataSource = dtstabMDFE_CTE_UNIDTRANS
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
                    FieldName = 'ID_IDENTIFICACAO'
                    Title.Caption = 'Identifica'#231#227'o'
                    Width = 130
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'QUANTIDADE'
                    Title.Caption = 'Quantidade Rateada'
                    Visible = True
                  end>
              end
            end
          end
        end
      end
    end
  end
  inherited statDefault: TJvStatusBar
    Top = 523
    Width = 872
    ExplicitTop = 523
    ExplicitWidth = 872
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 437
    Top = 144
  end
  inherited dtsDefault: TDataSource
    DataSet = dtmMDFE.tabMDFE_CTE
    Left = 342
    Top = 219
  end
  object dtstabMDFE_CTE_UNIDTRANS: TDataSource
    DataSet = dtmMDFE.tabMDFE_CTE_UNIDTRANS
    OnDataChange = dtstabMDFE_CTE_UNIDTRANSDataChange
    Left = 478
    Top = 219
  end
end
