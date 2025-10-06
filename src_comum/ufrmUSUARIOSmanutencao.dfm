inherited frmUSUARIOSmanutencao: TfrmUSUARIOSmanutencao
  Caption = 'frmUSUARIOSmanutencao'
  ClientWidth = 897
  ExplicitWidth = 911
  TextHeight = 13
  inherited boxPesquisa: TJvGroupBox
    inherited pnlNavigator: TPanel
      inherited navDefault: TJvDBNavigator
        Hints.Strings = ()
      end
    end
  end
  inherited dbGrid: TJvDBGrid
    DataSource = dtsDefault
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_USUARIO'
        Title.Caption = 'Id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USUARIO'
        Title.Caption = 'Nome'
        Visible = True
      end>
  end
  inherited dtsDefault: TDataSource
    Left = 140
  end
  inherited qryDefault: TFDQuery
    SQL.Strings = (
      'SELECT '
      '  * '
      'FROM '
      ' USUARIO'
      'WHERE '
      '  1=1')
    object qryDefaultID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDefaultUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 50
    end
  end
  inherited dtstabDefault: TDataSource
    DataSet = dtmDefault.tabUSUARIO
  end
end
