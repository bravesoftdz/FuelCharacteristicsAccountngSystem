unit FuelCharacteristicsCalculationCardFormViewModelMapper;

interface

uses

  AbstractCardFormViewModelMapper,
  CardFormViewModel,
  ReferenceFormRecordViewModel,
  FuelCharacteristicsAccountingReferenceRecordViewModel,
  FuelCharacteristicsCalculationCardFormViewModel,
  SysUtils,
  Classes;

type

  TFuelCharacteristicsCalculationCardFormViewModelMapper =
    class (TAbstractCardFormViewModelMapper)

      protected

        function GetCardFormViewModelClass: TCardFormViewModelClass; override;

        procedure FillCardFormViewModelFrom(
          CardFormViewModel: TCardFormViewModel;
          ReferenceFormRecordViewModel: TReferenceFormRecordViewModel
        ); override;
      
    end;


implementation

{ TFuelCharacteristicsCalculationCardFormViewModelMapper }

procedure TFuelCharacteristicsCalculationCardFormViewModelMapper.FillCardFormViewModelFrom(
  CardFormViewModel: TCardFormViewModel;
  ReferenceFormRecordViewModel: TReferenceFormRecordViewModel);
var FuelCharacteristicsAccountingReferenceRecordViewModel:
      TFuelCharacteristicsAccountingReferenceRecordViewModel;
begin

  inherited;

  FuelCharacteristicsAccountingReferenceRecordViewModel :=
    ReferenceFormRecordViewModel as
    TFuelCharacteristicsAccountingReferenceRecordViewModel;

  with CardFormViewModel as TFuelCharacteristicsCalculationCardFormViewModel
  do begin

    FuelTemperature.Value := FuelCharacteristicsAccountingReferenceRecordViewModel.Temperature;
    FuelDensity.Value := FuelCharacteristicsAccountingReferenceRecordViewModel.Density;
    FuelRiseLevel.Value := FuelCharacteristicsAccountingReferenceRecordViewModel.FuelRiseLevel;
    FuelVolume.Value := FuelCharacteristicsAccountingReferenceRecordViewModel.FuelVolume;
    FuelKind.Value := FuelCharacteristicsAccountingReferenceRecordViewModel.FuelKind;
    ReservoirNumber.Value := FuelCharacteristicsAccountingReferenceRecordViewModel.ReservoirNumber;
    WhoPerformedCalculation.Value := FuelCharacteristicsAccountingReferenceRecordViewModel.WhoPerformedCalculation;
    CalculationPerformingDateTime.Value := FuelCharacteristicsAccountingReferenceRecordViewModel.CalculationPerformingDateTime;

  end;
  
end;

function TFuelCharacteristicsCalculationCardFormViewModelMapper.GetCardFormViewModelClass: TCardFormViewModelClass;
begin

  Result := TFuelCharacteristicsCalculationCardFormViewModel;
  
end;

end.
