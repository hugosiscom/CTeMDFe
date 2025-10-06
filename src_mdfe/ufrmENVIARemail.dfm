inherited frmENVIARemail: TfrmENVIARemail
  Caption = 'E-Mail'
  ClientHeight = 281
  ClientWidth = 430
  ExplicitWidth = 446
  ExplicitHeight = 320
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 18
    Top = 137
    Width = 185
    Height = 13
    Caption = 'Escolha como deseja enviar o DAMDFE'
  end
  object Image1: TImage [1]
    Left = 53
    Top = 159
    Width = 46
    Height = 41
    Center = True
  end
  object Image2: TImage [2]
    Left = 248
    Top = 159
    Width = 46
    Height = 41
    Center = True
  end
  object Label11: TLabel [3]
    AlignWithMargins = True
    Left = 18
    Top = 19
    Width = 103
    Height = 13
    Caption = 'E-Mail do destinat'#225'rio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  inherited pnlComandos: TPanel
    Left = 3
    Top = 245
    Width = 424
    Align = alBottom
    ExplicitLeft = 3
    ExplicitTop = 245
    ExplicitWidth = 424
    inherited btnCancelar: TJvSpeedButton
      Left = 311
      Caption = 'Fechar'
      ExplicitLeft = 311
    end
    inherited btnConfirmar: TJvSpeedButton
      Left = 195
      Caption = 'Enviar'
      ExplicitLeft = 195
    end
  end
  object chkPDF: TCheckBox [5]
    Left = 18
    Top = 69
    Width = 97
    Height = 17
    Caption = 'Anexar PDF'
    TabOrder = 2
  end
  object chkCONFIRMACAO: TCheckBox [6]
    Left = 18
    Top = 92
    Width = 215
    Height = 17
    Caption = 'Requisitar confirma'#231#227'o de leitura'
    TabOrder = 3
  end
  object rbdRETRATO: TRadioButton [7]
    Left = 105
    Top = 176
    Width = 113
    Height = 17
    Caption = 'Retrato'
    Checked = True
    TabOrder = 4
    TabStop = True
  end
  object rdbPAISAGEM: TRadioButton [8]
    Left = 300
    Top = 176
    Width = 113
    Height = 17
    Caption = 'Paisagem'
    TabOrder = 5
  end
  object edtEMAILdestinatario: TJvMaskEdit [9]
    Left = 18
    Top = 32
    Width = 395
    Height = 21
    TabOrder = 1
    Text = 'edtEMAILdestinatario'
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 472
    Top = 243
  end
end
