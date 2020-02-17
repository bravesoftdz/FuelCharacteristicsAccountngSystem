unit EmployeesAdministrationReferenceDataSetHolder;

interface

uses

  EmployeesReferenceDataSetHolder,
  SysUtils,
  Classes;

type

  TEmployeesAdministrationReferenceDataSetFieldDefs =
    class (TEmployeesReferenceDataSetFieldDefs)

      public

        RoleNameFieldName: String;
        LoginFieldName: String;
        
    end;

  TEmployeesAdministrationReferenceDataSetHolder =
    class (TEmployeesReferenceDataSetHolder)

      private

        function GetEmployeesAdministrationReferenceDataSetFieldDefs: TEmployeesAdministrationReferenceDataSetFieldDefs;
        function GetLoginFieldName: String;
        function GetLoginFieldValue: String;
        function GetRoleNameFieldName: String;
        function GetRoleNameFieldValue: String;

        procedure SetEmployeesAdministrationReferenceDataSetFieldDefs(
          const Value: TEmployeesAdministrationReferenceDataSetFieldDefs);

        procedure SetLoginFieldName(const Value: String);
        procedure SetLoginFieldValue(const Value: String);
        procedure SetRoleNameFieldName(const Value: String);
        procedure SetRoleNameFieldValue(const Value: String);

      public

        property RoleNameFieldName: String
        read GetRoleNameFieldName write SetRoleNameFieldName;
        
        property LoginFieldName: String
        read GetLoginFieldName write SetLoginFieldName;

      public

        property RoleNameFieldValue: String
        read GetRoleNameFieldValue write SetRoleNameFieldValue;
        
        property LoginFieldValue: String
        read GetLoginFieldValue write SetLoginFieldValue;

      public

        property FieldDefs: TEmployeesAdministrationReferenceDataSetFieldDefs
        read GetEmployeesAdministrationReferenceDataSetFieldDefs
        write SetEmployeesAdministrationReferenceDataSetFieldDefs;
        
    end;
  

implementation

{ TEmployeesAdministrationReferenceDataSetHolder }

function TEmployeesAdministrationReferenceDataSetHolder.
  GetEmployeesAdministrationReferenceDataSetFieldDefs: TEmployeesAdministrationReferenceDataSetFieldDefs;
begin

  Result := TEmployeesAdministrationReferenceDataSetFieldDefs(FFieldDefs);
  
end;

function TEmployeesAdministrationReferenceDataSetHolder.GetLoginFieldName: String;
begin

  Result := FieldDefs.LoginFieldName;
  
end;

function TEmployeesAdministrationReferenceDataSetHolder.GetLoginFieldValue: String;
begin

  Result := GetDataSetFieldValue(LoginFieldName, '');
  
end;

function TEmployeesAdministrationReferenceDataSetHolder.GetRoleNameFieldName: String;
begin

  Result := FieldDefs.RoleNameFieldName;
  
end;

function TEmployeesAdministrationReferenceDataSetHolder.GetRoleNameFieldValue: String;
begin

  Result := GetDataSetFieldValue(RoleNameFieldName, '');

end;

procedure TEmployeesAdministrationReferenceDataSetHolder.SetEmployeesAdministrationReferenceDataSetFieldDefs(
  const Value: TEmployeesAdministrationReferenceDataSetFieldDefs);
begin

  SetFieldDefs(Value);
  
end;

procedure TEmployeesAdministrationReferenceDataSetHolder.SetLoginFieldName(
  const Value: String);
begin

  FieldDefs.LoginFieldName := Value;
  
end;

procedure TEmployeesAdministrationReferenceDataSetHolder.SetLoginFieldValue(
  const Value: String);
begin

  SetDataSetFieldValue(LoginFieldName, Value);

end;

procedure TEmployeesAdministrationReferenceDataSetHolder.SetRoleNameFieldName(
  const Value: String);
begin

  FieldDefs.RoleNameFieldName := Value;
  
end;

procedure TEmployeesAdministrationReferenceDataSetHolder.SetRoleNameFieldValue(
  const Value: String);
begin

  SetDataSetFieldValue(RoleNameFieldName, Value);
  
end;

end.
