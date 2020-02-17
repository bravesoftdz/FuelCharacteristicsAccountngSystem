unit ProgramBootstrapper;

interface

uses

  PresentationLauncher,
  PresentationConfigurator,
  SysUtils,
  Classes;

type

  TProgramBootstrapper = class

    private

    public

      procedure Start;

  end;

implementation

{ TProgramBootstrapper }

procedure TProgramBootstrapper.Start;
var PresentationLauncher: TPresentationLauncher;
begin

  PresentationLauncher :=
    TPresentationLauncher.Create(TPresentationConfigurator.Create);

  try

    PresentationLauncher.Launch;

  finally

    FreeAndNil(PresentationLauncher);

  end;

end;

end.
