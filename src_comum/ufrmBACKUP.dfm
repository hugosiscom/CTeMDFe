inherited frmBACKUP: TfrmBACKUP
  BorderStyle = bsSingle
  Caption = 'C'#243'pia de Seguran'#231'a (Backup)'
  ClientHeight = 195
  ClientWidth = 380
  ExplicitWidth = 394
  ExplicitHeight = 231
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 19
    Top = 24
    Width = 239
    Height = 13
    Caption = 'C'#243'pia de Seguran'#231'a do Banco de Dados ( Backup)'
  end
  object Label2: TLabel [1]
    Left = 144
    Top = 76
    Width = 167
    Height = 13
    Caption = 'Data do '#250'ltimo processo de Backup'
  end
  object JvImage1: TJvImage [2]
    Left = 72
    Top = 72
    Width = 49
    Height = 41
  end
  inherited pnlComandos: TPanel
    Left = 3
    Top = 159
    Width = 374
    Align = alBottom
    ExplicitLeft = 3
    ExplicitTop = 156
    ExplicitWidth = 372
    inherited btnCancelar: TJvSpeedButton
      Left = 261
      ExplicitLeft = 461
    end
    inherited btnConfirmar: TJvSpeedButton
      Left = 145
      ExplicitLeft = 345
    end
  end
  object BACKUP_DATA: TJvDBDateTimePicker [4]
    Left = 144
    Top = 92
    Width = 113
    Height = 21
    Date = 43210.000000000000000000
    Time = 0.586813217589224200
    ShowCheckbox = True
    TabOrder = 1
    DropDownDate = 43210.000000000000000000
    DataField = 'BACKUP_DATA'
    DataSource = dtstabCONTROLE
    ReadOnly = True
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 344
    Top = 51
  end
  object tabCONTROLE: TFDQuery
    Connection = dtmDefault.cnx_BD
    SQL.Strings = (
      'select * from controle')
    Left = 280
    object tabCONTROLEID_CONTROLE: TIntegerField
      FieldName = 'ID_CONTROLE'
      Origin = 'ID_CONTROLE'
      Required = True
    end
    object tabCONTROLEBACKUP_DATA: TSQLTimeStampField
      FieldName = 'BACKUP_DATA'
      Origin = 'BACKUP_DATA'
    end
  end
  object dtstabCONTROLE: TDataSource
    DataSet = tabCONTROLE
    Left = 280
    Top = 56
  end
  object FDIBBackup1: TFDIBBackup
    DriverLink = dtmDefault.FLink
    Left = 27
    Top = 46
  end
  object OpenDialog: TOpenDialog
    DefaultExt = 'IBK'
    Filter = 'Arquivos de backup (*.IBK)|*.IBK'
    Options = [ofHideReadOnly, ofNoChangeDir, ofEnableSizing]
    Title = 'Criar novo arquivo de backup'
    Left = 46
    Top = 122
  end
end
