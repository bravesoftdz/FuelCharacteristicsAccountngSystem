inherited EmployeesAdministrationReferenceForm: TEmployeesAdministrationReferenceForm
  Caption = 'EmployeesAdministrationReferenceForm'
  PixelsPerInch = 96
  TextHeight = 13
  inherited DataOperationToolBar: TToolBar
    inherited AddDataToolButton: TToolButton
      ExplicitTop = 46
    end
    inherited CopySelectedDataRecordsToolButton: TToolButton
      ExplicitLeft = 72
      ExplicitTop = 46
    end
    inherited ChangeDataToolButton: TToolButton
      ExplicitLeft = 144
      ExplicitTop = 46
    end
    inherited DeleteDataToolButton: TToolButton
      ExplicitLeft = 216
      ExplicitTop = 46
    end
    inherited RefreshDataToolButton: TToolButton
      ExplicitLeft = 288
      ExplicitTop = 46
    end
    inherited ReserveToolButton1: TToolButton
      ExplicitLeft = 360
      ExplicitTop = 46
    end
    inherited ReserveToolButton2: TToolButton
      ExplicitLeft = 432
      ExplicitTop = 46
    end
    inherited SelectFilterDataToolButton: TToolButton
      ExplicitLeft = 504
    end
    inherited RefreshSeparator: TToolButton
      ExplicitLeft = 576
      ExplicitTop = 46
    end
    inherited PrintDataToolButton: TToolButton
      ExplicitLeft = 584
    end
    inherited SelectFilteredRecordsSeparator: TToolButton
      ExplicitLeft = 656
    end
    inherited ExportDataToolButton: TToolButton
      ExplicitLeft = 664
    end
    inherited ExitToolButton: TToolButton
      ExplicitLeft = 751
    end
    inherited ExportDataSeparator: TToolButton
      ExplicitLeft = 823
    end
  end
  inherited ClientAreaPanel: TPanel
    inherited DataRecordGrid: TcxGrid
      inherited DataRecordGridTableView: TcxGridDBTableView
        object RoleNameColumn: TcxGridDBColumn
          Caption = #1056#1086#1083#1100
        end
        object LoginColumn: TcxGridDBColumn
          Caption = #1051#1086#1075#1080#1085
        end
      end
    end
  end
end
