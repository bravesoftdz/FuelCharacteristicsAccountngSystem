inherited FuelCharacteristicsAccountingReferenceForm: TFuelCharacteristicsAccountingReferenceForm
  Caption = 'FuelCharacteristicsAccountingReferenceForm'
  ExplicitTop = 8
  PixelsPerInch = 96
  TextHeight = 13
  inherited DataOperationToolBar: TToolBar
    Height = 144
    ButtonHeight = 44
    ButtonWidth = 84
    ExplicitHeight = 144
    inherited ChooseRecordsToolButton: TToolButton
      ExplicitWidth = 84
    end
    inherited ReserveToolButton2: TToolButton [1]
      Left = 84
      ExplicitLeft = 84
      ExplicitWidth = 84
      ExplicitHeight = 44
    end
    inherited RefreshSeparator: TToolButton [2]
      Left = 168
      ExplicitLeft = 168
      ExplicitHeight = 44
    end
    inherited ChooseRecordsSeparator: TToolButton
      Left = 176
      Wrap = False
      ExplicitLeft = 176
      ExplicitHeight = 44
    end
    inherited ExportDataSeparator: TToolButton [4]
      Left = 0
      Top = 0
      Wrap = True
      Visible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitHeight = 52
    end
    inherited SelectFilterDataToolButton: TToolButton [5]
      Top = 52
      ExplicitTop = 52
      ExplicitWidth = 84
      ExplicitHeight = 44
    end
    inherited CopySelectedDataRecordsToolButton: TToolButton
      Left = 84
      Top = 52
      Enabled = False
      ExplicitLeft = 84
      ExplicitTop = 52
      ExplicitWidth = 84
      ExplicitHeight = 44
    end
    inherited ChangeDataToolButton: TToolButton
      Left = 168
      Top = 52
      ExplicitLeft = 168
      ExplicitTop = 52
      ExplicitWidth = 84
      ExplicitHeight = 44
    end
    inherited DeleteDataToolButton: TToolButton
      Left = 252
      Top = 52
      ExplicitLeft = 252
      ExplicitTop = 52
      ExplicitWidth = 84
      ExplicitHeight = 44
    end
    inherited AddDataToolButton: TToolButton [9]
      Left = 336
      Top = 52
      Enabled = False
      Wrap = True
      ExplicitLeft = 336
      ExplicitTop = 52
      ExplicitWidth = 84
      ExplicitHeight = 44
    end
    inherited ReserveToolButton1: TToolButton [10]
      Left = 0
      Top = 96
      ExplicitLeft = 0
      ExplicitTop = 96
      ExplicitWidth = 84
      ExplicitHeight = 44
    end
    inherited RefreshDataToolButton: TToolButton [11]
      Left = 84
      Top = 96
      Enabled = False
      ExplicitLeft = 84
      ExplicitTop = 96
      ExplicitWidth = 84
      ExplicitHeight = 44
    end
    inherited ExitToolButton: TToolButton [12]
      Left = 168
      Top = 96
      ExplicitLeft = 168
      ExplicitTop = 96
      ExplicitWidth = 84
      ExplicitHeight = 44
    end
    inherited ExportDataToolButton: TToolButton [13]
      Left = 252
      Top = 96
      Enabled = False
      ExplicitLeft = 252
      ExplicitTop = 96
      ExplicitWidth = 99
      ExplicitHeight = 44
    end
    inherited PrintDataToolButton: TToolButton [14]
      Left = 351
      Top = 96
      ExplicitLeft = 351
      ExplicitTop = 96
      ExplicitWidth = 84
      ExplicitHeight = 44
    end
    inherited SelectFilteredRecordsSeparator: TToolButton
      Left = 435
      Top = 96
      ExplicitLeft = 435
      ExplicitTop = 96
      ExplicitHeight = 44
    end
  end
  inherited SearchByColumnPanel: TScrollBox
    inherited btnNextFoundOccurrence: TcxButton
      LookAndFeel.Kind = lfStandard
    end
  end
  inherited DataRecordMovingToolBar: TToolBar
    Top = 144
  end
  inherited ClientAreaPanel: TPanel
    Top = 166
    Height = 464
    inherited DataLoadingCanceledPanel: TPanel
      Top = 50
    end
    inherited WaitDataLoadingPanel: TPanel
      Top = 120
    end
    inherited DataRecordGrid: TcxGrid
      Height = 462
      inherited DataRecordGridTableView: TcxGridDBTableView
        DataController.KeyFieldNames = 'id'
        OptionsSelection.InvertSelect = False
        object TemperatureColumn: TcxGridDBColumn
          Caption = #1058#1077#1084#1087#1077#1088#1072#1090#1091#1088#1072' ('#176#1057')'
          DataBinding.FieldName = 'temperature'
          Width = 72
        end
        object DensityColumn: TcxGridDBColumn
          Caption = #1055#1083#1086#1090#1085#1086#1089#1090#1100' ('#1082#1075'/'#1084'3)'
          DataBinding.FieldName = 'density'
          Width = 67
        end
        object FuelRiseLevelColumn: TcxGridDBColumn
          Caption = #1059#1088#1086#1074#1077#1085#1100' '#1074#1079#1083#1080#1074#1072' ('#1084#1084')'
          DataBinding.FieldName = 'fuel_rise_level'
          Width = 92
        end
        object FuelVolumeColumn: TcxGridDBColumn
          Caption = #1054#1073#1098#1105#1084' '#1090#1086#1087#1083#1080#1074#1072' ('#1083')'
          DataBinding.FieldName = 'fuel_volume'
          Width = 100
        end
        object FuelKindColumn: TcxGridDBColumn
          Caption = #1058#1080#1087' '#1090#1086#1087#1083#1080#1074#1072
          DataBinding.FieldName = 'fuel_kind'
          Width = 77
        end
        object ReservoirNumberColumn: TcxGridDBColumn
          Caption = #1053#1086#1084#1077#1088' '#1088#1077#1079#1077#1088#1074#1091#1072#1088#1072
          DataBinding.FieldName = 'reservoir_number'
          Width = 64
        end
        object WhoPerformedCalculationColumn: TcxGridDBColumn
          Caption = #1042#1099#1087#1086#1083#1085#1080#1074#1096#1080#1081' '#1088#1072#1089#1095#1105#1090
          DataBinding.FieldName = 'who_performed_calculation'
          Width = 161
        end
        object CalculationPerformingDateTimeColumn: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1080' '#1074#1088#1077#1084#1103' '#1088#1072#1089#1095#1105#1090#1072
          DataBinding.FieldName = 'calculation_performing_datetime'
          Width = 104
        end
      end
    end
  end
  inherited imgLstDisabled: TPngImageList
    Left = 440
    Top = 120
  end
  inherited imgLstEnabled: TPngImageList
    Left = 344
    Top = 120
  end
  inherited DataOperationActionList: TActionList
    Left = 464
    Top = 56
    inherited actAddData: TAction
      Caption = #1053#1086#1074#1099#1081' '#1088#1072#1089#1095#1105#1090
      Hint = #1042#1099#1087#1086#1083#1085#1080#1090#1100' '#1085#1086#1074#1099#1081' '#1088#1072#1089#1095#1105#1090' '#1093#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082' '#1090#1086#1087#1083#1080#1074#1072
    end
    inherited actRefreshData: TAction
      Hint = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1087#1086#1089#1083#1077#1076#1085#1080#1077' '#1088#1072#1089#1095#1105#1090#1099
    end
    inherited actExit: TAction
      Visible = False
    end
    inherited actPrevDataRecord: TAction
      Visible = False
    end
    inherited actFirstDataRecord: TAction
      Visible = False
    end
    inherited actLastDataRecord: TAction
      Visible = False
    end
    inherited actNextDataRecord: TAction
      Visible = False
    end
    inherited actExportDataToXML: TAction
      Visible = False
    end
    inherited actExportDataToHTML: TAction
      Visible = False
    end
  end
  inherited DataOperationPopupMenu: TPopupMenu
    Left = 600
    Top = 56
  end
  inherited TargetDataSource: TDataSource
    Left = 352
    Top = 56
  end
  inherited ExportDataPopupMenu: TPopupMenu
    Left = 656
    Top = 120
  end
  inherited ExportDataDialog: TSaveDialog
    Left = 544
    Top = 120
  end
  inherited Localizer: TcxLocalizer
    Left = 704
  end
end
