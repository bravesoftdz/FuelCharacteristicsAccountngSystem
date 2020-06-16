unit ReservoirCalibrationChartElectronicFileRegistry;

interface

uses

  ReservoirCalibrationChart,
  ReservoirCalibrationChartRegistry,
  NGEReservoirCalibrationChart,
  OLEExcelTableData,
  SysUtils,
  Classes;

type

  TReservoirCalibrationChartElectronicFileRegistryException =
    class (TReservoirCalibrationChartRegistryException)

    end;
    
  TReservoirCalibrationChartElectronicFileRegistry =
    class (TAbstractReservoirCalibrationChartRegistry)

      private

        function
          EnsureCalibrationChartLocationFormatValidAndGetFileExtension(
            CalibrationChartLocation: Variant
          ): String;

        procedure EnsureCalibrationChartFormatValid(
          const Format: TReservoirCalibrationChartFormat
        );
        
      private

        function CreateExcelReservoirCalibrationChart(
          const ExcelFilePath: String;
          const Format: TReservoirCalibrationChartFormat
        ): IReservoirCalibrationChart;

      private

        procedure
          RaiseReservoirCalibrationChartElectronicFileFormatNotFoundException(
            const CalibrationChartFileExtension: String
          );

        procedure RaiseReservoirCalibrationChartFormatNotFoundException;

      public

        function GetReservoirCalibrationChart(
          const CalibrationChartLocation: Variant;
          const Format: TReservoirCalibrationChartFormat = cfNGE
        ): IReservoirCalibrationChart; override;

    end;

  
implementation

uses

  Variants,
  TableData;
  
{ TReservoirCalibrationChartElectronicFileRegistry }

function TReservoirCalibrationChartElectronicFileRegistry.
  CreateExcelReservoirCalibrationChart(
    const ExcelFilePath: String;
    const Format: TReservoirCalibrationChartFormat
  ): IReservoirCalibrationChart;
var TableData: ITableData;
begin

  TableData := TOLEExcelTableData.Create(ExcelFilePath);
  
  if Format = cfNGE then
    Result := TNGEReservoirCalibrationChart.Create(TableData)

  else
    RaiseReservoirCalibrationChartFormatNotFoundException;

end;

procedure TReservoirCalibrationChartElectronicFileRegistry.
  EnsureCalibrationChartFormatValid(
    const Format: TReservoirCalibrationChartFormat
  );
begin

  if not (Format in [cfNGE]) then
    RaiseReservoirCalibrationChartFormatNotFoundException;

end;

function TReservoirCalibrationChartElectronicFileRegistry.
  EnsureCalibrationChartLocationFormatValidAndGetFileExtension(
    CalibrationChartLocation: Variant
  ): String;
var CalibrationChartFileExtension: String;
begin

  CalibrationChartFileExtension := ExtractFileExt(CalibrationChartLocation);
  
  if
    not VarIsType(CalibrationChartLocation, varString) or
    (CalibrationChartFileExtension = '')
  then begin

    raise TReservoirCalibrationChartElectronicFileRegistryException.Create(
      '������������ �������������� ������� ' +
      '����� ������������ ������'
    );
    
  end;

  Result := AnsiLowerCase(CalibrationChartFileExtension);

end;

function TReservoirCalibrationChartElectronicFileRegistry.
  GetReservoirCalibrationChart(
    const CalibrationChartLocation: Variant;
    const Format: TReservoirCalibrationChartFormat
  ): IReservoirCalibrationChart;
var CalibrationChartFileExtension: String;
begin

  CalibrationChartFileExtension :=
    EnsureCalibrationChartLocationFormatValidAndGetFileExtension(
      CalibrationChartLocation
    );

  EnsureCalibrationChartFormatValid(Format);

  if
    (CalibrationChartFileExtension = '.xls') or
    (CalibrationChartFileExtension = '.xlsx')
  then begin
  
    Result :=
      CreateExcelReservoirCalibrationChart(
        CalibrationChartLocation,
        Format
      );

  end

  else begin

    RaiseReservoirCalibrationChartElectronicFileFormatNotFoundException(
      CalibrationChartFileExtension
    );

  end;
   
end;

procedure TReservoirCalibrationChartElectronicFileRegistry.
  RaiseReservoirCalibrationChartElectronicFileFormatNotFoundException(
    const CalibrationChartFileExtension: String
  );
begin

  raise TReservoirCalibrationChartElectronicFileRegistryException.CreateFmt(
    '����������� ������. ���������� ' +
    '����� �������������� ������� ' +
    '������� "%s" �� ������',
    [
      CalibrationChartFileExtension
    ]
  );
    
end;

procedure TReservoirCalibrationChartElectronicFileRegistry.
  RaiseReservoirCalibrationChartFormatNotFoundException;
begin

  raise TReservoirCalibrationChartException.Create(
    '����������� ������ �������������� �������'
  );

end;

end.
