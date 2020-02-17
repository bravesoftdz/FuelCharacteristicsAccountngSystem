unit FuelCharacteristicsAccountingReferenceRecordViewModel;

interface

uses

  ReferenceFormRecordViewModel,
  SysUtils,
  Classes;

type

  TFuelCharacteristicsAccountingReferenceRecordViewModel = class (TReferenceFormRecordViewModel)

    public

      Temperature: Single;
      Density: Single;
      FuelRiseLevel: Single;
      FuelVolume: Single;
      FuelKind: String;
      ReservoirNumber: Integer;
      WhoPerformedCalculation: String;
      CalculationPerformingDateTime: TDateTime;

  end;

implementation

uses

  Variants;

end.
