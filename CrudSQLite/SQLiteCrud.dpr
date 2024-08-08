program SQLiteCrud;

uses
  Vcl.Forms,
  Master in 'Master.pas' {form_master},
  Transaksi in 'Transaksi.pas' {form_transaksi};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tform_master, form_master);
  Application.CreateForm(Tform_transaksi, form_transaksi);
  Application.Run;
end.
