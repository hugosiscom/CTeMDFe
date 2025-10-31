inherited frmMDFEcadastro: TfrmMDFEcadastro
  Caption = 'MDFe'
  ClientHeight = 548
  ClientWidth = 905
  ExplicitWidth = 921
  ExplicitHeight = 587
  TextHeight = 13
  object Label84: TLabel [0]
    Left = 152
    Top = 349
    Width = 28
    Height = 13
    Caption = 'Bairro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  inherited pnlComandos: TPanel
    Top = 493
    Width = 899
    TabOrder = 1
    ExplicitTop = 493
    ExplicitWidth = 899
    inherited btnCancelar: TJvSpeedButton
      Left = 786
      ExplicitLeft = 694
    end
    inherited btnConfirmar: TJvSpeedButton
      Left = 670
      ExplicitLeft = 578
    end
  end
  inherited pageDefault: TJvPageControl
    Width = 899
    Height = 484
    ActivePage = tabRodoviario
    TabOrder = 0
    ExplicitWidth = 899
    ExplicitHeight = 484
    inherited tabDefault: TTabSheet
      ExplicitWidth = 891
      ExplicitHeight = 456
      object Panel12: TPanel
        Left = 0
        Top = 0
        Width = 891
        Height = 121
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object JvgGroupBox3: TJvgGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 885
          Height = 115
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
          object Label21: TLabel
            AlignWithMargins = True
            Left = 5
            Top = 19
            Width = 875
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
          object Label1: TLabel
            Left = 59
            Top = 62
            Width = 71
            Height = 13
            Caption = 'Tipo Emitente*'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label17: TLabel
            Left = 592
            Top = 59
            Width = 60
            Height = 13
            Caption = 'Modalidade*'
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
          object Label15: TLabel
            Left = 323
            Top = 19
            Width = 153
            Height = 13
            Caption = 'Data e Hora de In'#237'cio de Viagem'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label24: TLabel
            AlignWithMargins = True
            Left = 5
            Top = 62
            Width = 19
            Height = 13
            Caption = 'UF*'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label26: TLabel
            Left = 319
            Top = 59
            Width = 92
            Height = 13
            Caption = 'Tipo Transportador'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label27: TLabel
            Left = 726
            Top = 59
            Width = 92
            Height = 13
            Caption = 'Forma de Emiss'#227'o*'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label63: TLabel
            Left = 607
            Top = 16
            Width = 31
            Height = 13
            Caption = 'Chave'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label64: TLabel
            Left = 441
            Top = 59
            Width = 57
            Height = 13
            Caption = 'Tipo Viagem'
          end
          object Label65: TLabel
            Left = 482
            Top = 19
            Width = 109
            Height = 13
            Caption = 'Data do Fim da Viagem'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object ID_MDFE: TJvDBMaskEdit
            Left = 113
            Top = 35
            Width = 75
            Height = 21
            TabStop = False
            DataField = 'ID_MDFE'
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
          object ID_SERIE: TJvDBMaskEdit
            Tag = 1
            Left = 59
            Top = 35
            Width = 48
            Height = 21
            TabStop = False
            DataField = 'ID_SERIE'
            DataSource = dtsDefault
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
            EditMask = ''
          end
          object ID_TIPO_EMITENTE: TJvDBComboBox
            Left = 59
            Top = 78
            Width = 254
            Height = 21
            DataField = 'ID_TIPO_EMITENTE'
            DataSource = dtsDefault
            Items.Strings = (
              'Prestador de servi'#231'os de transporte'
              'N'#227'o prestador de servi'#231'os de transporte')
            TabOrder = 6
            Values.Strings = (
              '0'
              '1')
            ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
            ListSettings.OutfilteredValueFont.Color = clRed
            ListSettings.OutfilteredValueFont.Height = -11
            ListSettings.OutfilteredValueFont.Name = 'Tahoma'
            ListSettings.OutfilteredValueFont.Style = []
            OnChange = ID_TIPO_EMITENTEChange
          end
          object C_DATAHORA_EMISSAO: TJvDBDateTimePicker
            Left = 194
            Top = 35
            Width = 123
            Height = 21
            Date = 45945.000000000000000000
            Format = 'dd/MM/yyy'
            Time = 0.387137453704781400
            TabOrder = 3
            DropDownDate = 43177.000000000000000000
            DataField = 'DATAHORA_EMISSAO'
            DataSource = dtsDefault
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
          object ID_MODALIDADE: TJvDBComboBox
            Left = 592
            Top = 78
            Width = 128
            Height = 21
            DataField = 'ID_MODALIDADE'
            DataSource = dtsDefault
            Items.Strings = (
              'Rodovi'#225'rio'
              'Aquavi'#225'rio')
            TabOrder = 8
            Values.Strings = (
              '0'
              '2')
            ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
            ListSettings.OutfilteredValueFont.Color = clRed
            ListSettings.OutfilteredValueFont.Height = -11
            ListSettings.OutfilteredValueFont.Name = 'Tahoma'
            ListSettings.OutfilteredValueFont.Style = []
            OnChange = ID_MODALIDADEChange
          end
          object DATAHORA_INICIO_VIAGEM: TJvDBDateTimePicker
            Left = 323
            Top = 35
            Width = 153
            Height = 21
            Date = 45945.000000000000000000
            Time = 0.387137430552684200
            TabOrder = 4
            DropDownDate = 43177.000000000000000000
            DataField = 'DATAHORA_INICIO_VIAGEM'
            DataSource = dtsDefault
          end
          object ID_UF_INICIAL: TJvDBLookupCombo
            Left = 5
            Top = 78
            Width = 48
            Height = 21
            DataField = 'ID_UF_INICIAL'
            DataSource = dtsDefault
            LookupField = 'ID_CIDADES_UF'
            LookupDisplay = 'ID_CIDADES_UF'
            LookupSource = dtsqryCIDADES_UF
            TabOrder = 5
          end
          object ID_TIPO_TRANSPORTADOR: TJvDBComboBox
            Left = 319
            Top = 78
            Width = 116
            Height = 21
            DataField = 'ID_TIPO_TRANSPORTADOR'
            DataSource = dtsDefault
            Items.Strings = (
              ''
              'ETC -  Empresa de Transporte de Cargas'
              'TAC - Transportador Aut'#244'nomo de Cargas'
              'CTC -  Cooperativa de Transporte de Cargas')
            TabOrder = 7
            Values.Strings = (
              ''
              '0'
              '1'
              '2')
            ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
            ListSettings.OutfilteredValueFont.Color = clRed
            ListSettings.OutfilteredValueFont.Height = -11
            ListSettings.OutfilteredValueFont.Name = 'Tahoma'
            ListSettings.OutfilteredValueFont.Style = []
          end
          object ID_FORMA_EMISSAO: TJvDBComboBox
            Left = 726
            Top = 78
            Width = 147
            Height = 21
            DataField = 'ID_FORMA_EMISSAO'
            DataSource = dtsDefault
            Items.Strings = (
              'Normal')
            TabOrder = 9
            Values.Strings = (
              '0'
              '1')
            ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
            ListSettings.OutfilteredValueFont.Color = clRed
            ListSettings.OutfilteredValueFont.Height = -11
            ListSettings.OutfilteredValueFont.Name = 'Tahoma'
            ListSettings.OutfilteredValueFont.Style = []
          end
          object JvDBMaskEdit2: TJvDBMaskEdit
            Tag = 1
            Left = 607
            Top = 35
            Width = 266
            Height = 21
            TabStop = False
            CharCase = ecUpperCase
            DataField = 'XML_CHAVE'
            DataSource = dtsDefault
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 10
            EditMask = ''
          end
          object cbxTipoViagem: TJvDBComboBox
            Left = 441
            Top = 78
            Width = 145
            Height = 21
            DataField = 'TIPO_VIAGEM_INDEX'
            DataSource = dtsDefault
            Items.Strings = (
              'Padr'#227'o'
              'TAC Agredado'
              'Frota')
            TabOrder = 11
            Values.Strings = (
              '0'
              '1'
              '2')
            ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
            ListSettings.OutfilteredValueFont.Color = clRed
            ListSettings.OutfilteredValueFont.Height = -12
            ListSettings.OutfilteredValueFont.Name = 'Segoe UI'
            ListSettings.OutfilteredValueFont.Style = []
          end
          object dtpFimViagem: TJvDBDateTimePicker
            Left = 482
            Top = 35
            Width = 119
            Height = 21
            Date = 45945.000000000000000000
            Time = 0.387137430552684200
            TabOrder = 12
            DropDownDate = 45953.000000000000000000
            DataField = 'DATAHORA_FIM_VIAGEM'
            DataSource = dtsDefault
          end
        end
      end
      object Panel13: TPanel
        Left = 0
        Top = 121
        Width = 891
        Height = 320
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object JvgGroupBox2: TJvgGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 396
          Height = 314
          Align = alLeft
          Caption = 'Local de Carregamento'
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
          object Label8: TLabel
            AlignWithMargins = True
            Left = 5
            Top = 19
            Width = 22
            Height = 34
            Align = alLeft
            Caption = 'UF *'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
            ExplicitHeight = 13
          end
          object Label12: TLabel
            Left = 87
            Top = 18
            Width = 52
            Height = 13
            Caption = '* Munic'#237'pio'
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
            Top = 276
            Width = 386
            Height = 33
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 2
            ExplicitWidth = 332
            object btnLocalCarregamentoExcluir: TJvSpeedButton
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
              OnClick = btnLocalCarregamentoExcluirClick
              ExplicitLeft = 202
              ExplicitTop = 0
            end
            object btnLocalCarregamentoIncluir: TJvSpeedButton
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
              OnClick = btnLocalCarregamentoIncluirClick
              ExplicitLeft = -62
              ExplicitTop = 11
            end
          end
          object ID_MUNICIPIO_INICIAL: TDBLookupComboBox
            Left = 87
            Top = 32
            Width = 226
            Height = 21
            KeyField = 'ID_CIDADES_IBGE'
            ListField = 'DESCRICAO'
            ListSource = dtsqryCIDADES_LOCAL_CARREGAMENTO
            TabOrder = 1
            OnClick = ID_UF_LOCAL_CARREGAMENTOClick
          end
          object ID_UF_LOCAL_CARREGAMENTO: TJvDBLookupCombo
            Left = 5
            Top = 32
            Width = 76
            Height = 21
            LookupField = 'ID_CIDADES_UF'
            LookupDisplay = 'ID_CIDADES_UF'
            LookupSource = dtsqryCIDADES_UF
            TabOrder = 0
            OnClick = ID_UF_LOCAL_CARREGAMENTOClick
          end
          object gridLocalCarregamento: TJvDBGrid
            AlignWithMargins = True
            Left = 5
            Top = 59
            Width = 386
            Height = 211
            Align = alBottom
            DataSource = dtstabCIDADES_LOCAL_CARREGAMENTO
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
            ReadOnly = True
            TabOrder = 3
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            MultiSelect = True
            AlternateRowColor = clInactiveCaption
            AutoSizeColumns = True
            SelectColumnsDialogStrings.Caption = 'Select columns'
            SelectColumnsDialogStrings.OK = '&OK'
            SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
            EditControls = <>
            RowsHeight = 17
            TitleRowHeight = 17
            Columns = <
              item
                Expanded = False
                FieldName = 'lookCIDADE'
                Title.Caption = 'Munic'#237'pio'
                Width = 225
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID_UF'
                Title.Caption = 'UF'
                Width = 47
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID_MUNICIPIO'
                Title.Caption = 'C'#243'digo Munic'#237'pio'
                Width = 95
                Visible = True
              end>
          end
        end
        object JvgGroupBox1: TJvgGroupBox
          AlignWithMargins = True
          Left = 405
          Top = 3
          Width = 266
          Height = 314
          Align = alRight
          Caption = 'UF'#180's do Percurso'
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
          ExplicitLeft = 407
          FullHeight = 0
          object Label7: TLabel
            AlignWithMargins = True
            Left = 10
            Top = 17
            Width = 22
            Height = 13
            Caption = 'UF *'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Panel2: TPanel
            AlignWithMargins = True
            Left = 5
            Top = 274
            Width = 256
            Height = 35
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 1
            ExplicitWidth = 332
            object btnLocalPercursoExcluir: TJvSpeedButton
              AlignWithMargins = True
              Left = 119
              Top = 3
              Width = 110
              Height = 29
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
              OnClick = btnLocalPercursoExcluirClick
              ExplicitTop = 0
            end
            object btnLocalPercursoIncluir: TJvSpeedButton
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 110
              Height = 29
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
              OnClick = btnLocalPercursoIncluirClick
              ExplicitLeft = 83
              ExplicitTop = -5
            end
          end
          object JvDBGrid1: TJvDBGrid
            AlignWithMargins = True
            Left = 5
            Top = 59
            Width = 256
            Height = 209
            Align = alBottom
            DataSource = dtstabMDFE_UF_PERCURSO
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            MultiSelect = True
            AlternateRowColor = clInactiveCaption
            AutoSizeColumns = True
            SelectColumnsDialogStrings.Caption = 'Select columns'
            SelectColumnsDialogStrings.OK = '&OK'
            SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
            EditControls = <>
            RowsHeight = 17
            TitleRowHeight = 17
            Columns = <
              item
                Expanded = False
                FieldName = 'ID_UF'
                Title.Caption = 'UF'
                Width = 239
                Visible = True
              end>
          end
          object ID_UF_PERCURSO: TJvDBLookupCombo
            Left = 5
            Top = 32
            Width = 76
            Height = 21
            LookupField = 'ID_CIDADES_UF'
            LookupDisplay = 'ID_CIDADES_UF'
            LookupSource = dtsqryCIDADES_UF
            TabOrder = 2
          end
        end
        object GroupBox1: TGroupBox
          Left = 674
          Top = 0
          Width = 217
          Height = 320
          Align = alRight
          Caption = 'UF de Destino/Descarga'
          TabOrder = 2
          ExplicitLeft = 677
          ExplicitTop = 3
          object Label66: TLabel
            AlignWithMargins = True
            Left = 13
            Top = 16
            Width = 22
            Height = 13
            Caption = 'UF *'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object ID_UF_FINAL: TDBLookupComboBox
            Left = 13
            Top = 35
            Width = 78
            Height = 21
            DataField = 'ID_UF_FINAL'
            DataSource = dtsDefault
            KeyField = 'ID_CIDADES_UF'
            ListField = 'ID_CIDADES_UF'
            ListSource = dtsqryCIDADES_UF
            TabOrder = 0
            OnClick = ID_UF_FINALClick
          end
        end
      end
    end
    object tabRodoviario: TTabSheet
      Caption = 'Rodovi'#225'rio'
      ImageIndex = 5
      object pageRodo: TJvPageControl
        Left = 0
        Top = 0
        Width = 891
        Height = 456
        ActivePage = pagCIOT
        Align = alClient
        TabOrder = 0
        object tabVeiculoTracao: TTabSheet
          Caption = 'Ve'#237'culo de Tra'#231#227'o'
          object Panel15: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 877
            Height = 41
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object Label14: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 871
              Height = 13
              Align = alTop
              Caption = 'RNTRC'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExplicitWidth = 34
            end
            object Label30: TLabel
              Left = 424
              Top = 3
              Width = 162
              Height = 13
              Caption = 'C'#243'digo de Agendamento do Porto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object VEICULO_COD_AGENDA_PORT: TJvDBMaskEdit
              Tag = 1
              Left = 424
              Top = 19
              Width = 450
              Height = 21
              TabStop = False
              DataField = 'VEICULO_COD_AGENDA_PORT'
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
            object LcbxVeiculo: TDBLookupComboBox
              Left = 3
              Top = 19
              Width = 415
              Height = 21
              DataField = 'VEICULO_RNTRC'
              DataSource = dtsDefault
              KeyField = 'ID_VEICULO'
              ListField = 'DESCRICAO;RENAVAN'
              ListSource = dtmMDFE.DtsVeiculo
              NullValueKey = 46
              TabOrder = 1
              OnClick = LcbxVeiculoClick
            end
          end
          object Panel16: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 50
            Width = 877
            Height = 102
            Align = alTop
            BevelOuter = bvNone
            Caption = 'Panel16'
            TabOrder = 1
            object JvgGroupBox15: TJvgGroupBox
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 871
              Height = 96
              Align = alClient
              Caption = 'Ve'#237'culo de Tra'#231#227'o'
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
                AlignWithMargins = True
                Left = 5
                Top = 19
                Width = 861
                Height = 13
                Align = alTop
                Caption = 'C'#243'digo Interno do Ve'#237'culo'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Transparent = True
                ExplicitWidth = 123
              end
              object Label19: TLabel
                Left = 5
                Top = 43
                Width = 13
                Height = 13
                Caption = 'UF'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Transparent = True
              end
              object Label29: TLabel
                Left = 205
                Top = 19
                Width = 88
                Height = 13
                Caption = 'Tipo de Carroceria'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Transparent = True
              end
              object Label34: TLabel
                Left = 205
                Top = 46
                Width = 60
                Height = 13
                Caption = 'Tipo Rodado'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Transparent = True
              end
              object Label35: TLabel
                Left = 488
                Top = 19
                Width = 25
                Height = 13
                Caption = 'Placa'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Transparent = True
              end
              object Label36: TLabel
                Left = 488
                Top = 46
                Width = 77
                Height = 13
                Caption = 'Capacidade(KG)'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Transparent = True
              end
              object Label38: TLabel
                Left = 664
                Top = 16
                Width = 43
                Height = 13
                Caption = 'Tara(KG)'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Transparent = True
              end
              object Label43: TLabel
                Left = 664
                Top = 43
                Width = 78
                Height = 13
                Caption = 'Capacidade(M3)'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Transparent = True
              end
              object Label44: TLabel
                Left = 665
                Top = 70
                Width = 48
                Height = 13
                Caption = 'RENAVAM'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Transparent = True
              end
              object Label20: TLabel
                Left = 488
                Top = 70
                Width = 34
                Height = 13
                Caption = 'RNTRC'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Transparent = True
              end
              object Label89: TLabel
                Left = 5
                Top = 70
                Width = 31
                Height = 13
                Caption = 'Chassi'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Transparent = True
              end
              object Label91: TLabel
                Left = 205
                Top = 70
                Width = 34
                Height = 13
                Caption = 'Modelo'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Transparent = True
              end
              object VEICULO_TIPO_CARROCERIA: TJvDBComboBox
                Left = 305
                Top = 16
                Width = 168
                Height = 21
                DataField = 'VEICULO_TIPO_CARROCERIA'
                DataSource = dtsDefault
                Items.Strings = (
                  'N'#227'o Aplic'#225'vel'
                  'Aberta'
                  'Fechada/Ba'#250
                  'Granelera'
                  'Porta-cont'#234'iner'
                  'Sider'
                  '')
                ReadOnly = True
                TabOrder = 3
                Values.Strings = (
                  '0'
                  '1'
                  '2'
                  '3'
                  '4'
                  '5')
                ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
                ListSettings.OutfilteredValueFont.Color = clRed
                ListSettings.OutfilteredValueFont.Height = -11
                ListSettings.OutfilteredValueFont.Name = 'Tahoma'
                ListSettings.OutfilteredValueFont.Style = []
              end
              object VEICULO_CODIGO_INTERNO: TJvDBMaskEdit
                Tag = 1
                Left = 138
                Top = 16
                Width = 57
                Height = 21
                TabStop = False
                DataField = 'VEICULO_CODIGO_INTERNO'
                DataSource = dtsDefault
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 2
                EditMask = ''
              end
              object VEICULO_TIPO_RODADO: TJvDBComboBox
                Left = 305
                Top = 43
                Width = 168
                Height = 21
                DataField = 'VEICULO_TIPO_RODADO'
                DataSource = dtsDefault
                Items.Strings = (
                  'Nao Aplicavel'
                  'Truc'
                  'Toco'
                  'CavaloMecanico'
                  'VAN'
                  'Utilitario'
                  'Outros')
                ReadOnly = True
                TabOrder = 7
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
              object VEICULO_PLACA: TJvDBMaskEdit
                Tag = 1
                Left = 571
                Top = 13
                Width = 78
                Height = 21
                TabStop = False
                CharCase = ecUpperCase
                DataField = 'VEICULO_PLACA'
                DataSource = dtsDefault
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 0
                EditMask = ''
              end
              object VEICULO_CAPACIDADE_KG: TJvDBMaskEdit
                Tag = 1
                Left = 571
                Top = 40
                Width = 78
                Height = 21
                TabStop = False
                DataField = 'VEICULO_CAPACIDADE_KG'
                DataSource = dtsDefault
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 4
                EditMask = ''
              end
              object VEICULO_TARA: TJvDBMaskEdit
                Tag = 1
                Left = 748
                Top = 13
                Width = 113
                Height = 21
                TabStop = False
                DataField = 'VEICULO_TARA'
                DataSource = dtsDefault
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 1
                EditMask = ''
              end
              object VEICULO_CAPACIDADE_M3: TJvDBMaskEdit
                Tag = 1
                Left = 748
                Top = 40
                Width = 113
                Height = 21
                TabStop = False
                DataField = 'VEICULO_CAPACIDADE_M3'
                DataSource = dtsDefault
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 5
                EditMask = ''
              end
              object VEICULO_RENAVAN: TJvDBMaskEdit
                Tag = 1
                Left = 748
                Top = 67
                Width = 113
                Height = 21
                TabStop = False
                DataField = 'VEICULO_RENAVAN'
                DataSource = dtsDefault
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 8
                EditMask = ''
              end
              object VEICULO_UF: TDBLookupComboBox
                Left = 138
                Top = 43
                Width = 57
                Height = 21
                DataField = 'VEICULO_UF'
                DataSource = dtsDefault
                DragMode = dmAutomatic
                KeyField = 'ID_CIDADES_UF'
                ListField = 'ID_CIDADES_UF'
                ListSource = dtsqryCIDADES_UF
                ReadOnly = True
                TabOrder = 6
              end
              object VEICULO_RNTRC: TJvDBMaskEdit
                Tag = 1
                Left = 571
                Top = 67
                Width = 78
                Height = 21
                TabStop = False
                DataField = 'VEICULO_RNTRC'
                DataSource = dtsDefault
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 9
                EditMask = ''
              end
              object VEICULO_CHASSI: TJvDBMaskEdit
                Left = 74
                Top = 67
                Width = 121
                Height = 21
                TabStop = False
                DataField = 'VEICULO_CHASSI'
                DataSource = dtsDefault
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 10
                EditMask = ''
              end
              object VEICULO_MODELO: TJvDBMaskEdit
                Left = 305
                Top = 70
                Width = 168
                Height = 21
                TabStop = False
                DataField = 'VEICULO_MODELO'
                DataSource = dtsDefault
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 11
                EditMask = ''
              end
            end
          end
          object Panel17: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 158
            Width = 877
            Height = 267
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 2
            object JvgGroupBox16: TJvgGroupBox
              AlignWithMargins = True
              Left = 424
              Top = 3
              Width = 450
              Height = 261
              Align = alRight
              Caption = 'Condutores'
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
              object Panel6: TPanel
                AlignWithMargins = True
                Left = 5
                Top = 223
                Width = 440
                Height = 33
                Align = alBottom
                BevelOuter = bvNone
                TabOrder = 2
                object btnCondutoresExcluir: TJvSpeedButton
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
                  OnClick = btnCondutoresExcluirClick
                  ExplicitLeft = 694
                end
                object btnCondutoresIncluir: TJvSpeedButton
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
                  OnClick = btnCondutoresIncluirClick
                  ExplicitTop = 0
                end
              end
              object JvDBGrid4: TJvDBGrid
                AlignWithMargins = True
                Left = 5
                Top = 71
                Width = 440
                Height = 146
                Align = alClient
                DataSource = dtstabMDFE_CONDUTORES
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
                    FieldName = 'NOME'
                    Title.Caption = 'Nome do Condutor'
                    Width = 300
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ID_CPF'
                    Title.Caption = 'CPF do Condutor'
                    Width = 112
                    Visible = True
                  end>
              end
              object Panel14: TPanel
                AlignWithMargins = True
                Left = 5
                Top = 19
                Width = 440
                Height = 46
                Align = alTop
                BevelOuter = bvNone
                TabOrder = 0
                object Label28: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 434
                  Height = 13
                  Align = alTop
                  Caption = 'Nome do Condutor*'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  Transparent = True
                  ExplicitWidth = 96
                end
                object LkCbxMotorista: TDBLookupComboBox
                  Left = 3
                  Top = 22
                  Width = 433
                  Height = 21
                  KeyField = 'CPF'
                  ListField = 'NOME;CPF'
                  ListSource = dtmMDFE.DtsMotorista
                  NullValueKey = 46
                  TabOrder = 0
                end
              end
            end
            object JvgGroupBox18: TJvgGroupBox
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 415
              Height = 261
              Align = alClient
              Caption = 'Propriet'#225'rio'
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
              object Panel32: TPanel
                AlignWithMargins = True
                Left = 5
                Top = 19
                Width = 405
                Height = 237
                Align = alClient
                BevelOuter = bvNone
                TabOrder = 0
                object Label33: TLabel
                  Left = 3
                  Top = 202
                  Width = 40
                  Height = 13
                  Caption = 'RNTRC*'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  Transparent = True
                end
                object Label32: TLabel
                  Left = 137
                  Top = 202
                  Width = 19
                  Height = 13
                  Caption = 'UF*'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  Transparent = True
                end
                object Label39: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 37
                  Width = 62
                  Height = 13
                  Caption = 'CPF ou CNPJ'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  Transparent = True
                end
                object Label37: TLabel
                  AlignWithMargins = True
                  Left = 268
                  Top = 32
                  Width = 10
                  Height = 13
                  Caption = 'IE'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  Transparent = True
                end
                object Label40: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 78
                  Width = 60
                  Height = 13
                  Caption = 'Raz'#227'o Social'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  Transparent = True
                end
                object Label41: TLabel
                  Left = 200
                  Top = 202
                  Width = 94
                  Height = 13
                  Caption = 'Tipo de Propriet'#225'rio'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  Transparent = True
                end
                object Label83: TLabel
                  Left = 3
                  Top = 115
                  Width = 28
                  Height = 13
                  Caption = 'Bairro'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  Transparent = True
                end
                object Label85: TLabel
                  Left = 137
                  Top = 115
                  Width = 19
                  Height = 13
                  Caption = 'Rua'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  Transparent = True
                end
                object Label86: TLabel
                  Left = 271
                  Top = 115
                  Width = 65
                  Height = 13
                  Caption = 'Complemento'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  Transparent = True
                end
                object labelseila: TLabel
                  Left = 3
                  Top = 161
                  Width = 19
                  Height = 13
                  Caption = 'CEP'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  Transparent = True
                end
                object Label87: TLabel
                  Left = 137
                  Top = 161
                  Width = 37
                  Height = 13
                  Caption = 'Numero'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  Transparent = True
                end
                object Label88: TLabel
                  Left = 271
                  Top = 161
                  Width = 69
                  Height = 13
                  Caption = 'C'#243'd. Municipio'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  Transparent = True
                end
                object Label90: TLabel
                  Left = 225
                  Top = 5
                  Width = 33
                  Height = 13
                  Caption = 'Celular'
                end
                object EMI_N_PROP: TJvDBCheckBox
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 206
                  Height = 20
                  Caption = 'N'#227'o '#233' o emitente iniciado no aplicativo'
                  DataField = 'EMI_N_PROP'
                  DataSource = dtsDefault
                  TabOrder = 0
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                  OnChange = EMI_N_PROPChange
                end
                object EMI_N_PROP_RNTRC: TJvDBMaskEdit
                  Tag = 1
                  Left = 3
                  Top = 216
                  Width = 128
                  Height = 21
                  TabStop = False
                  DataField = 'EMI_N_PROP_RNTRC'
                  DataSource = dtsDefault
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 4
                  EditMask = ''
                end
                object EMI_N_PROP_TIPO: TJvDBComboBox
                  Left = 200
                  Top = 216
                  Width = 191
                  Height = 21
                  DataField = 'EMI_N_PROP_TIPO'
                  DataSource = dtsDefault
                  Items.Strings = (
                    'TAC Agregado  -Transportador Aut'#244'nomo de Cargas'
                    'TAC Indenpendente - Transportador Aut'#244'nomo de Cargas'
                    'Outros'
                    '')
                  TabOrder = 6
                  Values.Strings = (
                    '0'
                    '1'
                    '2'
                    '3'
                    '4'
                    '5')
                  ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
                  ListSettings.OutfilteredValueFont.Color = clRed
                  ListSettings.OutfilteredValueFont.Height = -11
                  ListSettings.OutfilteredValueFont.Name = 'Tahoma'
                  ListSettings.OutfilteredValueFont.Style = []
                end
                object EMI_N_PROP_CPF_CNPJ: TJvDBMaskEdit
                  Tag = 1
                  Left = 3
                  Top = 51
                  Width = 259
                  Height = 21
                  TabStop = False
                  DataField = 'EMI_N_PROP_CPF_CNPJ'
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
                object EMI_N_PROP_UF: TJvDBLookupCombo
                  Left = 137
                  Top = 216
                  Width = 57
                  Height = 21
                  DataField = 'EMI_N_PROP_UF'
                  DataSource = dtsDefault
                  LookupField = 'ID_CIDADES_UF'
                  LookupDisplay = 'ID_CIDADES_UF'
                  LookupSource = dtsqryCIDADES_UF
                  TabOrder = 5
                end
                object EMI_N_PROP_IE: TJvDBMaskEdit
                  Tag = 1
                  Left = 268
                  Top = 51
                  Width = 125
                  Height = 21
                  TabStop = False
                  DataField = 'EMI_N_PROP_IE'
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
                object EMI_N_PROP_RZSOCIAL: TJvDBMaskEdit
                  Tag = 1
                  Left = 3
                  Top = 91
                  Width = 390
                  Height = 21
                  TabStop = False
                  DataField = 'EMI_N_PROP_RZSOCIAL'
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
                object EMI_N_PROP_CELULAR: TJvDBMaskEdit
                  Left = 271
                  Top = 2
                  Width = 119
                  Height = 21
                  DataField = 'EMI_N_PROP_CELULAR'
                  DataSource = dtsDefault
                  TabOrder = 7
                  EditMask = ''
                end
                object EMI_N_PROP_BAIRRO: TJvDBMaskEdit
                  Tag = 1
                  Left = 3
                  Top = 134
                  Width = 128
                  Height = 21
                  TabStop = False
                  DataField = 'EMI_N_PROP_BAIRRO'
                  DataSource = dtsDefault
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 8
                  EditMask = ''
                end
                object EMI_N_PROP_RUA: TJvDBMaskEdit
                  Tag = 1
                  Left = 137
                  Top = 134
                  Width = 128
                  Height = 21
                  TabStop = False
                  DataField = 'EMI_N_PROP_RUA'
                  DataSource = dtsDefault
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 9
                  EditMask = ''
                end
                object EMI_N_PROP_COMPLEMENTO: TJvDBMaskEdit
                  Tag = 1
                  Left = 271
                  Top = 134
                  Width = 122
                  Height = 21
                  TabStop = False
                  DataField = 'EMI_N_PROP_COMPLEMENTO'
                  DataSource = dtsDefault
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 10
                  EditMask = ''
                end
                object EMI_N_PROP_CEP: TJvDBMaskEdit
                  Tag = 1
                  Left = 0
                  Top = 175
                  Width = 131
                  Height = 21
                  TabStop = False
                  DataField = 'EMI_N_PROP_CEP'
                  DataSource = dtsDefault
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 11
                  EditMask = ''
                end
                object EMI_N_PROP_NUMERO: TJvDBMaskEdit
                  Tag = 1
                  Left = 137
                  Top = 175
                  Width = 128
                  Height = 21
                  TabStop = False
                  DataField = 'EMI_N_PROP_NUMERO'
                  DataSource = dtsDefault
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 12
                  EditMask = ''
                end
                object EMI_N_PROP_CODIGO_MUNICIPIO: TJvDBMaskEdit
                  Tag = 1
                  Left = 271
                  Top = 175
                  Width = 122
                  Height = 21
                  TabStop = False
                  DataField = 'EMI_N_PROP_CODIGO_MUNICIPIO'
                  DataSource = dtsDefault
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 13
                  EditMask = ''
                end
              end
            end
          end
        end
        object pagREBOQUE: TTabSheet
          Caption = 'Reboque'
          ImageIndex = 1
          object JvgGroupBox4: TJvgGroupBox
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 877
            Height = 422
            Align = alClient
            Caption = 'Informa'#231#245'es dos Ver'#237'culos(3 no m'#225'ximo)'
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
            object Panel8: TPanel
              AlignWithMargins = True
              Left = 5
              Top = 384
              Width = 867
              Height = 33
              Align = alBottom
              BevelOuter = bvNone
              TabOrder = 1
              object btnReboqueExcluir: TJvSpeedButton
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
                OnClick = btnReboqueExcluirClick
                ExplicitTop = 0
              end
              object btnReboqueIncluir: TJvSpeedButton
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
                OnClick = btnReboqueIncluirClick
                ExplicitTop = 0
              end
              object btnReboqueAlterar: TJvSpeedButton
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
                OnClick = btnReboqueAlterarClick
                ExplicitLeft = 694
              end
            end
            object JvDBGrid5: TJvDBGrid
              AlignWithMargins = True
              Left = 5
              Top = 19
              Width = 867
              Height = 359
              Align = alClient
              DataSource = dtstabMDFE_REBOQUE
              Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
              ReadOnly = True
              TabOrder = 0
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
                  FieldName = 'INTT'
                  Title.Caption = 'C'#243'digo Interno'
                  Width = 90
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PLACA'
                  Title.Caption = 'Placa'
                  Width = 90
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'RENAVAN'
                  Title.Caption = 'Renavam'
                  Width = 130
                  Visible = True
                end>
            end
          end
        end
        object pagCIOT: TTabSheet
          Caption = 'CIOT'
          ImageIndex = 2
          object JvgGroupBox5: TJvgGroupBox
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 877
            Height = 422
            Align = alClient
            Caption = 'C'#243'digo Identificador da Opera'#231#227'o de Transporte'
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
            object Panel7: TPanel
              AlignWithMargins = True
              Left = 5
              Top = 384
              Width = 867
              Height = 33
              Align = alBottom
              BevelOuter = bvNone
              TabOrder = 2
              object btnCIOTexcluir: TJvSpeedButton
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
                OnClick = btnCIOTexcluirClick
                ExplicitLeft = 694
              end
              object btnCIOTIncluir: TJvSpeedButton
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
                OnClick = btnCIOTIncluirClick
                ExplicitLeft = 578
              end
            end
            object Panel18: TPanel
              AlignWithMargins = True
              Left = 5
              Top = 19
              Width = 867
              Height = 38
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              object Label3: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 861
                Height = 13
                Align = alTop
                Caption = 'CIOT*'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Transparent = True
                ExplicitWidth = 31
              end
              object Label6: TLabel
                Left = 343
                Top = 3
                Width = 210
                Height = 13
                Caption = 'DOC. do respons'#225'vel pela gera'#231#227'o do CIOT'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Transparent = True
              end
              object edtCIOT: TJvMaskEdit
                Left = 3
                Top = 17
                Width = 236
                Height = 21
                MaxLength = 12
                TabOrder = 0
                Text = ''
              end
              object CIOT_DOC: TJvMaskEdit
                Left = 343
                Top = 17
                Width = 98
                Height = 21
                EditMask = '999.999.999-99;0;_'
                MaxLength = 14
                TabOrder = 1
                Text = ''
              end
              object opCPF: TJvRadioButton
                Left = 245
                Top = 19
                Width = 40
                Height = 17
                Alignment = taLeftJustify
                Caption = 'CPF'
                Checked = True
                TabOrder = 2
                TabStop = True
                OnClick = opCPFClick
                LinkedControls = <>
              end
              object opCNPJ: TJvRadioButton
                Left = 291
                Top = 21
                Width = 46
                Height = 17
                Alignment = taLeftJustify
                Caption = 'CNPJ'
                TabOrder = 3
                OnClick = opCNPJClick
                LinkedControls = <>
              end
              object btnGerarCIOT: TBitBtn
                Left = 770
                Top = 0
                Width = 89
                Height = 38
                Caption = 'Gerar CIOT'
                TabOrder = 4
                OnClick = btnGerarCIOTClick
              end
            end
            object Panel19: TPanel
              AlignWithMargins = True
              Left = 5
              Top = 63
              Width = 867
              Height = 315
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              object Label5: TLabel
                Left = 3
                Top = 0
                Width = 77
                Height = 13
                Caption = 'Tipo Embalagem'
              end
              object Label67: TLabel
                Left = 157
                Top = 0
                Width = 95
                Height = 13
                Caption = 'Dist'#226'ncia Percorrida'
              end
              object Label68: TLabel
                Left = 699
                Top = 232
                Width = 109
                Height = 13
                Caption = 'Total de Adiantamento'
              end
              object Label71: TLabel
                Left = 699
                Top = 94
                Width = 85
                Height = 13
                Caption = 'Total Combust'#237'vel'
              end
              object Label72: TLabel
                Left = 699
                Top = 140
                Width = 76
                Height = 13
                Caption = 'Outros Cr'#233'ditos'
              end
              object Label73: TLabel
                Left = 699
                Top = 48
                Width = 72
                Height = 13
                Caption = 'Outros D'#233'bitos'
              end
              object Label69: TLabel
                Left = 699
                Top = 186
                Width = 85
                Height = 13
                Caption = 'Total de Quita'#231#227'o'
              end
              object Label74: TLabel
                Left = 291
                Top = 46
                Width = 147
                Height = 13
                Caption = 'Justificativa de outros cr'#233'ditos'
              end
              object Label75: TLabel
                Left = 495
                Top = 48
                Width = 144
                Height = 13
                Caption = 'Justificativa de outros d'#233'bitos'
              end
              object Label76: TLabel
                Left = 291
                Top = 175
                Width = 150
                Height = 13
                Caption = 'Observa'#231#245'es ao Transportador'
              end
              object Label77: TLabel
                Left = 495
                Top = 175
                Width = 141
                Height = 13
                Caption = 'Observa'#231#245'es ao Credenciado'
              end
              object Label78: TLabel
                Left = 291
                Top = 0
                Width = 85
                Height = 13
                Caption = 'Dist'#226'ncia Retorno'
              end
              object JvDBGrid6: TJvDBGrid
                AlignWithMargins = True
                Left = 3
                Top = 46
                Width = 282
                Height = 269
                DataSource = dtstabMDFE_CIOT
                Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
                ReadOnly = True
                TabOrder = 0
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
                    FieldName = 'CIOT'
                    Width = 113
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CNPJ'
                    Title.Caption = 'DOC. Respons'#225'vel CIOT'
                    Width = 129
                    Visible = True
                  end>
              end
              object JvDBComboBox1: TJvDBComboBox
                Left = 3
                Top = 19
                Width = 148
                Height = 21
                DataField = 'TIPO_EMBALAGEM_INDEX'
                DataSource = dtsDefault
                Items.Strings = (
                  'Indefinido'
                  'Bigbag'
                  'Pallet'
                  'Granel'
                  'Container'
                  'Saco'
                  'Caixa'
                  'Unit'#225'io'
                  'Fardo'
                  'Tanque')
                TabOrder = 1
                Values.Strings = (
                  '0'
                  '1'
                  '2'
                  '3'
                  '4'
                  '5'
                  '6'
                  '7'
                  '8'
                  '9')
                ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
                ListSettings.OutfilteredValueFont.Color = clRed
                ListSettings.OutfilteredValueFont.Height = -12
                ListSettings.OutfilteredValueFont.Name = 'Segoe UI'
                ListSettings.OutfilteredValueFont.Style = []
              end
              object memoObservacoesAoCredenciado: TDBMemo
                Left = 495
                Top = 194
                Width = 198
                Height = 121
                DataField = 'OBS_CREDENCIADO'
                DataSource = dtsDefault
                MaxLength = 1024
                ScrollBars = ssVertical
                TabOrder = 2
              end
              object memoObservacoesAoTransportador: TDBMemo
                Left = 291
                Top = 194
                Width = 198
                Height = 121
                DataField = 'OBS_TRANSPORTADOR'
                DataSource = dtsDefault
                MaxLength = 1024
                ScrollBars = ssVertical
                TabOrder = 3
              end
              object edtDistanciaPercorrida: TJvDBMaskEdit
                Left = 157
                Top = 19
                Width = 123
                Height = 21
                Hint = 'Dist'#226'ncia percorrida em KM (quil'#244'metros)'
                DataField = 'DISTANCIA_PERCORRIDA'
                DataSource = dtsDefault
                MaxLength = 15
                TabOrder = 4
                EditMask = '###########0,00;1;_'
              end
              object edtTotalAdiantamento: TJvDBMaskEdit
                Left = 699
                Top = 251
                Width = 119
                Height = 21
                DataField = 'TOTAL_ADIANTAMENTO'
                DataSource = dtsDefault
                MaxLength = 15
                TabOrder = 5
                EditMask = '###########0,00;1;_'
              end
              object edtTotalCombustivel: TJvDBMaskEdit
                Left = 699
                Top = 113
                Width = 117
                Height = 21
                DataField = 'TOTAL_COMBUSTIVEL'
                DataSource = dtsDefault
                MaxLength = 15
                TabOrder = 6
                EditMask = '###########0,00;1;_'
              end
              object edtOutrosCreditos: TJvDBMaskEdit
                Left = 699
                Top = 159
                Width = 117
                Height = 21
                DataField = 'OUTROS_CREDITOS'
                DataSource = dtsDefault
                MaxLength = 15
                TabOrder = 7
                EditMask = '###########0,00;1;_'
              end
              object edtOutrosDebitos: TJvDBMaskEdit
                Left = 699
                Top = 67
                Width = 116
                Height = 21
                DataField = 'OUTROS_DEBITOS'
                DataSource = dtsDefault
                MaxLength = 15
                TabOrder = 8
                EditMask = '###########0,00;1;_'
              end
              object memoJUSTIFICATIVA_OUTROS_CREDITOS: TDBMemo
                Left = 291
                Top = 65
                Width = 198
                Height = 104
                DataField = 'JUSTIFICATIVA_OUTROS_CREDITOS'
                DataSource = dtsDefault
                MaxLength = 1024
                ScrollBars = ssVertical
                TabOrder = 9
              end
              object memoJUSTIFICATIVA_OUTROS_DEBITOS: TDBMemo
                Left = 495
                Top = 67
                Width = 198
                Height = 102
                DataField = 'JUSTIFICATIVA_OUTROS_DEBITOS'
                DataSource = dtsDefault
                MaxLength = 1024
                ScrollBars = ssVertical
                TabOrder = 10
              end
              object edtTotalQuitacao: TJvDBMaskEdit
                Left = 699
                Top = 205
                Width = 117
                Height = 21
                DataField = 'TOTAL_QUITACAO'
                DataSource = dtsDefault
                MaxLength = 15
                TabOrder = 11
                EditMask = '###########0,00;1;_'
              end
              object edtDistanciaRetorno: TJvDBMaskEdit
                Left = 291
                Top = 19
                Width = 122
                Height = 21
                Hint = 'Dist'#226'ncia percorrida em KM (quil'#244'metros)'
                DataField = 'DISTANCIA_RETORNO'
                DataSource = dtsDefault
                MaxLength = 15
                TabOrder = 12
                EditMask = '###########0,00;1;_'
              end
            end
          end
        end
        object pagCONTRATANTES: TTabSheet
          Caption = 'Contratantes'
          ImageIndex = 3
          object JvgGroupBox6: TJvgGroupBox
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 877
            Height = 422
            Align = alClient
            Caption = 'Documento do Contratante'
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
            object Panel9: TPanel
              AlignWithMargins = True
              Left = 5
              Top = 384
              Width = 867
              Height = 33
              Align = alBottom
              BevelOuter = bvNone
              TabOrder = 2
              object btnCONTRATANTESexcluir: TJvSpeedButton
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
                OnClick = btnCONTRATANTESexcluirClick
                ExplicitLeft = 694
              end
              object btnCONTRATANTESincluir: TJvSpeedButton
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
                OnClick = btnCONTRATANTESincluirClick
                ExplicitLeft = 578
              end
            end
            object Panel20: TPanel
              AlignWithMargins = True
              Left = 5
              Top = 65
              Width = 867
              Height = 313
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              object JvDBGrid7: TJvDBGrid
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 861
                Height = 307
                Align = alClient
                DataSource = dtstabMDFE_CONTRATANTES
                Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
                ReadOnly = True
                TabOrder = 0
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
                    FieldName = 'CNPJ'
                    Title.Caption = 'CPF ou CNPJ do Contratante'
                    Width = 250
                    Visible = True
                  end>
              end
            end
            object Panel21: TPanel
              AlignWithMargins = True
              Left = 5
              Top = 19
              Width = 867
              Height = 40
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              object Label22: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 861
                Height = 13
                Align = alTop
                Caption = 'CPF ou CNPJ'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Transparent = True
                ExplicitWidth = 62
              end
              object DOC_CONTRATANTE: TJvMaskEdit
                Left = 0
                Top = 19
                Width = 249
                Height = 21
                TabOrder = 0
                Text = ''
                OnChange = DOC_CONTRATANTEChange
              end
            end
          end
        end
        object pagVALEpedagio: TTabSheet
          Caption = 'Vale Ped'#225'gio'
          ImageIndex = 4
          object JvgGroupBox8: TJvgGroupBox
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 877
            Height = 422
            Align = alClient
            Caption = 'Informa'#231#245'es do Vale Ped'#225'gio'
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
            object Panel10: TPanel
              AlignWithMargins = True
              Left = 5
              Top = 384
              Width = 867
              Height = 33
              Align = alBottom
              BevelOuter = bvNone
              TabOrder = 1
              object btnVALEPEDAGIOexcluir: TJvSpeedButton
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
                OnClick = btnVALEPEDAGIOexcluirClick
                ExplicitTop = 0
              end
              object btnVALEPEDAGIOincluir: TJvSpeedButton
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
                OnClick = btnVALEPEDAGIOincluirClick
                ExplicitTop = 0
              end
              object btnVALEPEDAGIOalterar: TJvSpeedButton
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
                OnClick = btnVALEPEDAGIOalterarClick
                ExplicitLeft = 694
              end
            end
            object Panel22: TPanel
              AlignWithMargins = True
              Left = 5
              Top = 19
              Width = 867
              Height = 359
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 0
              object JvDBGrid8: TJvDBGrid
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 861
                Height = 353
                Align = alClient
                DataSource = dtstabMDFE_VALEPEDAGIO
                Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
                ReadOnly = True
                TabOrder = 0
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
                    FieldName = 'CNPJFORN'
                    Title.Caption = 'CNPJ Fornecedor'
                    Width = 180
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CNPJPG'
                    Title.Caption = 'CPF/CNPJ respons'#225'vel pelo pagamento'
                    Width = 230
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NCOMPRA'
                    Title.Caption = 'N'#250'mero Comprovante'
                    Width = 130
                    Visible = True
                  end>
              end
            end
          end
        end
      end
    end
    object tabAquaviario: TTabSheet
      Caption = 'Aquavi'#225'rio'
      ImageIndex = 6
      object Panel40: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 885
        Height = 118
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label46: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 879
          Height = 13
          Align = alTop
          Caption = 'CNPJ da Ag'#234'ncia de Navega'#231#227'o*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          ExplicitWidth = 159
        end
        object Label47: TLabel
          Left = 4
          Top = 30
          Width = 151
          Height = 13
          Caption = 'C'#243'digo do tipo de embarca'#231#227'o*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label48: TLabel
          Left = 197
          Top = 30
          Width = 115
          Height = 13
          Caption = 'C'#243'digo da embarca'#231#227'o*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label49: TLabel
          Left = 411
          Top = 30
          Width = 95
          Height = 13
          Caption = 'N'#250'mero da Viagem*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label50: TLabel
          Left = 4
          Top = 57
          Width = 109
          Height = 13
          Caption = 'Nome da embarca'#231#227'o*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label51: TLabel
          Left = 4
          Top = 84
          Width = 149
          Height = 13
          Caption = 'C'#243'digo do Porto de embarque*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label52: TLabel
          Left = 318
          Top = 84
          Width = 136
          Height = 13
          Caption = 'C'#243'digo do Porto de destino*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object AQUA_CNPJ: TJvDBMaskEdit
          Tag = 1
          Left = 161
          Top = 0
          Width = 158
          Height = 21
          TabStop = False
          DataField = 'AQUA_CNPJ'
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
        object AQUA_EMBARCACAO_TIPO: TJvDBMaskEdit
          Tag = 1
          Left = 161
          Top = 27
          Width = 30
          Height = 21
          TabStop = False
          DataField = 'AQUA_EMBARCACAO_TIPO'
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
        object AQUA_EMBARCACAO_CODIGO: TJvDBMaskEdit
          Tag = 1
          Left = 318
          Top = 27
          Width = 87
          Height = 21
          TabStop = False
          DataField = 'AQUA_EMBARCACAO_CODIGO'
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
        object AQUA_EMBARCACAO_VIAGEM_NUMERO: TJvDBMaskEdit
          Tag = 1
          Left = 512
          Top = 27
          Width = 87
          Height = 21
          TabStop = False
          DataField = 'AQUA_EMBARCACAO_VIAGEM_NUMERO'
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
        object AQUA_EMBARCACAO_NOME: TJvDBMaskEdit
          Tag = 1
          Left = 161
          Top = 54
          Width = 438
          Height = 21
          TabStop = False
          CharCase = ecUpperCase
          DataField = 'AQUA_EMBARCACAO_NOME'
          DataSource = dtsDefault
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          EditMask = ''
        end
        object AQUA_EMBARCACAO_CODPORTO_EMB: TJvDBMaskEdit
          Tag = 1
          Left = 161
          Top = 81
          Width = 138
          Height = 21
          TabStop = False
          DataField = 'AQUA_EMBARCACAO_CODPORTO_EMB'
          DataSource = dtsDefault
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          EditMask = ''
        end
        object AQUA_EMBARCACAO_CODPORTO_DEST: TJvDBMaskEdit
          Tag = 1
          Left = 460
          Top = 81
          Width = 138
          Height = 21
          TabStop = False
          DataField = 'AQUA_EMBARCACAO_CODPORTO_DEST'
          DataSource = dtsDefault
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          EditMask = ''
        end
      end
      object JvPageControl1: TJvPageControl
        AlignWithMargins = True
        Left = 3
        Top = 127
        Width = 885
        Height = 326
        ActivePage = TabSheet8
        Align = alClient
        TabOrder = 1
        object TabSheet8: TTabSheet
          Caption = 'Terminais de Carregamento'
          object Panel41: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 55
            Width = 871
            Height = 201
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object JvDBGrid13: TJvDBGrid
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 865
              Height = 195
              Align = alClient
              DataSource = dtstabMDFE_AQUA_TERMINAL_CARREG
              Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
              ReadOnly = True
              TabOrder = 0
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
                  FieldName = 'ID_TERMINAL'
                  Title.Caption = 'C'#243'digo Terminal Carregamento'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ID_NOME'
                  Title.Caption = 'Nome Terminal Carregamento'
                  Width = 64
                  Visible = True
                end>
            end
          end
          object Panel42: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 262
            Width = 871
            Height = 33
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 2
            object btnAQUAtermcarregEXCLUIR: TJvSpeedButton
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
              OnClick = btnAQUAtermcarregEXCLUIRClick
              ExplicitLeft = 694
            end
            object btnAQUAtermcarregINCLUIR: TJvSpeedButton
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
              OnClick = btnAQUAtermcarregINCLUIRClick
              ExplicitTop = 0
            end
          end
          object Panel43: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 871
            Height = 46
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object Label55: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 865
              Height = 13
              Align = alTop
              Caption = 'C'#243'digo do Terminal de Carregamento'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExplicitWidth = 178
            end
            object Label56: TLabel
              Left = 188
              Top = 3
              Width = 172
              Height = 13
              Caption = 'Nome do Terminal de Carregamento'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object AQUA_LOC_CARR_TERMINAL: TJvMaskEdit
              Left = 111
              Top = 22
              Width = 71
              Height = 21
              CharCase = ecUpperCase
              MaxLength = 8
              TabOrder = 0
              Text = ''
            end
            object AQUA_LOC_CARR_TEMINAL_NOME: TJvMaskEdit
              Left = 188
              Top = 22
              Width = 680
              Height = 21
              MaxLength = 60
              TabOrder = 1
              Text = ''
            end
          end
        end
        object TabSheet9: TTabSheet
          Caption = 'Terminais de Descarregamento'
          ImageIndex = 1
          object Panel44: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 871
            Height = 46
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object Label53: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 865
              Height = 13
              Align = alTop
              Caption = 'C'#243'digo do Terminal de Descarregamento'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExplicitWidth = 194
            end
            object Label54: TLabel
              Left = 207
              Top = 3
              Width = 188
              Height = 13
              Caption = 'Nome do Terminal de Descarregamento'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object AQUA_LOC_DESCARR_TERMINAL: TJvMaskEdit
              Left = 130
              Top = 17
              Width = 71
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 0
              Text = ''
            end
            object AQUA_LOC_DESCARR_TEMINAL_NOME: TJvMaskEdit
              Left = 207
              Top = 17
              Width = 661
              Height = 21
              MaxLength = 14
              TabOrder = 1
              Text = ''
            end
          end
          object Panel45: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 262
            Width = 871
            Height = 33
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 2
            object btnAQUAtermdescarregEXCLUIR: TJvSpeedButton
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
              OnClick = btnAQUAtermdescarregEXCLUIRClick
              ExplicitTop = 0
            end
            object btnAQUAtermdescarregINCLUIR: TJvSpeedButton
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
              OnClick = btnAQUAtermdescarregINCLUIRClick
              ExplicitTop = 0
            end
          end
          object Panel46: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 55
            Width = 871
            Height = 201
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object JvDBGrid14: TJvDBGrid
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 865
              Height = 195
              Align = alClient
              DataSource = dtstabMDFE_AQUA_TERMINAL_DESCARREG
              Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
              ReadOnly = True
              TabOrder = 0
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
                  FieldName = 'ID_TERMINAL'
                  Title.Caption = 'C'#243'digo Terminal Descarregamento'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ID_NOME'
                  Title.Caption = 'Nome Terminal Descarregamento'
                  Width = 64
                  Visible = True
                end>
            end
          end
        end
        object TabSheet10: TTabSheet
          Caption = 'Embarca'#231#245'es do Comboio'
          ImageIndex = 2
          object Panel47: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 871
            Height = 46
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object Label57: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 865
              Height = 13
              Align = alTop
              Caption = 'C'#243'digo da embarca'#231#227'o do Comboio(M'#225'ximo 30)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExplicitWidth = 227
            end
            object Label62: TLabel
              Left = 235
              Top = 3
              Width = 104
              Height = 13
              Caption = 'Identificador da Balsa'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object AQUA_COMBOIO_CODIGO: TJvMaskEdit
              Left = 56
              Top = 17
              Width = 173
              Height = 21
              CharCase = ecUpperCase
              MaxLength = 10
              TabOrder = 0
              Text = ''
            end
            object AQUA_COMBOIO_BALSA: TJvMaskEdit
              Left = 235
              Top = 17
              Width = 256
              Height = 21
              MaxLength = 60
              TabOrder = 1
              Text = ''
            end
          end
          object Panel48: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 262
            Width = 871
            Height = 33
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 2
            object btnAQUAcomboioEXCLUIR: TJvSpeedButton
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
              OnClick = btnAQUAcomboioEXCLUIRClick
              ExplicitLeft = 694
            end
            object btnAQUAcomboioINCLUIR: TJvSpeedButton
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
              OnClick = btnAQUAcomboioINCLUIRClick
              ExplicitTop = 0
            end
          end
          object Panel49: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 55
            Width = 871
            Height = 201
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object JvDBGrid15: TJvDBGrid
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 865
              Height = 195
              Align = alClient
              DataSource = dtstabMDFE_AQUA_COMBOIO
              Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
              ReadOnly = True
              TabOrder = 0
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
                  FieldName = 'ID_COMBOIO'
                  Title.Caption = 'C'#243'digo da Embarca'#231#227'o do Comboio'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'BALSA'
                  Title.Caption = 'Balsa'
                  Width = 300
                  Visible = True
                end>
            end
          end
        end
        object TabSheet11: TTabSheet
          Caption = 'Unidades de Carga Vazias'
          ImageIndex = 3
          object Panel50: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 871
            Height = 46
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object Label58: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 865
              Height = 13
              Align = alTop
              Caption = 'Identifica'#231#227'o da Unidade de Carga'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExplicitWidth = 166
            end
            object Label59: TLabel
              Left = 177
              Top = 4
              Width = 124
              Height = 13
              Caption = 'Tipo da Unidade de Carga'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object AQUA_UNIDCARGA_IDENT: TJvMaskEdit
              Left = 34
              Top = 17
              Width = 137
              Height = 21
              CharCase = ecUpperCase
              MaxLength = 20
              TabOrder = 0
              Text = ''
            end
            object AQUA_UNIDCARGA_TIPO: TJvComboBox
              Left = 190
              Top = 17
              Width = 111
              Height = 21
              TabOrder = 1
              Text = 'Container'
              Items.Strings = (
                'Container'
                'UL'
                'Pallet'
                'Outros')
              ItemIndex = 0
            end
          end
          object Panel51: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 262
            Width = 871
            Height = 33
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 2
            object btnAQUAunidcargaEXCLUIR: TJvSpeedButton
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
              OnClick = btnAQUAunidcargaEXCLUIRClick
              ExplicitLeft = 694
            end
            object btnAQUAunidcargaINCLUIR: TJvSpeedButton
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
              OnClick = btnAQUAunidcargaINCLUIRClick
              ExplicitTop = 0
            end
          end
          object Panel52: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 55
            Width = 871
            Height = 201
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object JvDBGrid16: TJvDBGrid
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 865
              Height = 195
              Align = alClient
              DataSource = dtstabMDFE_AQUA_UNID_CARGA
              Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
              ReadOnly = True
              TabOrder = 0
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
                  Title.Caption = 'Identifica'#231#227'o da Unidade de Carga'
                  Width = 200
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ID_UNIDADE'
                  Title.Caption = 'Tipo da Unidade de Carga'
                  Width = 200
                  Visible = True
                end>
            end
          end
        end
        object TabSheet12: TTabSheet
          Caption = 'Unidades de Transporte Vazias'
          ImageIndex = 4
          object Panel53: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 871
            Height = 46
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object Label60: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 865
              Height = 13
              Align = alTop
              Caption = 'Identifica'#231#227'o da Unidade de Carga'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExplicitWidth = 166
            end
            object Label61: TLabel
              Left = 177
              Top = 4
              Width = 124
              Height = 13
              Caption = 'Tipo da Unidade de Carga'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object AQUA_UNID_TRANS_IDENT: TJvMaskEdit
              Left = 34
              Top = 17
              Width = 137
              Height = 21
              CharCase = ecUpperCase
              MaxLength = 20
              TabOrder = 0
              Text = ''
            end
            object AQUA_UNIDTRANS_TIPO: TJvComboBox
              Left = 190
              Top = 17
              Width = 111
              Height = 21
              TabOrder = 1
              Text = 'RodoTracao'
              Items.Strings = (
                'RodoTracao'
                'RodoReboque')
            end
          end
          object Panel54: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 262
            Width = 871
            Height = 33
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 2
            object btnAQUAunidtransEXCLUIR: TJvSpeedButton
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
              OnClick = btnAQUAunidtransEXCLUIRClick
              ExplicitLeft = 694
            end
            object btnAQUAunidtransINCLUIR: TJvSpeedButton
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
              OnClick = btnAQUAunidtransINCLUIRClick
              ExplicitTop = 0
            end
          end
          object JvDBGrid17: TJvDBGrid
            AlignWithMargins = True
            Left = 3
            Top = 55
            Width = 871
            Height = 201
            Align = alClient
            DataSource = dtstabMDFE_AQUA_UNID_TRANS
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
                Title.Caption = 'Identifica'#231#227'o da Unidade de Carga'
                Width = 200
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID_UNIDADE'
                Title.Caption = 'Tipo da Unidade de Carga'
                Width = 200
                Visible = True
              end>
          end
        end
      end
    end
    object pageINFdoc: TTabSheet
      Caption = 'Informa'#231#245'es dos Documentos'
      ImageIndex = 5
      object pagINFdoc: TJvPageControl
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 885
        Height = 450
        ActivePage = TabSheet7
        Align = alClient
        TabOrder = 0
        object TabSheet7: TTabSheet
          Caption = 'Munic'#237'pios de Descarregamento'
          object Panel24: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 871
            Height = 40
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object Label23: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 0
              Width = 19
              Height = 13
              Caption = 'UF*'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label25: TLabel
              Left = 84
              Top = 0
              Width = 49
              Height = 13
              Caption = 'Munic'#237'pio*'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label70: TLabel
              Left = 323
              Top = 0
              Width = 19
              Height = 13
              Caption = 'CEP'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object MUNICIPIO_DESCARREGAMENTO: TJvDBLookupCombo
              Left = 84
              Top = 19
              Width = 233
              Height = 21
              LookupField = 'ID_CIDADES_IBGE'
              LookupDisplay = 'DESCRICAO'
              LookupSource = dtsqryCIDADES_MUNICIPIO_DESCARREGAMENTO
              TabOrder = 0
            end
            object edtCEPDestino: TJvDBMaskEdit
              Left = 323
              Top = 19
              Width = 120
              Height = 21
              DataField = 'CEP'
              DataSource = dtstabMDFE_LOCAL_DESCARREGAMENTO
              MaxLength = 9
              TabOrder = 1
              EditMask = '99999-999;0; '
            end
            object JvDBLookupCombo1: TJvDBLookupCombo
              Left = 0
              Top = 19
              Width = 78
              Height = 21
              DataField = 'ID_UF_FINAL'
              DataSource = dtsDefault
              Enabled = False
              LookupField = 'ID_CIDADES_UF'
              LookupDisplay = 'ID_CIDADES_UF'
              LookupSource = dtsqryCIDADES_UF
              TabOrder = 2
            end
          end
          object Panel25: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 49
            Width = 871
            Height = 370
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object JvgGroupBox9: TJvgGroupBox
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 865
              Height = 364
              Align = alClient
              Caption = '(100 no M'#225'ximo)'
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
              object Panel3: TPanel
                AlignWithMargins = True
                Left = 5
                Top = 326
                Width = 855
                Height = 33
                Align = alBottom
                BevelOuter = bvNone
                TabOrder = 1
                object btnLOCALdescarregamentoEXCLUIR: TJvSpeedButton
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
                  OnClick = btnLOCALdescarregamentoEXCLUIRClick
                  ExplicitLeft = 694
                end
                object btnLOCALdescarregamentoINCLUIR: TJvSpeedButton
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
                  OnClick = btnLOCALdescarregamentoINCLUIRClick
                  ExplicitLeft = 578
                end
              end
              object Panel23: TPanel
                AlignWithMargins = True
                Left = 5
                Top = 19
                Width = 855
                Height = 301
                Align = alClient
                BevelOuter = bvNone
                TabOrder = 0
                object JvDBGrid9: TJvDBGrid
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 849
                  Height = 295
                  Align = alClient
                  DataSource = dtstabMDFE_LOCAL_DESCARREGAMENTO
                  Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
                  ReadOnly = True
                  TabOrder = 0
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
                      FieldName = 'ID_CIDADES_UF'
                      Title.Caption = 'UF'
                      Width = 50
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'lookCIDADE'
                      Title.Caption = 'Munic'#237'pio'
                      Width = 350
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'ID_CIDADES_IBGE'
                      Title.Caption = 'C'#243'digo Munic'#237'pio'
                      Visible = True
                    end>
                end
              end
            end
          end
        end
        object tabCTe: TTabSheet
          Caption = 'Conhecimento de Transporte Eletr'#244'nico'
          ImageIndex = 1
          object JvgGroupBox17: TJvgGroupBox
            AlignWithMargins = True
            Left = 3
            Top = 55
            Width = 871
            Height = 364
            Align = alClient
            Caption = 'CT-e (10000 no M'#225'ximo)'
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
            object Panel11: TPanel
              AlignWithMargins = True
              Left = 5
              Top = 327
              Width = 861
              Height = 32
              Align = alBottom
              BevelOuter = bvNone
              TabOrder = 1
              object btnCTEexcluir: TJvSpeedButton
                AlignWithMargins = True
                Left = 235
                Top = 3
                Width = 110
                Height = 26
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
                OnClick = btnCTEexcluirClick
                ExplicitTop = 0
                ExplicitHeight = 27
              end
              object btnCTEincluir: TJvSpeedButton
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 110
                Height = 26
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
                OnClick = btnCTEincluirClick
                ExplicitTop = 0
                ExplicitHeight = 27
              end
              object btnCTEalterar: TJvSpeedButton
                AlignWithMargins = True
                Left = 119
                Top = 3
                Width = 110
                Height = 26
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
                OnClick = btnCTEalterarClick
                ExplicitLeft = 694
                ExplicitHeight = 27
              end
            end
            object Panel26: TPanel
              AlignWithMargins = True
              Left = 5
              Top = 19
              Width = 861
              Height = 302
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 0
              object JvDBGrid10: TJvDBGrid
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 855
                Height = 296
                Align = alClient
                DataSource = dtstabMDFE_CTE
                Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
                ReadOnly = True
                TabOrder = 0
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
                    FieldName = 'ID_CHAVE'
                    Title.Caption = 'Chave de Acesso'
                    Width = 350
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'lookCIDADE'
                    Title.Caption = 'Munic'#237'pio de descarregamento'
                    Width = 350
                    Visible = True
                  end>
              end
            end
          end
          object Panel30: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 871
            Height = 46
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object Label31: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 865
              Height = 13
              Align = alTop
              Caption = 'UF *'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExplicitWidth = 22
            end
            object MUN_DESC_CTE: TJvDBLookupCombo
              Left = 87
              Top = 19
              Width = 233
              Height = 21
              LookupField = 'ID_CIDADES_IBGE'
              LookupDisplay = 'lookCIDADE'
              LookupSource = dtstabMDFE_LOCAL_DESCARREGAMENTO
              TabOrder = 1
            end
            object JvDBLookupCombo2: TJvDBLookupCombo
              Left = 3
              Top = 19
              Width = 78
              Height = 21
              DataField = 'ID_UF_FINAL'
              DataSource = dtsDefault
              Enabled = False
              LookupField = 'ID_CIDADES_UF'
              LookupDisplay = 'ID_CIDADES_UF'
              LookupSource = dtsqryCIDADES_UF
              TabOrder = 0
            end
          end
        end
        object tabNFe: TTabSheet
          Caption = 'Nota Fiscal Eletr'#244'nica'
          ImageIndex = 2
          object JvgGroupBox20: TJvgGroupBox
            AlignWithMargins = True
            Left = 3
            Top = 55
            Width = 871
            Height = 364
            Align = alClient
            Caption = 'NF-e (10000 no M'#225'ximo)'
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
            object Panel37: TPanel
              AlignWithMargins = True
              Left = 5
              Top = 327
              Width = 861
              Height = 32
              Align = alBottom
              BevelOuter = bvNone
              TabOrder = 1
              object JvSpeedButton1: TJvSpeedButton
                AlignWithMargins = True
                Left = 235
                Top = 3
                Width = 110
                Height = 26
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
                OnClick = JvSpeedButton1Click
                ExplicitTop = 0
                ExplicitHeight = 27
              end
              object JvSpeedButton2: TJvSpeedButton
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 110
                Height = 26
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
                OnClick = JvSpeedButton2Click
                ExplicitTop = 0
                ExplicitHeight = 27
              end
              object JvSpeedButton3: TJvSpeedButton
                AlignWithMargins = True
                Left = 119
                Top = 3
                Width = 110
                Height = 26
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
                OnClick = JvSpeedButton3Click
                ExplicitLeft = 694
                ExplicitHeight = 27
              end
            end
            object Panel38: TPanel
              AlignWithMargins = True
              Left = 5
              Top = 19
              Width = 861
              Height = 302
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 0
              object JvDBGrid12: TJvDBGrid
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 855
                Height = 296
                Align = alClient
                DataSource = dtstabMDFE_NFE
                Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
                ReadOnly = True
                TabOrder = 0
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
                    FieldName = 'ID_CHAVE'
                    Title.Caption = 'Chave de Acesso'
                    Width = 350
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'lookCIDADE'
                    Title.Caption = 'Munic'#237'pio de descarregamento'
                    Width = 350
                    Visible = True
                  end>
              end
            end
          end
          object Panel39: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 871
            Height = 46
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object Label45: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 865
              Height = 13
              Align = alTop
              Caption = 'UF *'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExplicitWidth = 22
            end
            object MUN_DESC_NFE: TJvDBLookupCombo
              Left = 87
              Top = 19
              Width = 233
              Height = 21
              LookupField = 'ID_CIDADES_IBGE'
              LookupDisplay = 'lookCIDADE'
              LookupSource = dtstabMDFE_LOCAL_DESCARREGAMENTO
              TabOrder = 1
            end
            object JvDBLookupCombo4: TJvDBLookupCombo
              Left = 3
              Top = 19
              Width = 78
              Height = 21
              DataField = 'ID_UF_FINAL'
              DataSource = dtsDefault
              Enabled = False
              LookupField = 'ID_CIDADES_UF'
              LookupDisplay = 'ID_CIDADES_UF'
              LookupSource = dtsqryCIDADES_UF
              TabOrder = 0
            end
          end
        end
      end
    end
    object tabInformacoesCarga: TTabSheet
      Caption = 'Informa'#231#245'es de Seguro da Carga'
      ImageIndex = 4
      object JvgGroupBox14: TJvgGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 885
        Height = 450
        Align = alClient
        Caption = 'Lista de Seguros da Carga'
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
        object Panel5: TPanel
          AlignWithMargins = True
          Left = 5
          Top = 412
          Width = 875
          Height = 33
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 1
          object btnSegurosExcluir: TJvSpeedButton
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
            OnClick = btnSegurosExcluirClick
            ExplicitTop = 0
          end
          object btnSegurosIncluir: TJvSpeedButton
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
            OnClick = btnSegurosIncluirClick
            ExplicitLeft = 578
          end
          object btnSegurosAlterar: TJvSpeedButton
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
            OnClick = btnSegurosAlterarClick
            ExplicitLeft = 694
          end
        end
        object Panel27: TPanel
          AlignWithMargins = True
          Left = 5
          Top = 19
          Width = 875
          Height = 387
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object JvDBGrid3: TJvDBGrid
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 869
            Height = 381
            Align = alClient
            DataSource = dtstabMDFE_SEGUROS
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
            ReadOnly = True
            TabOrder = 0
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
                FieldName = 'NOME'
                Title.Caption = 'Nome da Seguradora'
                Width = 400
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CNPJ'
                Width = 170
                Visible = True
              end>
          end
        end
      end
    end
    object tabTotalizadores: TTabSheet
      Caption = 'Totalizadores'
      ImageIndex = 3
      object Panel31: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 885
        Height = 104
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object JvgGroupBox13: TJvgGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 879
          Height = 101
          Align = alTop
          Caption = 'Totais de Fornecimentos'
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
          object Label11: TLabel
            AlignWithMargins = True
            Left = 5
            Top = 19
            Width = 869
            Height = 13
            Align = alTop
            Caption = 'Valor total da mercadoria transportada*'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
            ExplicitWidth = 192
          end
          object Label10: TLabel
            AlignWithMargins = True
            Left = 5
            Top = 46
            Width = 395
            Height = 13
            Caption = 
              'C'#243'digo da unidade de medida do Peso Bruto da Carga / Marcadoria ' +
              'Transportada*'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label13: TLabel
            AlignWithMargins = True
            Left = 5
            Top = 73
            Width = 263
            Height = 13
            Caption = 'Peso Bruto Total da Carga / Mercadoria Transportada*'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object TOTF_VLR_TOT_MERCADORIA: TJvDBCalcEdit
            Left = 410
            Top = 16
            Width = 121
            Height = 21
            DisplayFormat = ',#0.00'
            ShowButton = False
            TabOrder = 0
            DecimalPlacesAlwaysShown = False
            DataField = 'TOTF_VLR_TOT_MERCADORIA'
            DataSource = dtsDefault
          end
          object TOTF_PES_BRUTO: TJvDBCalcEdit
            Left = 410
            Top = 70
            Width = 121
            Height = 21
            DisplayFormat = ',#0.00'
            ShowButton = False
            TabOrder = 2
            DecimalPlacesAlwaysShown = False
            DataField = 'TOTF_PES_BRUTO'
            DataSource = dtsDefault
          end
          object TOTF_COD_UNIDADE: TJvDBComboBox
            Left = 410
            Top = 43
            Width = 121
            Height = 21
            DataField = 'TOTF_COD_UNIDADE'
            DataSource = dtsDefault
            Items.Strings = (
              'KG '
              'TON')
            TabOrder = 1
            Values.Strings = (
              '1'
              '2')
            ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
            ListSettings.OutfilteredValueFont.Color = clRed
            ListSettings.OutfilteredValueFont.Height = -11
            ListSettings.OutfilteredValueFont.Name = 'Tahoma'
            ListSettings.OutfilteredValueFont.Style = []
          end
        end
      end
      object Panel33: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 113
        Width = 885
        Height = 340
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object JvgGroupBox12: TJvgGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 254
          Height = 334
          Align = alLeft
          Caption = 'Lacres'
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
          object Panel4: TPanel
            AlignWithMargins = True
            Left = 5
            Top = 296
            Width = 244
            Height = 33
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 2
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
          object Panel28: TPanel
            AlignWithMargins = True
            Left = 5
            Top = 62
            Width = 244
            Height = 228
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object JvDBGrid2: TJvDBGrid
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 238
              Height = 222
              Align = alClient
              DataSource = dtstabMDFE_LACRE
              Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
              ReadOnly = True
              TabOrder = 0
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
                  FieldName = 'LACRE'
                  Title.Caption = 'Lacre'
                  Width = 250
                  Visible = True
                end>
            end
          end
          object Panel29: TPanel
            AlignWithMargins = True
            Left = 5
            Top = 19
            Width = 244
            Height = 37
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object Label9: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 238
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
            object N_LACRE: TJvMaskEdit
              Left = 3
              Top = 16
              Width = 206
              Height = 21
              TabOrder = 0
              Text = ''
            end
          end
        end
        object JvgGroupBox19: TJvgGroupBox
          AlignWithMargins = True
          Left = 263
          Top = 3
          Width = 619
          Height = 334
          Align = alClient
          Caption = 'Autorizado para Download do XML do MDF-e'
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
          object Panel34: TPanel
            AlignWithMargins = True
            Left = 5
            Top = 296
            Width = 609
            Height = 33
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 2
            object btnDOCDOWNexcluir: TJvSpeedButton
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
              OnClick = btnDOCDOWNexcluirClick
              ExplicitLeft = 694
            end
            object btnDOCDOWNincluir: TJvSpeedButton
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
              OnClick = btnDOCDOWNincluirClick
              ExplicitLeft = 578
            end
          end
          object Panel35: TPanel
            AlignWithMargins = True
            Left = 5
            Top = 62
            Width = 609
            Height = 228
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object JvDBGrid11: TJvDBGrid
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 603
              Height = 222
              Align = alClient
              DataSource = dtstabMDFE_AUT_DOWNLOAD
              Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
              ReadOnly = True
              TabOrder = 0
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
                  FieldName = 'N_DOC'
                  Title.Caption = 'N'#250'mero do CPF ou CNPJ'
                  Width = 250
                  Visible = True
                end>
            end
          end
          object Panel36: TPanel
            AlignWithMargins = True
            Left = 5
            Top = 19
            Width = 609
            Height = 37
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object Label42: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 603
              Height = 13
              Align = alTop
              Caption = 'CPF ou CNPJ'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExplicitWidth = 62
            end
            object N_DOC_DOWNLOAD: TJvMaskEdit
              Left = 3
              Top = 16
              Width = 206
              Height = 21
              TabOrder = 0
              Text = ''
            end
          end
        end
      end
    end
    object tabInformacoesAdicionais: TTabSheet
      Caption = 'Informa'#231#245'es Adicionais'
      ImageIndex = 2
      object JvgGroupBox10: TJvgGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 247
        Width = 885
        Height = 206
        Align = alBottom
        Caption = 'Informa'#231#245'es adocionais de interesse do contribuinte'
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
        object INF_ADIC_CONTRIBUINTE: TDBMemo
          AlignWithMargins = True
          Left = 5
          Top = 19
          Width = 875
          Height = 182
          Align = alClient
          DataField = 'INF_ADIC_CONTRIBUINTE'
          DataSource = dtsDefault
          TabOrder = 0
        end
      end
      object JvgGroupBox11: TJvgGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 885
        Height = 238
        Align = alClient
        Caption = 'Informa'#231#245'es adicionais de interesse do fisco'
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
        object INF_ADIC_FISCO: TDBMemo
          AlignWithMargins = True
          Left = 5
          Top = 19
          Width = 875
          Height = 214
          Align = alClient
          DataField = 'INF_ADIC_FISCO'
          DataSource = dtsDefault
          TabOrder = 0
        end
      end
    end
  end
  inherited statDefault: TJvStatusBar
    Top = 529
    Width = 905
    ExplicitTop = 529
    ExplicitWidth = 905
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 645
    Top = 24
  end
  inherited dtsDefault: TDataSource
    DataSet = dtmMDFE.tabMDFE
    Left = 46
    Top = 464
  end
  object dtsqryCIDADES_UF: TDataSource
    DataSet = dtmMDFE.qryCIDADES_UF
    Left = 304
    Top = 97
  end
  object dtsqryCIDADES_LOCAL_CARREGAMENTO: TDataSource
    DataSet = dtmMDFE.qryCIDADES_LOCAL_CARREGAMENTO
    Left = 528
    Top = 73
  end
  object dtstabCIDADES_LOCAL_CARREGAMENTO: TDataSource
    DataSet = dtmMDFE.tabMDFE_LOCAL_CARREGAMENTO
    OnDataChange = dtsDefaultDataChange
    Left = 782
    Top = 216
  end
  object dtstabMDFE_UF_PERCURSO: TDataSource
    DataSet = dtmMDFE.tabMDFE_UF_PERCURSO
    OnDataChange = dtstabMDFE_UF_PERCURSODataChange
    Left = 150
    Top = 464
  end
  object dtstabMDFE_LACRE: TDataSource
    DataSet = dtmMDFE.tabMDFE_LACRE
    OnDataChange = dtstabMDFE_LACREDataChange
    Left = 414
    Top = 472
  end
  object dtstabMDFE_SEGUROS: TDataSource
    DataSet = dtmMDFE.tabMDFE_SEGUROS
    OnDataChange = dtstabMDFE_SEGUROSDataChange
    Left = 294
    Top = 472
  end
  object dtstabMDFE_CONDUTORES: TDataSource
    DataSet = dtmMDFE.tabMDFE_CONDUTORES
    OnDataChange = dtstabMDFE_CONDUTORESDataChange
    Left = 534
    Top = 480
  end
  object dtstabMDFE_REBOQUE: TDataSource
    DataSet = dtmMDFE.tabMDFE_REBOQUE
    OnDataChange = dtstabMDFE_REBOQUEDataChange
    Left = 662
    Top = 480
  end
  object dtstabMDFE_CIOT: TDataSource
    DataSet = dtmMDFE.tabMDFE_CIOT
    OnDataChange = dtstabMDFE_CIOTDataChange
    Left = 758
    Top = 480
  end
  object dtstabMDFE_CONTRATANTES: TDataSource
    DataSet = dtmMDFE.tabMDFE_CONTRATANTES
    OnDataChange = dtstabMDFE_CONTRATANTESDataChange
    Left = 838
    Top = 488
  end
  object dtstabMDFE_VALEPEDAGIO: TDataSource
    DataSet = dtmMDFE.tabMDFE_VALEPEDAGIO
    OnDataChange = dtstabMDFE_VALEPEDAGIODataChange
    Left = 454
    Top = 400
  end
  object dtsqryCIDADES_MUNICIPIO_DESCARREGAMENTO: TDataSource
    DataSet = dtmMDFE.qryCIDADES_MUNICIPIO_DESCARREGAMENTO
    Left = 536
    Top = 281
  end
  object dtstabMDFE_LOCAL_DESCARREGAMENTO: TDataSource
    DataSet = dtmMDFE.tabMDFE_LOCAL_DESCARREGAMENTO
    OnDataChange = dtstabMDFE_LOCAL_DESCARREGAMENTODataChange
    Left = 382
    Top = 224
  end
  object dtstabMDFE_CTE: TDataSource
    DataSet = dtmMDFE.tabMDFE_CTE
    OnDataChange = dtstabMDFE_CTEDataChange
    Left = 70
    Top = 112
  end
  object dtstabMDFE_AUT_DOWNLOAD: TDataSource
    DataSet = dtmMDFE.tabMDFE_AUT_DOWNLOAD
    OnDataChange = dtstabMDFE_AUT_DOWNLOADDataChange
    Left = 374
    Top = 168
  end
  object dtstabMDFE_NFE: TDataSource
    DataSet = dtmMDFE.tabMDFE_NFE
    OnDataChange = dtstabMDFE_CTEDataChange
    Left = 606
    Top = 184
  end
  object JvLookupAutoComplete1: TJvLookupAutoComplete
    Active = False
    Left = 56
    Top = 176
  end
  object dtstabMDFE_AQUA_TERMINAL_CARREG: TDataSource
    DataSet = dtmMDFE.tabMDFE_AQUA_TERMINAL_CARREG
    OnDataChange = dtstabMDFE_AQUA_TERMINAL_CARREGDataChange
    Left = 62
    Top = 402
  end
  object dtstabMDFE_AQUA_TERMINAL_DESCARREG: TDataSource
    DataSet = dtmMDFE.tabMDFE_AQUA_TERMINAL_DESCARREG
    OnDataChange = dtstabMDFE_AQUA_TERMINAL_DESCARREGDataChange
    Left = 289
    Top = 401
  end
  object dtstabMDFE_AQUA_COMBOIO: TDataSource
    DataSet = dtmMDFE.tabMDFE_AQUA_COMBOIO
    OnDataChange = dtstabMDFE_AQUA_COMBOIODataChange
    Left = 457
    Top = 314
  end
  object dtstabMDFE_AQUA_UNID_CARGA: TDataSource
    DataSet = dtmMDFE.tabMDFE_AQUA_UNID_CARGA
    OnDataChange = dtstabMDFE_AQUA_UNID_CARGADataChange
    Left = 681
    Top = 294
  end
  object dtstabMDFE_AQUA_UNID_TRANS: TDataSource
    DataSet = dtmMDFE.tabMDFE_AQUA_UNID_TRANS
    OnDataChange = dtstabMDFE_AQUA_UNID_TRANSDataChange
    Left = 761
    Top = 361
  end
end
