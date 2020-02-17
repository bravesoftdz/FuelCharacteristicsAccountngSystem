unit PresentationLauncher;

interface

uses

  Forms,
  PresentationConfigurator,
  SysUtils,
  Classes;

type

  TPresentationLauncher = class

    private

      FPresentationConfigurator: TPresentationConfigurator;

      procedure Initialize;
      procedure Configure;
      procedure Run;

    public

      destructor Destroy; override;

      constructor Create(PresentationConfigurator: TPresentationConfigurator);

      procedure Launch;

  end;

implementation

uses

  AbstractFormController,
  AuxWindowsFunctionsUnit,
  BaseFuelCharacteristicsAccountingSystemFormController;

{ TPresentationLauncher }

procedure TPresentationLauncher.Configure;
begin

  Application.MainFormOnTaskBar := True;

  FPresentationConfigurator.Configure;

end;

constructor TPresentationLauncher.Create(
  PresentationConfigurator: TPresentationConfigurator);
begin

  inherited Create;

  FPresentationConfigurator := PresentationConfigurator;

end;

destructor TPresentationLauncher.Destroy;
begin

  FreeAndNil(FPresentationConfigurator);
  inherited;

end;

procedure TPresentationLauncher.Initialize;
begin

  Application.Initialize;

end;

procedure TPresentationLauncher.Launch;
begin

  try

    Initialize;
    Configure;
    Run;

  except

    on e: Exception do begin

      ShowErrorMessage(Application.Handle, e.Message, '������');

      Application.Terminate;

    end;

  end;

end;

procedure TPresentationLauncher.Run;
var MainFormController: TAbstractFormController;
begin

  MainFormController :=
    FPresentationConfigurator.Controllers[
      TBaseFuelCharacteristicsAccountingSystemFormController.ClassName
    ] as TAbstractFormController;

  MainFormController.ShowFormAsModal(TFormData.Create(Application));

  Application.Run;

end;

end.
