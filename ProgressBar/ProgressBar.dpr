program ProgressBar;

uses
  Vcl.Forms,
  Main in 'Main.pas' {formHome};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TformHome, formHome);
  Application.Run;
end.
