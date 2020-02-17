inherited FuelCharacteristicsAccountingSystemReferenceForm: TFuelCharacteristicsAccountingSystemReferenceForm
  Caption = 'FuelCharacteristicsAccountingSystemReferenceForm'
  ExplicitTop = 8
  PixelsPerInch = 96
  TextHeight = 13
  inherited DataOperationToolBar: TToolBar
    inherited ChooseRecordsToolButton: TToolButton
      ExplicitWidth = 72
      ExplicitHeight = 38
    end
    inherited ChooseRecordsSeparator: TToolButton
      Left = 0
      Wrap = True
      Visible = False
      ExplicitLeft = 0
      ExplicitHeight = 52
    end
    inherited AddDataToolButton: TToolButton
      Left = 0
      Top = 52
      ExplicitLeft = 0
      ExplicitTop = 52
      ExplicitWidth = 72
      ExplicitHeight = 38
    end
    inherited CopySelectedDataRecordsToolButton: TToolButton
      Left = 74
      Top = 52
      ExplicitLeft = 74
      ExplicitTop = 52
      ExplicitWidth = 72
      ExplicitHeight = 38
    end
    inherited ChangeDataToolButton: TToolButton
      Left = 148
      Top = 52
      ExplicitLeft = 148
      ExplicitTop = 52
      ExplicitWidth = 72
      ExplicitHeight = 38
    end
    inherited DeleteDataToolButton: TToolButton
      Left = 222
      Top = 52
      ExplicitLeft = 222
      ExplicitTop = 52
    end
    inherited RefreshDataToolButton: TToolButton
      Left = 296
      Top = 52
      ExplicitLeft = 296
      ExplicitTop = 52
    end
    inherited ReserveToolButton1: TToolButton
      Left = 370
      Top = 52
      ExplicitLeft = 370
      ExplicitTop = 52
    end
    inherited ReserveToolButton2: TToolButton
      Left = 444
      Top = 52
      ExplicitLeft = 444
      ExplicitTop = 52
    end
    inherited RefreshSeparator: TToolButton
      Left = 518
      Top = 52
      Wrap = False
      Visible = False
      ExplicitLeft = 518
      ExplicitTop = 52
      ExplicitHeight = 44
    end
    inherited SelectFilterDataToolButton: TToolButton
      Left = 526
      ExplicitLeft = 526
    end
    inherited SelectFilteredRecordsSeparator: TToolButton
      Left = 600
      Enabled = False
      ExplicitLeft = 600
    end
    inherited PrintDataToolButton: TToolButton
      Left = 608
      Enabled = False
      ExplicitLeft = 608
    end
    inherited ExportDataToolButton: TToolButton
      Left = 682
      ExplicitLeft = 682
      ExplicitWidth = 72
    end
    inherited ExportDataSeparator: TToolButton
      Left = 771
      Enabled = False
      Visible = False
      ExplicitLeft = 771
    end
    inherited ExitToolButton: TToolButton
      Left = 779
      ExplicitLeft = 779
    end
  end
  inherited DataRecordMovingToolBar: TToolBar
    Visible = False
  end
  inherited ClientAreaPanel: TPanel
    inherited DataRecordGrid: TcxGrid
      LookAndFeel.SkinName = 'UserSkin'
      inherited DataRecordGridTableView: TcxGridDBTableView
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.HeaderAutoHeight = True
      end
    end
  end
  inherited DataOperationActionList: TActionList
    inherited actExit: TAction
      Visible = False
    end
    inherited actExportDataToXML: TAction
      Visible = False
    end
    inherited actExportDataToHTML: TAction
      Visible = False
    end
    inherited actChooseRecords: TAction
      Visible = False
    end
  end
end
