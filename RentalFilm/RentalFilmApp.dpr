program RentalFilmApp;

uses
  Vcl.Forms,
  formDashboard in 'formDashboard.pas' {form_dashboard},
  formAnggota in 'formAnggota.pas' {form_anggota},
  dataModulDB in 'dataModulDB.pas' {myDataModule: TDataModule},
  Download in 'Download.pas' {form_download};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tform_dashboard, form_dashboard);
  Application.CreateForm(Tform_anggota, form_anggota);
  Application.CreateForm(TmyDataModule, myDataModule);
  Application.CreateForm(Tform_download, form_download);
  Application.Run;
end.
