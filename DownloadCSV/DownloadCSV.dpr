program DownloadCSV;

uses
  Vcl.Forms,
  ExportCSV in 'ExportCSV.pas' {form_export},
  ImportCSV in 'ImportCSV.pas' {form_import};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tform_export, form_export);
  Application.CreateForm(Tform_import, form_import);
  Application.Run;
end.
