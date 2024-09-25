program DataOnline;

uses
  Vcl.Forms,
  FormUtama in 'FormUtama.pas' {form_utama},
  Vcl.Themes,
  Vcl.Styles,
  FormInsert in 'FormInsert.pas' {form_insert},
  FormEdit in 'FormEdit.pas' {form_edit};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Cyan Dusk');
  Application.CreateForm(Tform_utama, form_utama);
  Application.CreateForm(Tform_insert, form_insert);
  Application.CreateForm(Tform_edit, form_edit);
  Application.Run;
end.
