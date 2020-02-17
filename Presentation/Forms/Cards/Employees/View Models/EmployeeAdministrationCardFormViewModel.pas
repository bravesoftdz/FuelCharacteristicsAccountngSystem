unit EmployeeAdministrationCardFormViewModel;

interface

uses

  CardFormViewModel,
  EmployeeCardFormViewModel,
  SysUtils,
  Classes;

type

  TEmployeeAdministrationCardFormViewModel = class (TEmployeeCardFormViewModel)

    private

      FCurrentRoleName: TCardFormViewModelProperty;
      FLogin: TCardFormViewModelProperty;
      FPassword: TCardFormViewModelProperty;

      FRoleNames: TStrings;
      
    public

      destructor Destroy; override;
      constructor Create; override;

    public

      property Login: TCardFormViewModelProperty read FLogin;
      property Password: TCardFormViewModelProperty read FPassword;
      property CurrentRoleName: TCardFormViewModelProperty read FCurrentRoleName;
      property RoleNames: TStrings read FRoleNames;
      
  end;

implementation

{ TEmployeeAdministrationCardFormViewModel }

constructor TEmployeeAdministrationCardFormViewModel.Create;
begin

  inherited;

  FLogin := AddProperty('Login');
  FPassword := AddProperty('Password');
  FCurrentRoleName := AddProperty('CurrentRoleName');

  FRoleNames := TStringList.Create;
  
end;

destructor TEmployeeAdministrationCardFormViewModel.Destroy;
begin

  FreeAndNil(FRoleNames);
  
  inherited;

end;

end.
