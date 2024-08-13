program ZeosSQLite;

uses
  Vcl.Forms,
  MainForm in 'MainForm.pas' {form_main},
  UploadDownload in 'UploadDownload.pas' {form_uploadDownload};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tform_main, form_main);
  Application.CreateForm(Tform_uploadDownload, form_uploadDownload);
  Application.Run;
end.
