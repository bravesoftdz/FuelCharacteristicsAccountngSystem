unit EmployeeCardFormViewModel;

interface

uses

  CardFormViewModel,
  SysUtils,
  Classes;

type

  TEmployeeCardFormViewModel = class (TCardFormViewModel)

    protected

      FName: TCardFormViewModelProperty;
      FSurname: TCardFormViewModelProperty;
      FPatronymic: TCardFormViewModelProperty;
      FBirthDate: TCardFormViewModelProperty;
      FSpeciality: TCardFormViewModelProperty;
      FSpecialities: TStrings;
      
      function IsPropertyModified(ViewModelProperty: TCardFormViewModelProperty): Boolean; override;
  
    public

      destructor Destroy; override;
      constructor Create; override;

    published

      property Name: TCardFormViewModelProperty read FName;
      property Surname: TCardFormViewModelProperty read FSurname;
      property Patronymic: TCardFormViewModelProperty read FPatronymic;
      property BirthDate: TCardFormViewModelProperty read FBirthDate;
      property Speciality: TCardFormViewModelProperty read FSpeciality;
      property Specialities: TStrings read FSpecialities;
      
  end;

implementation

{ TEmployeeCardFormViewModel }

constructor TEmployeeCardFormViewModel.Create;
begin

  inherited;

  FName := AddProperty('Name');
  FSurname := AddProperty('Surname');
  FPatronymic := AddProperty('Patronymic');
  FBirthDate := AddProperty('BirthDate');
  FSpeciality := AddProperty('Speciality');

  FSpecialities := TStringList.Create;
  
end;

destructor TEmployeeCardFormViewModel.Destroy;
begin

  FreeAndNil(FSpecialities);
  
  inherited;

end;

function TEmployeeCardFormViewModel.IsPropertyModified(
  ViewModelProperty: TCardFormViewModelProperty): Boolean;
begin

  if ViewModelProperty = Id then
    Result := False

  else Result := inherited IsPropertyModified(ViewModelProperty);

end;

end.