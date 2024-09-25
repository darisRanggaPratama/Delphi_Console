unit FormInsert;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.JSON, IdHTTP;

type
  Tform_insert = class(TForm)
    grpInsert: TGroupBox;
    lblNama: TLabel;
    lblGender: TLabel;
    lblTelp: TLabel;
    txtNama: TEdit;
    txtTelp: TEdit;
    comGender: TComboBox;
    btnSave: TButton;
    procedure FormShow(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
  private
    { Private declarations }
    procedure clearForm();
  public
    { Public declarations }
  end;

var
  form_insert: Tform_insert;

implementation

uses
FormUtama;

{$R *.dfm}

procedure Tform_insert.btnSaveClick(Sender: TObject);
var
  url: string;
  htp: TIdHTTP;
  jso: TJSONObject;
  sts: Integer;
  lst: TStringList;
  psn: string;

begin
  htp := TIdHTTP.Create(nil);
  lst := TStringList.Create;
  // Mengirim data dengan metode POST ke file PHP
  lst.Add('nama=' + txtNama.Text);
  lst.Add('jk=' + comGender.Text);
  lst.Add('telp=' + txtTelp.Text);

  url := 'http://localhost/console_php/crud_json_delphi/save.php';

  try
    url := htp.Post(url, lst);

  finally
    FreeAndNil(htp);
    lst.Free;

  end;
  jso := TJSONObject.ParseJSONValue(url) as TJSONObject;
  sts := StrToInt(jso.GetValue('value').Value);
  psn := jso.GetValue('pesan').Value;

  if sts = 1 then
  begin
    MessageDlg(psn, TMsgDlgType.mtInformation, [TMsgDlgBtn.mbOK], 0);
    clearForm();
    form_utama.btnRefresh.Click;
    Self.Close;
  end
  else
  begin
    MessageDlg(psn, TMsgDlgType.mtError, [TMsgDlgBtn.mbOK], 0);
  end;
  jso.Free;
end;

procedure Tform_insert.clearForm();
begin
  txtNama.Text := '';
  txtTelp.Text := '';
  comGender.Text := '--Pilih Gender--';
end;

procedure Tform_insert.FormShow(Sender: TObject);
begin
  clearForm();
end;

end.
