unit BaseFuelCharacteristicsCalculationCardFormController;

interface

uses

  AbstractFormController,
  EventBus,
  Event,
  Controls,
  AbstractCardFormController,
  CardFormViewModel,
  AbstractReferenceFormControllerEvents,
  unFuelCharacteristicsCalculationCardForm,
  FuelCharacteristicsCalculationCardFormViewModel,
  AbstractCardFormControllerEvents,
  FuelCharacteristicsAccountingReferenceRecordViewModel,
  EventHandler,
  Disposable,

  Forms,
  SysUtils,
  Classes;

type

  TBaseFuelCharacteristicsCalculationCardFormController =
    class (TAbstractCardFormController)

      protected

        procedure SubscribeOnFormEvents(Form: TForm); override;

        function GetFormClass: TFormClass; override;

        procedure CustomizeForm(Form: TForm; FormData: TFormData); override;
        
      protected

        procedure OnFuelCharacteristicsCalculationRequestedEventHandler(
          Sender: TObject;
          var ViewModel: TFuelCharacteristicsCalculationCardFormViewModel
        ); virtual; abstract;

      protected

        function GetCardCreatedEventClass: TCardCreatedEventClass; override;
        function GetCardModifiedEventClass: TCardModifiedEventClass; override;
        function GetCardRemovedEventClass: TCardRemovedEventClass; override;

      protected

        function GetAddingReferenceRecordRequestedEventClass: TAddingReferenceRecordRequestedEventClass; override;
        function GetChangingReferenceRecordRequestedEventClass: TChangingReferenceRecordRequestedEventClass; override;
        function GetRemovingReferenceRecordRequestedEventClass: TRemovingReferenceRecordRequestedEventClass; override;

      public

    end;

implementation

uses

  AuxWindowsFunctionsUnit,
  BaseFuelCharacteristicsCalculationCardFormControllerEvents,
  BaseFuelCharacteristicsAccountingReferenceFormControllerEvents,
  Variants;

{ TBaseFuelCharacteristicsCalculationCardFormController }

procedure TBaseFuelCharacteristicsCalculationCardFormController.CustomizeForm(
  Form: TForm; FormData: TFormData);
var ViewModel: TCardFormViewModel;
begin

  inherited;

  ViewModel := (FormData as TCardFormData).ViewModel;

  if VarIsNull(ViewModel.Id.Value) then
    Form.Caption := '�������� ��� ������ ������� ���������� �������'

  else Form.Caption := '�������� ������� ���������� �������';

end;

function TBaseFuelCharacteristicsCalculationCardFormController.GetAddingReferenceRecordRequestedEventClass: TAddingReferenceRecordRequestedEventClass;
begin

  Result := TAddingFuelCharacteristicsAccountingReferenceRecordRequestedEvent;
  
end;

function TBaseFuelCharacteristicsCalculationCardFormController.GetCardCreatedEventClass: TCardCreatedEventClass;
begin

  Result := TFuelCharacteristicsCalculationCardCreatedEvent;
  
end;

function TBaseFuelCharacteristicsCalculationCardFormController.GetCardModifiedEventClass: TCardModifiedEventClass;
begin

  Result := TFuelCharacteristicsCalculationCardModifiedEvent;
  
end;

function TBaseFuelCharacteristicsCalculationCardFormController.GetCardRemovedEventClass: TCardRemovedEventClass;
begin

  Result := TFuelCharacteristicsCalculationCardRemovedEvent;
  
end;

function TBaseFuelCharacteristicsCalculationCardFormController.GetChangingReferenceRecordRequestedEventClass: TChangingReferenceRecordRequestedEventClass;
begin

  Result := TChangingFuelCharacteristicsAccountingReferenceRecordRequestedEvent;
  
end;

function TBaseFuelCharacteristicsCalculationCardFormController.GetFormClass: TFormClass;
begin

  Result := TFuelCharacteristicsCalculationCardForm;
  
end;

function TBaseFuelCharacteristicsCalculationCardFormController.GetRemovingReferenceRecordRequestedEventClass: TRemovingReferenceRecordRequestedEventClass;
begin

  Result := TRemovingFuelCharacteristicsAccountingReferenceRecordRequestedEvent;
  
end;

procedure TBaseFuelCharacteristicsCalculationCardFormController.SubscribeOnFormEvents(
  Form: TForm);
begin

  inherited;

  with Form as TFuelCharacteristicsCalculationCardForm do begin


    OnFuelCharacteristicsCalculationRequestedEventHandler :=
      Self.OnFuelCharacteristicsCalculationRequestedEventHandler;
      
  end;
  
end;

end.