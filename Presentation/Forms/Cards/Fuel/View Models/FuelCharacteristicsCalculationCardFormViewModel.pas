unit FuelCharacteristicsCalculationCardFormViewModel;

interface

uses

  CardFormViewModel,
  SysUtils,
  Classes;

type

  TFuelCharacteristicsCalculationCardFormViewModel = class (TCardFormViewModel)

    private

      FFuelTemperature: TCardFormViewModelProperty;
      FFuelDensity: TCardFormViewModelProperty;
      FFuelRiseLevel: TCardFormViewModelProperty;
      FFuelVolume: TCardFormViewModelProperty;
      FFuelKind: TCardFormViewModelProperty;
      FReservoirNumber: TCardFormViewModelProperty;

      FWhoPerformedCalculation: TCardFormViewModelProperty;
      FCalculationPerformingDateTime: TCardFormViewModelProperty;

    protected

      function IsPropertyModified(ViewModelProperty: TCardFormViewModelProperty): Boolean; override;
      
    public

      destructor Destroy; override;
      constructor Create; override;

      property FuelTemperature: TCardFormViewModelProperty
      read FFuelTemperature;

      property FuelDensity: TCardFormViewModelProperty
      read FFuelDensity;

      property FuelRiseLevel: TCardFormViewModelProperty
      read FFuelRiseLevel;

      property FuelVolume: TCardFormViewModelProperty
      read FFuelVolume;

      property FuelKind: TCardFormViewModelProperty
      read FFuelKind;
      
      property ReservoirNumber: TCardFormViewModelProperty
      read FReservoirNumber;

      property WhoPerformedCalculation: TCardFormViewModelProperty
      read FWhoPerformedCalculation;

      property CalculationPerformingDateTime: TCardFormViewModelProperty
      read FCalculationPerformingDateTime;

  end;

implementation

uses

  Variants;

{ TFuelCharacteristicsCalculationCardFormViewModel }

constructor TFuelCharacteristicsCalculationCardFormViewModel.Create;
begin

  inherited;

  FFuelTemperature := AddProperty('FuelTemperature');
  FFuelDensity := AddProperty('FuelDensity');
  FFuelRiseLevel := AddProperty('FuelRiseLevel');
  FFuelVolume := AddProperty('FuelVolume');
  FFuelKind := AddProperty('FuelKind');
  FReservoirNumber := AddProperty('ReservoirNumber');

  FWhoPerformedCalculation := AddProperty('WhoPerformedCalculation');
  FCalculationPerformingDateTime := AddProperty('CalculationPerformingDateTime');

end;

destructor TFuelCharacteristicsCalculationCardFormViewModel.Destroy;
begin

  inherited;

end;

function TFuelCharacteristicsCalculationCardFormViewModel.IsPropertyModified(
  ViewModelProperty: TCardFormViewModelProperty): Boolean;
begin

  if ViewModelProperty = Id then
    Result := False

  else
    Result := inherited IsPropertyModified(ViewModelProperty);

end;

end.
