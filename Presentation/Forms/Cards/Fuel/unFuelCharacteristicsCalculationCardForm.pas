unit unFuelCharacteristicsCalculationCardForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DialogFormUnit, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, dxSkinsCore, dxSkinsDefaultPainters, StdCtrls, cxButtons,
  ValidateEditUnit, RegExprValidateEditUnit, ComCtrls,
  FuelCharacteristicsCalculationCardFormViewModel, Disposable, unCardForm,
  CardFormViewModel;

type

  TOnFuelCharacteristicsCalculationRequestedEventHandler =
    procedure (
      Sender: TObject;
      var ViewModel: TFuelCharacteristicsCalculationCardFormViewModel
    ) of object;

  TFuelCharacteristicsCalculationCardForm = class(TCardForm)
    TemperatureLabel: TLabel;
    TemperatureEdit: TRegExprValidateEdit;
    DensityLabel: TLabel;
    DensityEdit: TRegExprValidateEdit;
    FuelRiseLevelLabel: TLabel;
    FuelRiseLevelEdit: TRegExprValidateEdit;
    WhoPerformedCalculationLabel: TLabel;
    FuelInfoGroupBox: TGroupBox;
    FuelVolumeLabel: TLabel;
    FuelVolumeEdit: TRegExprValidateEdit;
    FuelCharacteristicsCalculationButton: TcxButton;
    CalculationPerformingInfoGroupBox: TGroupBox;
    WhoPerformedCalculationEdit: TRegExprValidateEdit;
    CalculationPerformingDateTimeLabel: TLabel;
    CalculationPerformingDateTimePicker: TDateTimePicker;
    ChooseCalculationPerformerButton: TcxButton;
    FuelKindLabel: TLabel;
    FuelKindEdit: TRegExprValidateEdit;
    ReservoirNumberEdit: TRegExprValidateEdit;
    ReservoirNumberLabel: TLabel;
    procedure FuelCharacteristicsCalculationButtonClick(Sender: TObject);
  private

    FOnFuelCharacteristicsCalculationRequestedEventHandler:
      TOnFuelCharacteristicsCalculationRequestedEventHandler;

    procedure RaiseOnFuelCharacteristicsCalculationRequestedEventHandler(
      var ViewModel: TFuelCharacteristicsCalculationCardFormViewModel
    );

  protected

    procedure Initialize; override;
    
    procedure FillControlsByViewModel(
      ViewModel: TCardFormViewModel
    ); override;

    procedure FillViewModelByControls(ViewModel: TCardFormViewModel); override;

  protected

    function IsInputDataValid: Boolean; override;

  public

    destructor Destroy; override;

    property OnFuelCharacteristicsCalculationRequestedEventHandler:
      TOnFuelCharacteristicsCalculationRequestedEventHandler
    read FOnFuelCharacteristicsCalculationRequestedEventHandler
    write FOnFuelCharacteristicsCalculationRequestedEventHandler;

  end;

var
  FuelCharacteristicsCalculationCardForm: TFuelCharacteristicsCalculationCardForm;

implementation

uses

  AuxWindowsFunctionsUnit;

{$R *.dfm}

destructor TFuelCharacteristicsCalculationCardForm.Destroy;
begin

  inherited;

end;

procedure TFuelCharacteristicsCalculationCardForm.FillControlsByViewModel(
  ViewModel: TCardFormViewModel);
begin

  with ViewModel as TFuelCharacteristicsCalculationCardFormViewModel do begin

    if not FuelTemperature.Visible then
      TemperatureEdit.Visible := False

    else begin

      TemperatureEdit.Text := VarToStr(FuelTemperature.Value);
      TemperatureEdit.ReadOnly := FuelTemperature.ReadOnly;

    end;

    if not FuelDensity.Visible then
      DensityEdit.Visible := False

    else begin

      DensityEdit.Text := VarToStr(FuelDensity.Value);
      DensityEdit.ReadOnly := FuelDensity.ReadOnly;

    end;

    if not FuelRiseLevel.Visible then
      FuelRiseLevelEdit.Visible := False

    else begin

      FuelRiseLevelEdit.Text := VarToStr(FuelRiseLevel.Value);
      FuelRiseLevelEdit.ReadOnly := FuelRiseLevel.ReadOnly;

    end;

    if not FuelVolume.Visible then
      FuelVolumeEdit.Visible := False

    else begin

      FuelVolumeEdit.Text := VarToStr(FuelVolume.Value);
      FuelVolumeEdit.ReadOnly := FuelVolume.ReadOnly;

    end;

    if not WhoPerformedCalculation.Visible then
      WhoPerformedCalculationEdit.Visible := False

    else begin

      WhoPerformedCalculationEdit.Text := WhoPerformedCalculation.Value;
      WhoPerformedCalculationEdit.ReadOnly := WhoPerformedCalculation.ReadOnly;

    end;

    if not CalculationPerformingDateTime.Visible then
      CalculationPerformingDateTimePicker.Visible := False

    else begin

      CalculationPerformingDateTimePicker.DateTime :=
        CalculationPerformingDateTime.Value;

      CalculationPerformingDateTimePicker.Enabled :=
        not CalculationPerformingDateTime.ReadOnly;

    end;

    if not FuelKind.Visible then
      FuelKindEdit.Visible := False

    else begin

      FuelKindEdit.Text := FuelKind.Value;
      FuelKindEdit.ReadOnly := FuelKind.ReadOnly;

    end;

    if not ReservoirNumber.Visible then
      ReservoirNumberEdit.Visible := False

    else begin

      ReservoirNumberEdit.Text := VarToStr(ReservoirNumber.Value);
      ReservoirNumberEdit.ReadOnly := ReservoirNumber.ReadOnly;
      
    end;

  end;

