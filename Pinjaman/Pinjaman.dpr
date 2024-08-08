program Pinjaman;

uses
  Vcl.Forms,
  MainForm in 'MainForm.pas' {formHome},
  Entry in 'Entry.pas' {formEntry},
  dataModuleDB in 'dataModuleDB.pas' {myDataModule: TDataModule},
  ExIm in 'ExIm.pas' {formExIm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TformHome, formHome);
  Application.CreateForm(TformEntry, formEntry);
  Application.CreateForm(TmyDataModule, myDataModule);
  Application.CreateForm(TformExIm, formExIm);
  Application.Run;
end.
