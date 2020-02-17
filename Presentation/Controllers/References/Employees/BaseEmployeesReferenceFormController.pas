unit BaseEmployeesReferenceFormController;

interface

uses

  AbstractReferenceFormController,
  ReferenceFormViewModel,
  unEmployeesReferenceForm,
  AbstractReferenceFormControllerEvents,
  ReferenceFormRecordViewModel,
  BaseEmployeeCardFormControllerEvents,
  BaseEmployeesReferenceFormControllerEvents,
  AbstractCardFormControllerEvents,
  Forms,
  SysUtils,
  Classes;

type

  TBaseEmployeesReferenceFormController = class (TAbstractReferenceFormController)

    protected

      function GetFormClass: TFormClass; override;

      procedure SubscribeOnFormEvents(Form: TForm); override;
      
    protected

      procedure OnEmployeeSpecialityStringsRequestedEventHandler(
        Sender: TObject;
        var EmployeeSpecialities: TStrings
      ); virtual; abstract;
    
    protected

      function GetCardCreatedEventClass: TCardCreatedEventClass; override;
      function GetCardModifiedEventClass: TCardModifiedEventClass; override;
      function GetCardRemovedEventClass: TCardRemovedEventClass; override;

    protected

      function GetAddingReferenceRecordRequestedEventClass: TAddingReferenceRecordRequestedEventClass; override;
      function GetChangingReferenceRecordRequestedEventClass: TChangingReferenceRecordRequestedEventClass; override;
      function GetRemovingReferenceRecordRequestedEventClass: TRemovingReferenceRecordRequestedEventClass; override;

  end;

implementation

{ TBaseEmployeesReferenceFormController }


function TBaseEmployeesReferenceFormController.GetAddingReferenceRecordRequestedEventClass: TAddingReferenceRecordRequestedEventClass;
begin

  Result := TAddingEmployeesReferenceRecordRequestedEvent;

end;

function TBaseEmployeesReferenceFormController.GetCardCreatedEventClass: TCardCreatedEventClass;
begin

  Result := TEmployeeCardCreatedEvent;
  
end;

function TBaseEmployeesReferenceFormController.GetCardModifiedEventClass: TCardModifiedEventClass;
begin

  Result := TEmployeeCardModifiedEvent;
  
end;

function TBaseEmployeesReferenceFormController.GetCardRemovedEventClass: TCardRemovedEventClass;
begin

  Result := TEmployeeCardRemovedEvent;

end;

function TBaseEmployeesReferenceFormController.GetChangingReferenceRecordRequestedEventClass: TChangingReferenceRecordRequestedEventClass;
begin

  Result := TChangingEmployeesReferenceRecordRequestedEvent;
  
end;

function TBaseEmployeesReferenceFormController.GetFormClass: TFormClass;
begin

  Result := TEmployeesReferenceForm;
  
end;

function TBaseEmployeesReferenceFormController.GetRemovingReferenceRecordRequestedEventClass: TRemovingReferenceRecordRequestedEventClass;
begin

  Result := TRemovingEmployeesReferenceRecordRequestedEvent;
  
end;

procedure TBaseEmployeesReferenceFormController.SubscribeOnFormEvents(
  Form: TForm);
begin

  inherited;

  with Form as TEmployeesReferenceForm do begin

    OnEmployeeSpecialityStringsRequestedEventHandler :=
      Self.OnEmployeeSpecialityStringsRequestedEventHandler;
      
  end;

end;

end.