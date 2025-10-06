inherited frmVEICULOSmanutencao: TfrmVEICULOSmanutencao
  Caption = 'frmVEICULOSmanutencao'
  ClientWidth = 729
  ExplicitWidth = 745
  TextHeight = 13
  inherited boxPesquisa: TJvGroupBox
    Left = 31
    ExplicitLeft = 31
    inherited pnlNavigator: TPanel
      inherited labNavigator: TJvLabel
        Height = 14
      end
      inherited navDefault: TJvDBNavigator
        Hints.Strings = ()
      end
    end
  end
  inherited pnlComandos: TPanel
    Left = 7
    ExplicitLeft = 7
  end
  inherited dbGrid: TJvDBGrid
    Left = 26
    DataSource = dtsDefault
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_VEICULO'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PLACA'
        Title.Caption = 'Placa'
        Width = 100
        Visible = True
      end>
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 201
  end
  inherited dtsDefault: TDataSource
    Left = 117
  end
  inherited qryDefault: TFDQuery
    SQL.Strings = (
      '  SELECT '
      '  * '
      'FROM '
      '  VEICULO'
      'WHERE '
      '  1=1'
      '  AND ID_EMPRESA = :ID_EMPRESA')
    Left = 113
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
    object qryDefaultID_VEICULO: TIntegerField
      FieldName = 'ID_VEICULO'
      Origin = 'ID_VEICULO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDefaultRNTRC: TStringField
      FieldName = 'RNTRC'
      Origin = 'RNTRC'
      Size = 10
    end
    object qryDefaultCOD_AGENDA_PORT: TStringField
      FieldName = 'COD_AGENDA_PORT'
      Origin = 'COD_AGENDA_PORT'
    end
    object qryDefaultCODIGO_INTERNO: TStringField
      FieldName = 'CODIGO_INTERNO'
      Origin = 'CODIGO_INTERNO'
      Size = 10
    end
    object qryDefaultTIPO_CARROCERIA: TIntegerField
      FieldName = 'TIPO_CARROCERIA'
      Origin = 'TIPO_CARROCERIA'
    end
    object qryDefaultPLACA: TStringField
      FieldName = 'PLACA'
      Origin = 'PLACA'
      Size = 10
    end
    object qryDefaultUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      FixedChar = True
      Size = 2
    end
    object qryDefaultRENAVAN: TStringField
      FieldName = 'RENAVAN'
      Origin = 'RENAVAN'
      Size = 15
    end
    object qryDefaultTIPO_RODADO: TIntegerField
      FieldName = 'TIPO_RODADO'
      Origin = 'TIPO_RODADO'
    end
    object qryDefaultCAPACIDADE_KG: TFMTBCDField
      FieldName = 'CAPACIDADE_KG'
      Origin = 'CAPACIDADE_KG'
      Precision = 18
      Size = 2
    end
    object qryDefaultCAPACIDADE_M3: TFMTBCDField
      FieldName = 'CAPACIDADE_M3'
      Origin = 'CAPACIDADE_M3'
      Precision = 18
      Size = 2
    end
    object qryDefaultDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 150
    end
    object qryDefaultTIPO_VEICULO: TIntegerField
      FieldName = 'TIPO_VEICULO'
      Origin = 'TIPO_VEICULO'
    end
  end
  inherited dtstabDefault: TDataSource
    DataSet = dtmDefault.tabVEICULOS
    Left = 521
  end
end
