unit EmployeeCardFormViewModelMapper;

interface

uses

  CardFormViewModel,
  AbstractCardFormViewModelMapper,
  ReferenceFormRecordViewModel,
  EmployeeCardFormViewModel,
  EmployeesReferenceRecordViewModel,
  SysUtils,
  Classes;

type

  TEmployeeCardFormViewModelMapper = class (TAbstractCardFormViewModelMapper)

    protected

      function GetCardFormViewModelClass: TCardFormViewModelClass; override;

      procedure FillCardFormViewModelFrom(
        CardFormViewModel: TCardFormViewModel;
        ReferenceFormRecordViewModel: TReferenceFormRecordViewModel
      ); override;

      procedure FillEmployeeSpecialities(Specialities: TStrings);
      
    public

      function CreateEmptyCardFormViewModel: TCardFormViewModel; override;

  end;

implementation

{ TEmployeeCardFormViewModelMapper }

function TEmployeeCardFormViewModelMapper.CreateEmptyCardFormViewModel: TCardFormViewModel;
begin

  Result := inherited CreateEmptyCardFormViewModel;

  with Result as TEmployeeCardFormViewModel do begin

    FillEmployeeSpecialities(Specialities);

  end;

end;

procedure TEmployeeCardFormViewModelMapper.FillCardFormViewModelFrom(
  CardFormViewModel: TCardFormViewModel;
  ReferenceFormRecordViewModel: TReferenceFormRecordViewModel);
var EmployeeCardFormViewModel: TEmployeeCardFormViewModel;
begin

  inherited;

  EmployeeCardFormViewModel := CardFormViewModel as TEmployeeCardFormViewModel;

  with ReferenceFormRecordViewModel as TEmployeesReferenceRecordViewModel do begin

    EmployeeCardFormViewModel.Name.Value := Name;
    EmployeeCardFormViewModel.Surname.Value := Surname;
    EmployeeCardFormViewModel.Patronymic.Value := Patronymic;
    EmployeeCardFormViewModel.BirthDate.Value := BirthDate;
    EmployeeCardFormViewModel.Speciality.Value := Speciality;

  end;

  FillEmployeeSpecialities(EmployeeCardFormViewModel.Specialities);

end;

procedure TEmployeeCardFormViewModelMapper.FillEmployeeSpecialities(
  Specialities: TStrings);
begin

  // refactor: from dto in the future
  
  Specialities.Add('����������');
  Specialities.Add('���������');
  Specialities.Add('��������� ������');
  
end;

function TEmployeeCardFormViewModelMapper.GetCardFormViewModelClass: TCardFormViewModelClass;
begin

  Result := TEmployeeCardFormViewModel;
  
end;

end.