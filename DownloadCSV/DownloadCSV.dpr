program DownloadCSV;

uses
  Vcl.Forms,
  Download in 'Download.pas' {form_download};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tform_download, form_download);
  Application.Run;
end.
