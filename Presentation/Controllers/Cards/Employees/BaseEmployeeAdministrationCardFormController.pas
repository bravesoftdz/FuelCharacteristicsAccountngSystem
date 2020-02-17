unit BaseEmployeeAdministrationCardFormController;

interface

uses

  BaseEmployeeCardFormController,
  unEmployeeAdministrationCardForm,
  Event,
  EventBus,
  Forms,
  SysUtils,
  Classes;

type

  TBaseEmployeeAdministrationCardFormController =
    class (TBaseEmployeeCardFormController)

      protected

        function GetFormClass: TFormClass; override;
      
    end;


implementation

{ TBaseEmployeeAdministrationCardFormController }

function TBaseEmployeeAdministrationCardFormController.GetFormClass: TFormClass;
begin

  Result := TEmployeeAdministrationCardForm;
  
end;

end.
