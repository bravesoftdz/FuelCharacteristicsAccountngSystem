unit BaseEmployeesAdministrationReferenceFormController;

interface

uses

  BaseEmployeesReferenceFormController,
  unEmployeesAdministrationReferenceForm,
  Forms,
  SysUtils,
  Classes;

type

  TBaseEmployeesAdministrationReferenceFormController =
    class (TBaseEmployeesReferenceFormController)

      protected

        function GetFormClass: TFormClass; override;

        procedure SubscribeOnFormEvents(Form: TForm); override;

      protected

        procedure OnEmployeeRoleNamesRequestedEventHandler(
          Sender: TObject;
          var EmployeeRoleNames: TStrings
        ); virtual; abstract;
        
    end;
  
implementation

{ TBaseEmployeesAdministrationReferenceFormController }

function TBaseEmployeesAdministrationReferenceFormController.GetFormClass: TFormClass;
begin

  Result := TEmployeesAdministrationReferenceForm;
  
end;

procedure TBaseEmployeesAdministrationReferenceFormController.SubscribeOnFormEvents(
  Form: TForm);
begin

  inherited;

  with Form as TEmployeesAdministrationReferenceForm do begin

    OnEmployeeRoleNamesRequestedEventHandler :=
      Self.OnEmployeeRoleNamesRequestedEventHandler;

  end;
  
end;

end.
