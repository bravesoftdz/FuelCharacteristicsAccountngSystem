program FuelCharacteristicsAccountSystem;

uses
  Forms,
  BaseFuelCharacteristicsAccountingSystemFormController in 'Controllers\Primary Screens\BaseFuelCharacteristicsAccountingSystemFormController.pas',
  FuelCharacteristicsAccountingSystemFormControllerEvents in 'Controllers\Primary Screens\FuelCharacteristicsAccountingSystemFormControllerEvents.pas',
  MinMaxFormUnit in 'C:\Common Delphi Libs\u_59968 Delphi Modules\Useful Forms\MinMaxFormUnit.pas' {MinMaxForm},
  DialogFormUnit in 'C:\Common Delphi Libs\u_59968 Delphi Modules\Useful Forms\DialogFormUnit.pas' {DialogForm},
  unFuelCharacteristicsAccountingSystemForm in 'Forms\Primary Screens\unFuelCharacteristicsAccountingSystemForm.pas' {FuelCharacteristicsAccountingSystemForm},
  TableViewFilterFormUnit in 'C:\Common Delphi Libs\u_59968 Delphi Modules\DBDataTableForm\TableViewFilterFormUnit.pas' {TableViewFilterForm},
  unFuelCharacteristicsAccountingSystemReferenceForm in 'Forms\References\unFuelCharacteristicsAccountingSystemReferenceForm.pas' {FuelCharacteristicsAccountingSystemReferenceForm},
  PresentationConfigurator in 'Launching\Configuration\PresentationConfigurator.pas',
  PresentationLauncher in 'Launching\PresentationLauncher.pas',
  ProgramBootstrapper in 'Launching\ProgramBootstrapper.pas',
  DBDataTableFormUnit in 'C:\Common Delphi Libs\u_59968 Delphi Modules\DBDataTableForm\DBDataTableFormUnit.pas' {DBDataTableForm},
  AbstractDataSetHolder in 'C:\Common Delphi Libs\u_59968 Delphi Modules\DataSet Holders\AbstractDataSetHolder.pas',
  ClonableUnit in 'C:\Common Delphi Libs\u_59968 Delphi Modules\Misceleneous\Interfaces\ClonableUnit.pas',
  unEmployeesReferenceForm in 'Forms\References\Employees\unEmployeesReferenceForm.pas' {EmployeesReferenceForm},
  unFuelCharacteristicsCalculationCardForm in 'Forms\Cards\Fuel\unFuelCharacteristicsCalculationCardForm.pas' {FuelCharacteristicsCalculationCardForm},
  FuelCharacteristicsCalculationCardFormViewModel in 'Forms\Cards\Fuel\View Models\FuelCharacteristicsCalculationCardFormViewModel.pas',
  unFuelCharacteristicsAccountingReferenceFilterForm in 'Forms\References\Fuel\unFuelCharacteristicsAccountingReferenceFilterForm.pas' {FuelCharacteristicsAccountingReferenceFilterForm},
  unFuelCharacteristicsAccountingReferenceForm in 'Forms\References\Fuel\unFuelCharacteristicsAccountingReferenceForm.pas' {FuelCharacteristicsAccountingReferenceForm},
  FuelCharacteristicsAccountingReferenceDataSetHolder in 'Forms\References\Fuel\View Models\FuelCharacteristicsAccountingReferenceDataSetHolder.pas',
  FuelCharacteristicsAccountingReferenceFormViewModel in 'Forms\References\Fuel\View Models\FuelCharacteristicsAccountingReferenceFormViewModel.pas',
  FuelCharacteristicsAccountingReferenceRecordViewModel in 'Forms\References\Fuel\View Models\FuelCharacteristicsAccountingReferenceRecordViewModel.pas',
  TestDataSetModule in 'Forms\References\Fuel\View Models\TestDataSetModule.pas' {DataModule1: TDataModule},
  unEmployeeCardForm in 'Forms\Cards\Employees\unEmployeeCardForm.pas' {EmployeeCardForm},
  unEmployeesReferenceFilterForm in 'Forms\References\Employees\unEmployeesReferenceFilterForm.pas' {EmployeesReferenceFilterForm},
  EmployeesReferenceFormViewModel in 'Forms\References\Employees\View Models\EmployeesReferenceFormViewModel.pas',
  EmployeesReferenceDataSetHolder in 'Forms\References\Employees\View Models\EmployeesReferenceDataSetHolder.pas',
  EmployeesReferenceRecordViewModel in 'Forms\References\Employees\View Models\EmployeesReferenceRecordViewModel.pas',
  ReferenceFormViewModel in 'C:\Common Delphi Libs\u_59968 Delphi Modules\Reference Forms\View Models\ReferenceFormViewModel.pas',
  ReferenceFormRecordViewModel in 'C:\Common Delphi Libs\u_59968 Delphi Modules\Reference Forms\View Models\ReferenceFormRecordViewModel.pas',
  unReferenceForm in 'C:\Common Delphi Libs\u_59968 Delphi Modules\Reference Forms\unReferenceForm.pas' {ReferenceForm},
  ReferenceFormDataSetHolder in 'C:\Common Delphi Libs\u_59968 Delphi Modules\Reference Forms\View Models\ReferenceFormDataSetHolder.pas',
  AbstractReferenceFormRecordViewModelMapper in 'C:\Common Delphi Libs\u_59968 Delphi Modules\Reference Forms\View Models\Mappers\AbstractReferenceFormRecordViewModelMapper.pas',
  ReferenceFormRecordViewModelMapper in 'C:\Common Delphi Libs\u_59968 Delphi Modules\Reference Forms\View Models\Mappers\ReferenceFormRecordViewModelMapper.pas',
  AbstractReferenceFormController in 'C:\Common Delphi Libs\u_59968 Delphi Modules\Reference Forms\Controllers\AbstractReferenceFormController.pas',
  AbstractReferenceFormControllerEvents in 'C:\Common Delphi Libs\u_59968 Delphi Modules\Reference Forms\Controllers\AbstractReferenceFormControllerEvents.pas',
  unCardForm in 'C:\Common Delphi Libs\u_59968 Delphi Modules\Card Forms\unCardForm.pas' {CardForm},
  CardFormViewModel in 'C:\Common Delphi Libs\u_59968 Delphi Modules\Card Forms\View Models\CardFormViewModel.pas',
  AbstractCardFormController in 'C:\Common Delphi Libs\u_59968 Delphi Modules\Card Forms\Controllers\AbstractCardFormController.pas',
  AbstractCardFormControllerEvents in 'C:\Common Delphi Libs\u_59968 Delphi Modules\Card Forms\Controllers\AbstractCardFormControllerEvents.pas',
  CardFormViewModelMapper in 'C:\Common Delphi Libs\u_59968 Delphi Modules\Card Forms\View Models\Mappers\CardFormViewModelMapper.pas',
  AbstractCardFormViewModelMapper in 'C:\Common Delphi Libs\u_59968 Delphi Modules\Card Forms\View Models\Mappers\AbstractCardFormViewModelMapper.pas',
  unEmployeeCardFrame in 'Forms\Cards\Employees\unEmployeeCardFrame.pas' {EmployeeCardFrame: TFrame},
  BaseEmployeeCardFormController in 'Controllers\Cards\Employees\BaseEmployeeCardFormController.pas',
  BaseFuelCharacteristicsCalculationCardFormController in 'Controllers\Cards\Fuel\BaseFuelCharacteristicsCalculationCardFormController.pas',
  StubFuelCharacteristicsCalculationCardFormController in 'Controllers\Cards\Fuel\StubFuelCharacteristicsCalculationCardFormController.pas',
  BaseFuelCharacteristicsAccountingReferenceFormController in 'Controllers\References\Fuel\BaseFuelCharacteristicsAccountingReferenceFormController.pas',
  StubFuelCharacteristicsAccountingReferenceFormController in 'Controllers\References\Fuel\StubFuelCharacteristicsAccountingReferenceFormController.pas',
  StubEmployeeCardFormController in 'Controllers\Cards\Employees\StubEmployeeCardFormController.pas',
  EmployeeCardFormViewModelMapper in 'View Model Mappers\Cards\Employees\EmployeeCardFormViewModelMapper.pas',
  EmployeesReferenceRecordViewModelMapper in 'View Model Mappers\References\Employees\EmployeesReferenceRecordViewModelMapper.pas',
  FuelCharacteristicsAccountingReferenceRecordViewModelMapper in 'View Model Mappers\References\Fuel\FuelCharacteristicsAccountingReferenceRecordViewModelMapper.pas',
  FuelCharacteristicsCalculationCardFormViewModelMapper in 'View Model Mappers\Cards\Fuel\FuelCharacteristicsCalculationCardFormViewModelMapper.pas',
  BaseEmployeesReferenceFormController in 'Controllers\References\Employees\BaseEmployeesReferenceFormController.pas',
  unTestEmployeesReferenceFormDataModule in 'Forms\References\Employees\View Models\unTestEmployeesReferenceFormDataModule.pas' {TestEmployeesReferenceFormDataModule: TDataModule},
  StubEmployeesReferenceFormController in 'Controllers\References\Employees\StubEmployeesReferenceFormController.pas',
  EmployeeCardFormViewModel in 'Forms\Cards\Employees\View Models\EmployeeCardFormViewModel.pas',
  unSectionStackedForm in 'C:\Common Delphi Libs\u_59968 Delphi Modules\Section-Stacked Forms\unSectionStackedForm.pas' {SectionStackedForm},
  SectionStackedFormViewModel in 'C:\Common Delphi Libs\u_59968 Delphi Modules\Section-Stacked Forms\View Models\SectionStackedFormViewModel.pas',
  SectionSetHolder in 'C:\Common Delphi Libs\u_59968 Delphi Modules\Section-Stacked Forms\View Models\SectionSetHolder.pas',
  SectionRecordViewModel in 'C:\Common Delphi Libs\u_59968 Delphi Modules\Section-Stacked Forms\View Models\SectionRecordViewModel.pas',
  AbstractSectionStackedFormController in 'C:\Common Delphi Libs\u_59968 Delphi Modules\Section-Stacked Forms\Controllers\AbstractSectionStackedFormController.pas',
  AbstractSectionStackedFormControllerEvents in 'C:\Common Delphi Libs\u_59968 Delphi Modules\Section-Stacked Forms\Controllers\AbstractSectionStackedFormControllerEvents.pas',
  FormEvents in 'C:\Common Delphi Libs\EventBus\Events\Forms\FormEvents.pas',
  AbstractStubSectionStackedFormController in 'C:\Common Delphi Libs\u_59968 Delphi Modules\Section-Stacked Forms\Controllers\AbstractStubSectionStackedFormController.pas',
  unStubSectionStackedFormDataModule in 'C:\Common Delphi Libs\u_59968 Delphi Modules\Section-Stacked Forms\View Models\unStubSectionStackedFormDataModule.pas' {StubSectionStackedFormDataModule: TDataModule},
  StubSystemAdministrationFormController in 'Controllers\Primary Screens\Administration\StubSystemAdministrationFormController.pas',
  SystemAdministrationService in 'C:\Common Delphi Libs\u_59968 Delphi Modules\DDD\App Services\Admin\SystemAdministrationService.pas',
  SystemAuthentificationService in 'C:\Common Delphi Libs\u_59968 Delphi Modules\DDD\App Services\Authentification\SystemAuthentificationService.pas',
  ServiceInfo in 'C:\Common Delphi Libs\u_59968 Delphi Modules\DDD\App Services\Authentification\ServiceInfo.pas',
  ClientLogOnInfo in 'C:\Common Delphi Libs\u_59968 Delphi Modules\DDD\App Services\Authentification\ClientLogOnInfo.pas',
  ClientAccount in 'C:\Common Delphi Libs\u_59968 Delphi Modules\DDD\App Services\Authentification\ClientAccount.pas',
  SystemAuthorizationService in 'C:\Common Delphi Libs\u_59968 Delphi Modules\DDD\App Services\Authorization\SystemAuthorizationService.pas',
  SystemAdministrationPrivileges in 'C:\Common Delphi Libs\u_59968 Delphi Modules\DDD\App Services\Admin\SystemAdministrationPrivileges.pas',
  SystemAdministrationPrivilegeServices in 'C:\Common Delphi Libs\u_59968 Delphi Modules\DDD\App Services\Admin\SystemAdministrationPrivilegeServices.pas',
  unSystemAdministrationForm in 'C:\Common Delphi Libs\u_59968 Delphi Modules\DDD\Presentation\Forms\Administration\unSystemAdministrationForm.pas' {SystemAdministrationForm},
  SystemAdministrationFormController in 'C:\Common Delphi Libs\u_59968 Delphi Modules\DDD\Presentation\Controllers\Administration\SystemAdministrationFormController.pas',
  SystemAdministrationFormViewModel in 'C:\Common Delphi Libs\u_59968 Delphi Modules\DDD\Presentation\Forms\Administration\View Models\SystemAdministrationFormViewModel.pas',
  SystemAdministrationPrivilegeSetHolder in 'C:\Common Delphi Libs\u_59968 Delphi Modules\DDD\Presentation\Forms\Administration\View Models\SystemAdministrationPrivilegeSetHolder.pas',
  SystemAdministrationPrivilegeViewModel in 'C:\Common Delphi Libs\u_59968 Delphi Modules\DDD\Presentation\Forms\Administration\View Models\SystemAdministrationPrivilegeViewModel.pas',
  SystemAdministrationFormViewModelMapper in 'C:\Common Delphi Libs\u_59968 Delphi Modules\DDD\Presentation\View Model Mappers\Administration\SystemAdministrationFormViewModelMapper.pas',
  SystemAdministrationFormViewModelMapperInterface in 'C:\Common Delphi Libs\u_59968 Delphi Modules\DDD\Presentation\View Model Mappers\Administration\SystemAdministrationFormViewModelMapperInterface.pas',
  SystemAdministrationFormControllerEvents in 'C:\Common Delphi Libs\u_59968 Delphi Modules\DDD\Presentation\Controllers\Administration\SystemAdministrationFormControllerEvents.pas',
  unEmployeesAdministrationReferenceForm in 'Forms\References\Employees\unEmployeesAdministrationReferenceForm.pas' {EmployeesAdministrationReferenceForm},
  unFuelCharacteristicsAccountingSystemAdministrationForm in 'Forms\Primary Screens\unFuelCharacteristicsAccountingSystemAdministrationForm.pas' {FuelCharacteristicsAccountingSystemAdministrationForm},
  BaseEmployeesReferenceFormControllerEvents in 'Controllers\References\Employees\BaseEmployeesReferenceFormControllerEvents.pas',
  BaseFuelCharacteristicsCalculationCardFormControllerEvents in 'Controllers\Cards\Fuel\BaseFuelCharacteristicsCalculationCardFormControllerEvents.pas',
  BaseFuelCharacteristicsAccountingReferenceFormControllerEvents in 'Controllers\References\Fuel\BaseFuelCharacteristicsAccountingReferenceFormControllerEvents.pas',
  BaseEmployeeCardFormControllerEvents in 'Controllers\Cards\Employees\BaseEmployeeCardFormControllerEvents.pas',
  unEmployeesAdministrationReferenceFilterForm in 'Forms\References\Employees\unEmployeesAdministrationReferenceFilterForm.pas' {EmployeesAdministrationReferenceFilterForm},
  EmployeesAdministrationReferenceRecordViewModel in 'Forms\References\Employees\View Models\EmployeesAdministrationReferenceRecordViewModel.pas',
  EmployeesAdministrationReferenceDataSetHolder in 'Forms\References\Employees\View Models\EmployeesAdministrationReferenceDataSetHolder.pas',
  EmployeesAdministrationReferenceFormViewModel in 'Forms\References\Employees\View Models\EmployeesAdministrationReferenceFormViewModel.pas',
  BaseEmployeesAdministrationReferenceFormController in 'Controllers\References\Employees\BaseEmployeesAdministrationReferenceFormController.pas',
  unEmployeeLogOnInfoCardFrame in 'Forms\Cards\Employees\unEmployeeLogOnInfoCardFrame.pas' {EmployeeLogOnInfoCardFrame: TFrame},
  unEmployeeAdministrationCardForm in 'Forms\Cards\Employees\unEmployeeAdministrationCardForm.pas' {EmployeeAdministrationCardForm},
  EmployeeAdministrationCardFormViewModel in 'Forms\Cards\Employees\View Models\EmployeeAdministrationCardFormViewModel.pas',
  EmployeesAdministrationReferenceRecordViewModelMapper in 'View Model Mappers\References\Employees\EmployeesAdministrationReferenceRecordViewModelMapper.pas',
  EmployeeAdministrationCardFormViewModelMapper in 'View Model Mappers\Cards\Employees\EmployeeAdministrationCardFormViewModelMapper.pas',
  StubEmployeesAdministrationReferenceFormController in 'Controllers\References\Employees\StubEmployeesAdministrationReferenceFormController.pas',
  BaseEmployeeAdministrationCardFormController in 'Controllers\Cards\Employees\BaseEmployeeAdministrationCardFormController.pas',
  StubEmployeeAdministrationCardFormController in 'Controllers\Cards\Employees\StubEmployeeAdministrationCardFormController.pas';

{$R *.res}

begin

  with TProgramBootstrapper.Create do begin

    try

      Start;

    finally

    end;
    
  end;

end.
