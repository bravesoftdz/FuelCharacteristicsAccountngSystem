inherited EmployeeAdministrationCardForm: TEmployeeAdministrationCardForm
  Caption = 'EmployeeAdministrationCardForm'
  ClientHeight = 398
  ClientWidth = 394
  Constraints.MaxHeight = 437
  Constraints.MinHeight = 437
  Constraints.MinWidth = 410
  ExplicitWidth = 410
  ExplicitHeight = 437
  PixelsPerInch = 96
  TextHeight = 13
  inherited btnOK: TcxButton
    Left = 224
    Top = 365
  end
  inherited btnCancel: TcxButton
    Left = 311
    Top = 365
    LookAndFeel.SkinName = 'UserSkin'
  end
  inherited EmployeeCardFrame: TEmployeeCardFrame
    Width = 394
    Height = 209
    ExplicitHeight = 209
    inherited EmployeePersonnelInfoGroupBox: TGroupBox
      Width = 378
      Height = 198
      ExplicitWidth = 358
      ExplicitHeight = 198
      inherited BirthDateTimePicker: TDateTimePicker
        Width = 263
        ExplicitWidth = 243
      end
      inherited NameEdit: TRegExprValidateEdit
        Width = 263
        ExplicitWidth = 243
      end
      inherited PatronymicEdit: TRegExprValidateEdit
        Width = 263
        ExplicitWidth = 243
      end
      inherited SpecialityComboBox: TComboBox
        Width = 263
        ExplicitWidth = 263
      end
      inherited SurnameEdit: TRegExprValidateEdit
        Width = 263
        ExplicitWidth = 243
      end
    end
  end
  inline EmployeeLogOnInfoCardFrame: TEmployeeLogOnInfoCardFrame
    Left = 0
    Top = 208
    Width = 399
    Height = 148
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 3
    ExplicitTop = 208
    inherited LogOnInfoGroupBox: TGroupBox
      Width = 378
      ExplicitWidth = 367
      inherited LoginEdit: TRegExprValidateEdit
        Width = 263
      end
      inherited PasswordEdit: TRegExprValidateEdit
        Width = 263
      end
      inherited RoleComboBox: TComboBox
        Width = 263
        OnChange = EmployeeLogOnInfoCardFrameRoleComboBoxChange
        ExplicitWidth = 252
      end
    end
  end
end