program iniFile;

uses
  Vcl.Forms,
  UnitMain in 'UnitMain.pas' {form_main};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tform_main, form_main);
  Application.Run;
end.
