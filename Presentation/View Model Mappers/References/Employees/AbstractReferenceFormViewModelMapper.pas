unit AbstractAbstractReferenceFormViewModelMapper;

interface

uses

  Disposable,
  ReferenceFormViewModel,
  ReferenceFormDataSetHolder,
  EntitySetHolder,
  SysUtils,
  Classes;

type

  TAbstractReferenceFormViewModelMapper = class (TInterfacedObject, IDisposable)

    protected

      function GetReferenceFormViewModelClass: TReferenceFormViewModelClass; virtual; abstract;

      procedure FillReferenceFormViewModelFrom(
        ReferenceFormViewModel: TReferenceFormViewModel;
        EntitySetHolder: TEntitySetHolder
      ); virtual;

    protected

      function GetReferenceFormDataSetHolderClass: TReferenceFormDataSetHolderClass; virtual; abstract;
      function GetReferenceFormDataSetFieldDefsClass: TReferenceFormDataSetFieldDefsClass; virtual; abstract;
      
      function MapReferenceFormDataSetHolderFrom(
        EntitySetHolder: TEntitySetHolder
      ): TReferenceFormDataSetHolder; virtual;

      procedure FillReferenceFormDataSetFieldDefsFrom(
        ReferenceFormDataSetFieldDefs: TReferenceFormDataSetFieldDefs;
        EntitySetFieldDefs: TEntitySetFieldDefs
      ); virtual;
      
    public

      function MapReferenceFormViewModelFrom(
        EntitySetHolder: TEntitySetHolder
      ): TReferenceFormViewModel; virtual;
      
  end;
  
implementation

{ TAbstractReferenceFormViewModelMapper }

procedure TAbstractReferenceFormViewModelMapper.FillReferenceFormViewModelFrom(
  ReferenceFormViewModel: TReferenceFormViewModel;
  EntitySetHolder: TEntitySetHolder);
begin

  ReferenceFormViewModel.ViewRecordsAllowed := EntitySetHolder.ViewAllowed;
  ReferenceFormViewModel.AddingRecordAllowed := EntitySetHolder.AddingAllowed;
  ReferenceFormViewModel.EditingRecordAllowed := EntitySetHolder.ModificationAllowed;
  ReferenceFormViewModel.RemovingRecordAllowed := EntitySetHolder.RemovingAllowed;

  ReferenceFormViewModel.DataSetHolder :=
    MapReferenceFormDataSetHolderFrom(EntitySetHolder);
    
end;

function TAbstractReferenceFormViewModelMapper.MapReferenceFormDataSetHolderFrom(
  EntitySetHolder: TEntitySetHolder): TReferenceFormDataSetHolder;
begin

  Result := GetReferenceFormDataSetHolderClass.Create;

  try

    Result.DataSet := EntitySetHolder.DataSet;

    FillReferenceFormDataSetFieldDefsFrom(
      Result.FieldDefs, EntitySetHolder.FieldDefs
    );

  except

    on e: Exception do begin

      FreeAndNil(Result);

      raise;
      
    end;

  end;

end;

function TAbstractReferenceFormViewModelMapper.MapReferenceFormViewModelFrom(
  EntitySetHolder: TEntitySetHolder): TReferenceFormViewModel;
begin

  Result := GetReferenceFormViewModelClass.Create;

  try

    FillReferenceFormViewModelFrom(Result, EntitySetHolder);
    
  except

    on E: Exception do begin

      FreeAndNil(E);

      raise;
      
    end;

  end;

end;

end.
