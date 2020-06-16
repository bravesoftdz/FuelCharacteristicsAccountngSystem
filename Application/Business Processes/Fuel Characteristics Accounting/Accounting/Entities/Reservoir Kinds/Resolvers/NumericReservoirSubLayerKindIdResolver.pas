unit NumericReservoirSubLayerKindIdResolver;

interface

uses

  ReservoirSubLayerKindIdResolver,
  ReservoirSubLayerKind,
  SysUtils,
  Classes;

type

  TNumericReservoirSubLayerKindIdResolver =
    class (TInterfacedObject, IReservoirSubLayerKindIdResolver)

      public

        function ResolveReservoirSubLayerKindIdFrom(
          ReservoirSubLayerKind: TReservoirSubLayerKind
        ): Variant;

    end;
  

implementation

{ TNumericReservoirSubLayerKindIdResolver }

function TNumericReservoirSubLayerKindIdResolver.
  ResolveReservoirSubLayerKindIdFrom(
    ReservoirSubLayerKind: TReservoirSubLayerKind
  ): Variant;
begin

  if ReservoirSubLayerKind is TReservoirBottomWater then
    Result := 1

  else if ReservoirSubLayerKind is TReservoirIce then
    Result := 2

  else begin

    raise TReservoirSubLayerKindIdResolverException.Create(
      '����������� ������. �� ������� ' +
      '���������� ��� ������������� ������� ' +
      '��� ��������� ��� ��������������'
    );
    
  end;
    
end;

end.