end;

procedure TFuelCharacteristicsCalculationCardForm.FillViewModelByControls(
  ViewModel: TCardFormViewModel
);
begin

  if not Assigned(ViewModel) then Exit;

  with ViewModel as TFuelCharacteristicsCalculationCardFormViewModel do begin
    
    if FuelTemperature.Visible then
      FuelTemperature.Value := StrToFloat(TemperatureEdit.Text);

    if FuelDensity.Visible then
      FuelDensity.Value := StrToFloat(DensityEdit.Text);

    if FuelRiseLevel.Visible then
      FuelRiseLevel.Value := StrToFloat(FuelRiseLevelEdit.Text);

    if FuelVolume.Visible then
      FuelVolume.Value := StrToFloat(FuelVolumeEdit.Text);

    if FuelKind.Visible then
      FuelKind.Value := FuelKindEdit.Text;

    if ReservoirNumber.Visible then
      ReservoirNumber.Value := StrToInt(ReservoirNumberEdit.Text);

    if WhoPerformedCalculation.Visible then
      WhoPerformedCalculation.Value := WhoPerformedCalculationEdit.Text;

    if CalculationPerformingDateTime.Visible then
      CalculationPerformingDateTime.Value := CalculationPerformingDateTimePicker.DateTime;
    
  end;

end;

procedure TFuelCharacteristicsCalculationCardForm.FuelCharacteristicsCalculationButtonClick(
  Sender: TObject);
var CurrentCardViewModelSnapshot: TFuelCharacteristicsCalculationCardFormViewModel;
begin

  CurrentCardViewModelSnapshot := ViewModel.Clone as TFuelCharacteristicsCalculationCardFormViewModel;

  try

    RaiseOnFuelCharacteristicsCalculationRequestedEventHandler(CurrentCardViewModelSnapshot);

    FillControlsByViewModel(CurrentCardViewModelSnapshot);

  finally

    FreeAndNil(CurrentCardViewModelSnapshot);
    
  end;

end;

procedure TFuelCharacteristicsCalculationCardForm.
  RaiseOnFuelCharacteristicsCalculationRequestedEventHandler(
    var ViewModel: TFuelCharacteristicsCalculationCardFormViewModel
  );
begin

  if Assigned(FOnFuelCharacteristicsCalculationRequestedEventHandler)
  then begin

    FOnFuelCharacteristicsCalculationRequestedEventHandler(
      Self, ViewModel
    );

  end;

end;

procedure TFuelCharacteristicsCalculationCardForm.Initialize;
const

  FloatNumberRegExprPattern = '^\d+(\%s\d+)?$';
  NegativeFloatNumberRegExprPattern = '^-?\d+(\%s\d+)?$';

var FloatNumberRegExpr, NegativeFloatNumberRegExpr: String;
begin

  inherited;

  FloatNumberRegExpr := Format(FloatNumberRegExprPattern, [DecimalSeparator]);
  NegativeFloatNumberRegExpr := Format(NegativeFloatNumberRegExprPattern, [DecimalSeparator]);

  TemperatureEdit.RegularExpression := NegativeFloatNumberRegExpr;
  DensityEdit.RegularExpression := FloatNumberRegExpr;
  FuelRiseLevelEdit.RegularExpression := FloatNumberRegExpr;
  FuelVolumeEdit.RegularExpression := FloatNumberRegExpr;
  
end;

function TFuelCharacteristicsCalculationCardForm.IsInputDataValid: Boolean;
var IsTemperatureValid, IsDensityValid, IsFuelRiseLevelValid,
    IsFuelVolumeValid, IsWhoPerformedCalculationValid,
    IsFuelKindValid, IsReservoirNumberValid: Boolean;
begin

  IsTemperatureValid := TemperatureEdit.IsValid;
  IsDensityValid := DensityEdit.IsValid;
  IsFuelRiseLevelValid := FuelRiseLevelEdit.IsValid;
  IsFuelVolumeValid := FuelVolumeEdit.IsValid;
  IsFuelKindValid := FuelKindEdit.IsValid;
  IsReservoirNumberValid := ReservoirNumberEdit.IsValid;
  
  IsWhoPerformedCalculationValid := WhoPerformedCalculationEdit.IsValid;

  Result :=
    IsTemperatureValid and
    IsDensityValid and
    IsFuelRiseLevelValid and
    IsFuelVolumeValid and
    IsWhoPerformedCalculationValid and
    IsFuelKindValid and
    IsReservoirNumberValid;

end;

end.