program ContactApp;

uses
  Vcl.Forms,
  FormMain in 'FormMain.pas' {Form_Main};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm_Main, Form_Main);
  Application.Run;
end.
