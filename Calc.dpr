program Calc;

uses
  Forms,
  UMain in 'UMain.pas' {FMain},
  UFleet in 'UFleet.pas' {FFleet},
  UFAllfleet in 'UFAllfleet.pas' {FFleetAll},
  UFight in 'UFight.pas' {FFight};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFMain, FMain);
  Application.CreateForm(TFFleet, FFleet);
  Application.CreateForm(TFFleetAll, FFleetAll);
  Application.CreateForm(TFFight, FFight);
  Application.Run;
end.
