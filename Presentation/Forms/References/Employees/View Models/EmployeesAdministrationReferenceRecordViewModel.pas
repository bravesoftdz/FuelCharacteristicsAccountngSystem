unit EmployeesAdministrationReferenceRecordViewModel;

interface

uses

  EmployeesReferenceRecordViewModel,
  SysUtils,
  Classes;

type

  TEmployeesAdministrationReferenceRecordViewModel =
    class (TEmployeesReferenceRecordViewModel)

      public

        RoleName: String;
        Login: String;
      
    end;
  
implementation

end.
