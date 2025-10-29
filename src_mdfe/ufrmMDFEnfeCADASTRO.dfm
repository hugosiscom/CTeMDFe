inherited frmMDFEnfeCADASTRO: TfrmMDFEnfeCADASTRO
  Caption = 'Nota Fiscal Eletr'#244'nica - NF-e'
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
        Caption = 'Nota Fiscal Eletr'#244'nica'
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
          Left = 368
          Top = 26
          Width = 23
          Height = 13
          Caption = 'Peso'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label1: TLabel
          Left = 604
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
        object Label2: TLabel
          Left = 486
          Top = 26
          Width = 24
          Height = 13
          Caption = 'Valor'
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
          Width = 353
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
          OnExit = ID_CHAVEExit
        end
        object ID_CIDADES_IBGE: TJvDBMaskEdit
          Tag = 1
          Left = 604
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
          TabOrder = 3
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
          TabOrder = 4
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
          TabOrder = 5
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
                DataSource = dtstabMDFE_NFE_UNIDTRANS
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
        object JvDBMaskEdit1: TJvDBMaskEdit
          Tag = 1
          Left = 368
          Top = 39
          Width = 112
          Height = 21
          TabStop = False
          DataField = 'PESO'
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
        object JvDBMaskEdit2: TJvDBMaskEdit
          Tag = 1
          Left = 486
          Top = 39
          Width = 112
          Height = 21
          TabStop = False
          DataField = 'VALOR'
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
        object BitBtn1: TBitBtn
          Left = 802
          Top = 37
          Width = 38
          Height = 25
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000320B0000320B000000010000000100005A6B7300AD7B
            73004A637B00EFBD8400B58C8C00A5948C00C6948C00B59C8C00BD9C8C00F7BD
            8C00BD949400C6949400CE949400C69C9400CEAD9400F7CE9400C6A59C00CEA5
            9C00D6A59C00C6AD9C00CEAD9C00D6AD9C00F7CE9C00F7D69C004A7BA500CEAD
            A500D6B5A500DEBDA500F7D6A500DEBDAD00DEC6AD00E7C6AD00FFDEAD00FFE7
            AD00CEB5B500F7DEB500F7E7B500FFE7B500FFEFB500D6BDBD00DED6BD00E7DE
            BD00FFE7BD006B9CC600EFDEC600FFEFC600FFF7C600F7E7CE00FFF7CE00F7EF
            D600F7F7D600FFF7D600FFFFD6002184DE00F7F7DE00FFFFDE001884E700188C
            E700FFFFE700188CEF00218CEF00B5D6EF00F7F7EF00FFF7EF00FFFFEF00FFFF
            F700FF00FF004AB5FF0052B5FF0052BDFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0042020A424242
            424242424242424242422B39180B42424242424242424242424243443C180B42
            4242424242424242424242444438180B42424242424242424242424244433918
            0A424242424242424242424242444335004201101A114242424242424242453D
            05072F343434291942424242424242221A2D34343437403E0442424242424206
            231C303437404146284242424242421B210F30373A414140310D42424242421F
            20032434373A3A37321342424242421D25030F2D37373737311042424242420D
            2D2D1C162430333429424242424242421E463F0F0316252E0842424242424242
            4227312D21252314424242424242424242420E141B1B42424242}
          TabOrder = 6
          OnClick = BitBtn1Click
        end
        object JvBitBtn1: TJvBitBtn
          Left = 730
          Top = 66
          Width = 110
          Height = 38
          Hint = 
            'Se importado novamente, substituir'#225' as informa'#231#245'es contidas no p' +
            'rimeiro XML'
          Caption = 'Importar Nota (XML)'
          TabOrder = 7
          OnClick = JvBitBtn1Click
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
    DataSet = dtmMDFE.tabMDFE_NFE
    Left = 342
    Top = 219
  end
  object dtstabMDFE_NFE_UNIDTRANS: TDataSource
    DataSet = dtmMDFE.tabMDFE_NFE_UNIDTRANS
    OnDataChange = dtstabMDFE_NFE_UNIDTRANSDataChange
    Left = 478
    Top = 219
  end
  object FileOpenDialog1: TFileOpenDialog
    DefaultExtension = 'XML'
    FavoriteLinks = <>
    FileName = '*-nfe.XML'
    FileTypes = <
      item
        DisplayName = 'XML'
        FileMask = '*-nfe.XML'
      end>
    Options = []
    Title = 'Selecione a NFe'
    Left = 731
    Top = 13
  end
end
