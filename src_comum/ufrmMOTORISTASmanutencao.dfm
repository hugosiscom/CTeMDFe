inherited frmMOTORISTASmanutencao: TfrmMOTORISTASmanutencao
  Caption = 'frmMOTORISTASmanutencao'
  TextHeight = 13
  inherited boxPesquisa: TJvGroupBox
    inherited pnlNavigator: TPanel
      inherited labNavigator: TJvLabel
        Height = 14
      end
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
        FieldName = 'CPF'
        Width = 184
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Visible = True
      end>
  end
  inherited qryDefault: TFDQuery
    SQL.Strings = (
      'SELECT '
      '  * '
      'FROM '
      '  MOTORISTA'
      'WHERE '
      '  1=1'
      '  AND ID_EMPRESA = :ID_EMPRESA')
    Left = 152
    Top = 185
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryDefaultID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDefaultID_MOTORISTA: TIntegerField
      FieldName = 'ID_MOTORISTA'
      Origin = 'ID_MOTORISTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDefaultNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object qryDefaultCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Size = 11
    end
  end
  inherited dtstabDefault: TDataSource
    DataSet = dtmDefault.tabMOTORISTAS
  end
end
