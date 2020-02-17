inherited FuelCharacteristicsCalculationCardForm: TFuelCharacteristicsCalculationCardForm
  ClientHeight = 374
  ClientWidth = 438
  Constraints.MaxHeight = 413
  Constraints.MinHeight = 413
  Constraints.MinWidth = 454
  Position = poDesktopCenter
  ExplicitWidth = 454
  ExplicitHeight = 413
  PixelsPerInch = 96
  TextHeight = 13
  inherited btnOK: TcxButton
    Left = 268
    Top = 341
    LookAndFeel.Kind = lfStandard
    LookAndFeel.SkinName = 'UserSkin'
    ExplicitLeft = 268
    ExplicitTop = 341
  end
  inherited btnCancel: TcxButton
    Left = 355
    Top = 341
    LookAndFeel.Kind = lfFlat
    LookAndFeel.SkinName = ''
    ExplicitLeft = 355
    ExplicitTop = 341
  end
  object FuelInfoGroupBox: TGroupBox
    Left = 14
    Top = 8
    Width = 416
    Height = 225
    Anchors = [akLeft, akTop, akRight]
    Caption = #1061#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1080' '#1090#1086#1087#1083#1080#1074#1072
    TabOrder = 2
    DesignSize = (
      416
      225)
    object DensityLabel: TLabel
      Left = 34
      Top = 47
      Width = 96
      Height = 13
      Caption = #1055#1083#1086#1090#1085#1086#1089#1090#1100' ('#1082#1075'/'#1084'3):'
    end
    object FuelRiseLevelLabel: TLabel
      Left = 22
      Top = 74
      Width = 108
      Height = 13
      Caption = #1059#1088#1086#1074#1077#1085#1100' '#1074#1079#1083#1080#1074#1072' ('#1084#1084'):'
    end
    object TemperatureLabel: TLabel
      Left = 37
      Top = 22
      Width = 93
      Height = 13
      Caption = #1058#1077#1084#1087#1077#1088#1072#1090#1091#1088#1072' ('#176#1057'):'
    end
    object FuelVolumeLabel: TLabel
      Left = 31
      Top = 103
      Width = 99
      Height = 13
      Caption = #1054#1073#1098#1105#1084' '#1090#1086#1087#1083#1080#1074#1072' ('#1083'):'
    end
    object FuelKindLabel: TLabel
      Left = 63
      Top = 130
      Width = 67
      Height = 13
      Caption = #1058#1080#1087' '#1090#1086#1087#1083#1080#1074#1072':'
    end
    object ReservoirNumberLabel: TLabel
      Left = 33
      Top = 157
      Width = 97
      Height = 13
      Caption = #1053#1086#1084#1077#1088' '#1088#1077#1079#1077#1088#1074#1091#1072#1088#1072':'
    end
    object DensityEdit: TRegExprValidateEdit
      Left = 136
      Top = 46
      Width = 264
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      InvalidHint = #1053#1077#1082#1086#1088#1088#1077#1082#1090#1085#1086#1077' '#1079#1085#1072#1095#1077#1085#1080#1077' '#1087#1083#1086#1090#1085#1086#1089#1090#1080
      InvalidColor = 10520575
      RegularExpression = '^\d+(\.\d+)?$'
    end
    object FuelRiseLevelEdit: TRegExprValidateEdit
      Left = 136
      Top = 73
      Width = 264
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 1
      InvalidHint = #1053#1077#1082#1086#1088#1088#1077#1082#1090#1085#1086#1077' '#1079#1085#1072#1095#1077#1085#1080#1077' '#1091#1088#1086#1074#1085#1103' '#1074#1079#1083#1080#1074#1072
      InvalidColor = 10520575
      RegularExpression = '^\d+(\.\d+)?$'
    end
    object TemperatureEdit: TRegExprValidateEdit
      Left = 136
      Top = 19
      Width = 264
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 2
      InvalidHint = #1053#1077#1082#1086#1088#1088#1077#1082#1090#1085#1086#1077' '#1079#1085#1072#1095#1077#1085#1080#1077' '#1090#1077#1084#1087#1077#1088#1072#1090#1091#1088#1099
      InvalidColor = 10520575
      RegularExpression = '^-?\d+(\.\d+)?$'
    end
    object FuelVolumeEdit: TRegExprValidateEdit
      Left = 136
      Top = 100
      Width = 264
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 3
      InvalidHint = #1053#1077#1082#1086#1088#1088#1077#1082#1090#1085#1086#1077' '#1079#1085#1072#1095#1077#1085#1080#1077' '#1086#1073#1098#1105#1084#1072' '#1090#1086#1087#1083#1080#1074#1072
      InvalidColor = 10520575
      RegularExpression = '^\d+(\.\d+)?$'
    end
    object FuelCharacteristicsCalculationButton: TcxButton
      Left = 325
      Top = 185
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1056#1072#1089#1095#1080#1090#1072#1090#1100
      TabOrder = 4
      OnClick = FuelCharacteristicsCalculationButtonClick
      LookAndFeel.Kind = lfStandard
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'UserSkin'
    end
    object FuelKindEdit: TRegExprValidateEdit
      Left = 136
      Top = 127
      Width = 264
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 5
      InvalidHint = #1053#1077#1082#1086#1088#1088#1077#1082#1090#1085#1086#1077' '#1079#1085#1072#1095#1077#1085#1080#1077' '#1090#1080#1087#1072' '#1090#1086#1087#1083#1080#1074#1072
      InvalidColor = 10520575
      RegularExpression = '.+'
    end
    object ReservoirNumberEdit: TRegExprValidateEdit
      Left = 136
      Top = 154
      Width = 264
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 6
      InvalidHint = #1053#1077#1082#1086#1088#1088#1077#1082#1090#1085#1086#1077' '#1079#1085#1072#1095#1077#1085#1080#1077' '#1085#1086#1084#1077#1088#1072' '#1088#1077#1079#1077#1088#1074#1091#1072#1088#1072
      InvalidColor = 10520575
      RegularExpression = '\d+'
    end
  end
  object CalculationPerformingInfoGroupBox: TGroupBox
    Left = 14
    Top = 239
    Width = 416
    Height = 90
    Anchors = [akLeft, akTop, akRight]
    Caption = #1044#1072#1085#1085#1099#1077' '#1086' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1080' '#1088#1072#1089#1095#1105#1090#1072
    TabOrder = 3
    DesignSize = (
      416
      90)
    object WhoPerformedCalculationLabel: TLabel
      Left = 18
      Top = 28
      Width = 112
      Height = 13
      Caption = #1042#1099#1087#1086#1083#1085#1080#1074#1096#1080#1081' '#1088#1072#1089#1095#1105#1090':'
    end
    object CalculationPerformingDateTimeLabel: TLabel
      Left = 14
      Top = 53
      Width = 116
      Height = 13
      Caption = #1044#1072#1090#1072' '#1080' '#1074#1088#1077#1084#1103' '#1088#1072#1089#1095#1105#1090#1072':'
    end
    object WhoPerformedCalculationEdit: TRegExprValidateEdit
      Left = 136
      Top = 24
      Width = 240
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      BevelInner = bvNone
      BevelOuter = bvNone
      TabOrder = 0
      InvalidHint = #1053#1077' '#1091#1082#1072#1079#1072#1085#1099' '#1060#1048#1054
      InvalidColor = 10520575
      RegularExpression = '.+'
    end
    object CalculationPerformingDateTimePicker: TDateTimePicker
      Left = 136
      Top = 51
      Width = 264
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      Date = 0.327171516204543900
      Time = 0.327171516204543900
      TabOrder = 1
    end
    object ChooseCalculationPerformerButton: TcxButton
      Left = 370
      Top = 23
      Width = 30
      Height = 22
      Anchors = [akTop, akRight]
      Caption = '...'
      TabOrder = 2
      LookAndFeel.Kind = lfStandard
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'UserSkin'
    end
  end
end
