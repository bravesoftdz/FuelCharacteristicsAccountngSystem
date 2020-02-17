inherited EmployeesReferenceForm: TEmployeesReferenceForm
  Caption = 'EmployeesReferenceForm'
  PixelsPerInch = 96
  TextHeight = 13
  inherited DataOperationToolBar: TToolBar
    inherited ChooseRecordsSeparator: TToolButton
      ExplicitHeight = 46
    end
    inherited AddDataToolButton: TToolButton
      Top = 46
    end
    inherited CopySelectedDataRecordsToolButton: TToolButton
      Left = 72
      Top = 46
      Enabled = False
    end
    inherited ChangeDataToolButton: TToolButton
      Left = 144
      Top = 46
    end
    inherited DeleteDataToolButton: TToolButton
      Left = 216
      Top = 46
    end
    inherited RefreshDataToolButton: TToolButton
      Left = 288
      Top = 46
    end
    inherited ReserveToolButton1: TToolButton
      Left = 360
      Top = 46
    end
    inherited ReserveToolButton2: TToolButton
      Left = 432
      Top = 46
    end
    inherited SelectFilterDataToolButton: TToolButton [9]
      Left = 504
      Enabled = False
    end
    inherited RefreshSeparator: TToolButton [10]
      Left = 576
      Top = 46
      ExplicitHeight = 38
    end
    inherited PrintDataToolButton: TToolButton [11]
      Left = 584
    end
    inherited SelectFilteredRecordsSeparator: TToolButton [12]
      Left = 656
    end
    inherited ExportDataToolButton: TToolButton
      Left = 664
    end
    inherited ExitToolButton: TToolButton [14]
      Left = 751
    end
    inherited ExportDataSeparator: TToolButton [15]
      Left = 823
    end
  end
  inherited ClientAreaPanel: TPanel
    inherited DataLoadingCanceledPanel: TPanel
      ExplicitTop = 58
    end
    inherited WaitDataLoadingPanel: TPanel
      ExplicitTop = 136
    end
    inherited DataRecordGrid: TcxGrid
      inherited DataRecordGridTableView: TcxGridDBTableView
        object NameColumn: TcxGridDBColumn
          Caption = #1048#1084#1103
        end
        object SurnameColumn: TcxGridDBColumn
          Caption = #1060#1072#1084#1080#1083#1080#1103
        end
        object PatronymicColumn: TcxGridDBColumn
          Caption = #1054#1090#1095#1077#1089#1090#1074#1086
        end
        object BirthDateColumn: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
        end
        object SpecialityColumn: TcxGridDBColumn
          Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
        end
      end
    end
  end
  inherited imgLstDisabled: TPngImageList
    Left = 472
    Top = 56
  end
  inherited imgLstEnabled: TPngImageList
    Left = 440
    Top = 56
  end
  inherited DataOperationActionList: TActionList
    Left = 344
    Top = 56
  end
  inherited DataOperationPopupMenu: TPopupMenu
    Left = 376
    Top = 56
  end
  inherited TargetDataSource: TDataSource
    Left = 408
    Top = 56
  end
  inherited ExportDataPopupMenu: TPopupMenu
    Left = 536
    Top = 56
  end
  inherited ExportDataDialog: TSaveDialog
    Left = 504
    Top = 56
  end
  inherited Localizer: TcxLocalizer
    Left = 568
  end
end