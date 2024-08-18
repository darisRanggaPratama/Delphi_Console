program PinjamanApps;

uses
  Vcl.Forms,
  MainForm in 'MainForm.pas' {formHome},
  Entry in 'Entry.pas' {formEntry},
  ExIm in 'ExIm.pas' {formExIm},
  DataModuleDB in 'DataModuleDB.pas' {myDataModule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TformHome, formHome);
  Application.CreateForm(TformEntry, formEntry);
  Application.CreateForm(TformExIm, formExIm);
  Application.CreateForm(TmyDataModule, myDataModule);
  Application.Run;
end.
