program RentalDVDapp;

uses
  Vcl.Forms,
  appRental in 'appRental.pas' {formDashboard} ,
  formAnggota in 'formAnggota.pas' {Form_Anggota} ,
  dataModuleDB in 'dataModuleDB.pas' {DataModuleMySQL: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TformDashboard, formDashboard);
  Application.CreateForm(TForm_Anggota, Form_Anggota);
  Application.CreateForm(TDataModuleMySQL, DataModuleMySQL);
  Application.Run;

end.
