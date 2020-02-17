unit PresentationConfigurator;

interface

uses

  EventBus,
  SimpleEventBus,
  Hashes,

  BaseFuelCharacteristicsAccountingSystemFormController,
  BaseFuelCharacteristicsAccountingReferenceFormController,
  StubFuelCharacteristicsAccountingReferenceFormController,
  StubFuelCharacteristicsCalculationCardFormController,
  BaseFuelCharacteristicsCalculationCardFormController,

  BaseEmployeeCardFormController,
  BaseEmployeesReferenceFormController,
  BaseEmployeeAdministrationCardFormController,
  StubEmployeeAdministrationCardFormController,
  BaseEmployeesAdministrationReferenceFormController,
  StubEmployeesAdministrationReferenceFormController,

  StubSystemAdministrationFormController,
  AbstractSectionStackedFormController,

  SysUtils,
  Classes;

type

  TPresentationConfigurator = class

    private

      FControllers: TObjectHash;
      FEventBus: IEventBus;

      procedure ConfigureControllers(EventBus: IEventBus);
      procedure ConfigureEventBus(EventBus: IEventBus);

      function GetFuelCharacteristicsAccountingReferenceFormController:
        TBaseFuelCharacteristicsAccountingReferenceFormController;

      function GetFuelCharacteristicsCalculationCardFormController:
        TBaseFuelCharacteristicsCalculationCardFormController;

      function GetEmployeesReferenceFormController: TBaseEmployeesReferenceFormController;
      function GetEmployeeCardFormController: TBaseEmployeeCardFormController;

      function GetSystemAdministrationFormController: TAbstractSectionStackedFormController;
      
      procedure UnregisterControllers;
      procedure FreeControllers;

    public

      destructor Destroy; override;

      constructor Create;

      procedure Configure;

      property Controllers: TObjectHash read FControllers;

  end;

implementation

uses

  Disposable,
  EventHandler,

  FuelCharacteristicsAccountingReferenceRecordViewModelMapper,
  FuelCharacteristicsCalculationCardFormViewModelMapper,

  EmployeesReferenceRecordViewModelMapper,
  EmployeeCardFormViewModelMapper,

  EmployeesAdministrationReferenceRecordViewModelMapper,
  EmployeeAdministrationCardFormViewModelMapper;

{ TPresentationConfigurator }

procedure TPresentationConfigurator.Configure;
begin

  FEventBus := TSimpleEventBus.Create;

  ConfigureControllers(FEventBus);
  ConfigureEventBus(FEventBus);

end;

procedure TPresentationConfigurator.ConfigureControllers(EventBus: IEventBus);
begin

  FControllers[TBaseFuelCharacteristicsAccountingSystemFormController.ClassName] :=
    TBaseFuelCharacteristicsAccountingSystemFormController.Create(EventBus);

  FControllers[TBaseFuelCharacteristicsAccountingReferenceFormController.ClassName] :=
    TStubFuelCharacteristicsAccountingReferenceFormController.Create(
      TFuelCharacteristicsAccountingReferenceRecordViewModelMapper.Create,
      EventBus
    );
    
  FControllers[TBaseFuelCharacteristicsCalculationCardFormController.ClassName] :=
    TStubFuelCharacteristicsCalculationCardFormController.Create(
      TFuelCharacteristicsCalculationCardFormViewModelMapper.Create,
      EventBus
    );

  FControllers[TBaseEmployeesReferenceFormController.ClassName] :=
    TStubEmployeesAdministrationReferenceFormController.Create(
      TEmployeesAdministrationReferenceRecordViewModelMapper.Create,
      EventBus
    );

  FControllers[TBaseEmployeeCardFormController.ClassName] :=
    TStubEmployeeAdministrationCardFormController.Create(
      TEmployeeAdministrationCardFormViewModelMapper.Create,
      EventBus
    );
  {
  FControllers[TAbstractSectionStackedFormController.ClassName] :=
    TStubSystemAdministrationFormController.Create(EventBus); }
    
end;

procedure TPresentationConfigurator.ConfigureEventBus(EventBus: IEventBus);
var FuelCharacteristicsAccountingReferenceFormController:
      TBaseFuelCharacteristicsAccountingReferenceFormController;
begin

end;

constructor TPresentationConfigurator.Create;
begin

  FControllers := TObjectHash.Create(False);

end;

destructor TPresentationConfigurator.Destroy;
begin

  UnregisterControllers;
  FreeControllers;

  inherited;

end;

procedure TPresentationConfigurator.FreeControllers;
begin

  FControllers.Restart;

  while FControllers.Next do
    FControllers[FControllers.CurrentKey].Free;

  FreeAndNil(FControllers);

end;

function TPresentationConfigurator.GetEmployeeCardFormController: TBaseEmployeeCardFormController;
begin

  Result :=
    TBaseEmployeeCardFormController(
      FControllers[
        TBaseEmployeeCardFormController.ClassName
      ]
    );
    
end;

function TPresentationConfigurator.GetEmployeesReferenceFormController: TBaseEmployeesReferenceFormController;
begin

  Result :=
    TBaseEmployeesReferenceFormController(
      FControllers[
        TBaseEmployeesReferenceFormController.ClassName
      ]
    );
    
end;

function TPresentationConfigurator.GetFuelCharacteristicsAccountingReferenceFormController: TBaseFuelCharacteristicsAccountingReferenceFormController;
begin

  Result :=
    TBaseFuelCharacteristicsAccountingReferenceFormController(
      FControllers[
        TBaseFuelCharacteristicsAccountingReferenceFormController.ClassName
      ]
    );

end;

function TPresentationConfigurator.GetFuelCharacteristicsCalculationCardFormController: TBaseFuelCharacteristicsCalculationCardFormController;
begin

  Result :=
    TBaseFuelCharacteristicsCalculationCardFormController(
      FControllers[
        TBaseFuelCharacteristicsCalculationCardFormController.ClassName
      ]
    );

end;

function TPresentationConfigurator.GetSystemAdministrationFormController: TAbstractSectionStackedFormController;
begin

  Result :=
    TAbstractSectionStackedFormController(
      FControllers[
        TAbstractSectionStackedFormController.ClassName
      ]
    );
    
end;

procedure TPresentationConfigurator.UnregisterControllers;
begin

  FEventBus.UnregisterEventHandlerFromAllEvents(
    GetFuelCharacteristicsAccountingReferenceFormController
  );

  FControllers.Delete(
    TBaseFuelCharacteristicsAccountingReferenceFormController.ClassName
  );

  FEventBus.UnregisterEventHandlerFromAllEvents(
    GetFuelCharacteristicsCalculationCardFormController
  );

  FControllers.Delete(
    TBaseFuelCharacteristicsCalculationCardFormController.ClassName
  );

  FEventBus.UnregisterEventHandlerFromAllEvents(
    GetEmployeesReferenceFormController
  );

  FControllers.Delete(TBaseEmployeesReferenceFormController.ClassName);

  FEventBus.UnregisterEventHandlerFromAllEvents(
    GetEmployeeCardFormController
  );

  FControllers.Delete(TBaseEmployeeCardFormController.ClassName);
                                             {
  FEventBus.UnregisterEventHandlerFromAllEvents(
    GetSystemAdministrationFormController
  );

  FControllers.Delete(TAbstractSectionStackedFormController.ClassName);
                                              }
end;

end.