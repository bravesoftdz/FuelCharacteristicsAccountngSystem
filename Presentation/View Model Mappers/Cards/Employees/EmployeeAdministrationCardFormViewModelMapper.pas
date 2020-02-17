unit EmployeeAdministrationCardFormViewModelMapper;

interface

uses

  EmployeeCardFormViewModelMapper,
  CardFormViewModel,
  ReferenceFormRecordViewModel,
  SysUtils,
  Classes;

type

  TEmployeeAdministrationCardFormViewModelMapper =
    class (TEmployeeCardFormViewModelMapper)

      protected

        function GetCardFormViewModelClass: TCardFormViewModelClass; override;

        procedure FillCardFormViewModelFrom(
          CardFormViewModel: TCardFormViewModel;
          ReferenceFormRecordViewModel: TReferenceFormRecordViewModel
        ); override;

        procedure FillEmployeeRoleNames(RoleNames: TStrings);

      public

        function CreateEmptyCardFormViewModel: TCardFormViewModel; override;
      
    end;

implementation

uses

  EmployeeAdministrationCardFormViewModel,
  EmployeesAdministrationReferenceRecordViewModel;
  
{ TEmployeeAdministrationCardFormViewModelMapper }

function TEmployeeAdministrationCardFormViewModelMapper.CreateEmptyCardFormViewModel: TCardFormViewModel;
begin

  Result := inherited CreateEmptyCardFormViewModel;

  with Result as TEmployeeAdministrationCardFormViewModel do begin

    FillEmployeeRoleNames(RoleNames);

  end;
  
end;

procedure TEmployeeAdministrationCardFormViewModelMapper.FillCardFormViewModelFrom(
  CardFormViewModel: TCardFormViewModel;
  ReferenceFormRecordViewModel: TReferenceFormRecordViewModel);
var EmployeeCardFormViewModel: TEmployeeAdministrationCardFormViewModel;
begin

  inherited;

  EmployeeCardFormViewModel :=
    CardFormViewModel as TEmployeeAdministrationCardFormViewModel;

  with ReferenceFormRecordViewModel as TEmployeesAdministrationReferenceRecordViewModel
  do begin

    EmployeeCardFormViewModel.Login.Value := Login;
    EmployeeCardFormViewModel.CurrentRoleName.Value := RoleName;
    
  end;
  
end;

procedure TEmployeeAdministrationCardFormViewModelMapper.FillEmployeeRoleNames(
  RoleNames: TStrings);
begin

  // refactor: from dto in the future

  RoleNames.Add('����������');
  RoleNames.Add('���������');
  RoleNames.Add('��������� ������');
  
end;

function TEmployeeAdministrationCardFormViewModelMapper.GetCardFormViewModelClass: TCardFormViewModelClass;
begin

  Result := TEmployeeAdministrationCardFormViewModel;
  
end;

end.
