unit FormEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, IdHTTP, System.JSON;

type
  Tform_edit = class(TForm)
    grpInsert: TGroupBox;
    lblNama: TLabel;
    lblGender: TLabel;
    lblTelp: TLabel;
    txtNama: TEdit;
    txtTelp: TEdit;
    comGender: TComboBox;
    btnEdit: TButton;
    txtID: TEdit;
    lblID: TLabel;
    btnDelete: TButton;
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
  private
    { Private declarations }
    procedure clearForm();
  public
    { Public declarations }
  end;

var
  form_edit: Tform_edit;

implementation

uses
  FormUtama;

{$R *.dfm}

procedure Tform_edit.btnDeleteClick(Sender: TObject);
var
  htp: TIdHTTP;
  jso: TJSONObject;
  url: string;
  sts: integer;
  lst: TStringList;
  psn: string;

begin
  if MessageDlg('Yakin nama = ' + txtNama.Text + ' akan dihapus?',
    TMsgDlgType.mtConfirmation, [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], 0) = mrYes
  then
  begin
    htp := TIdHTTP.Create(nil);
    lst := TStringList.Create;
    lst.Add('id=' + txtID.Text);

    url := 'http://localhost/crud_json_delphi/delete.php';

    try
      url := htp.Post(url, lst);
    finally
      FreeAndNil(htp);
      lst.Free;
    end;

    jso := TJSONObject.ParseJSONValue(url) as TJSONObject;
    psn := jso.GetValue('pesan').Value;
    sts := StrToInt(jso.GetValue('value').Value);

    if sts = 1 then
    begin
      MessageDlg(psn, TMsgDlgType.mtInformation, [TMsgDlgBtn.mbOK], 0);
      form_utama.btnRefresh.Click;
      clearForm();
      Self.Close;

    end
    else
    begin

      MessageDlg(psn, TMsgDlgType.mtError, [TMsgDlgBtn.mbOK], 0);
    end;

    jso.Free;
  end;

end;

procedure Tform_edit.btnEditClick(Sender: TObject);
var
  htp: TIdHTTP;
  jso: TJSONObject;
  url: string;
  sts: integer;
  lst: TStringList;
  psn: string;

begin
  htp := TIdHTTP.Create(nil);
  lst := TStringList.Create;
  lst.Add('id=' + txtID.Text);
  lst.Add('nama=' + txtNama.Text);
  lst.Add('jk=' + comGender.Text);
  lst.Add('telp=' + txtTelp.Text);

  url := 'http://localhost/crud_json_delphi/edit.php';

  try
    url := htp.Post(url, lst);
  finally
    FreeAndNil(htp);
    lst.Free;
  end;

  jso := TJSONObject.ParseJSONValue(url) as TJSONObject;
  psn := jso.GetValue('pesan').Value;
  sts := StrToInt(jso.GetValue('value').Value);

  if sts = 1 then
  begin
    MessageDlg(psn, TMsgDlgType.mtInformation, [TMsgDlgBtn.mbOK], 0);
    form_utama.btnRefresh.Click;
    clearForm();
    Self.Close;

  end
  else
  begin

    MessageDlg(psn, TMsgDlgType.mtError, [TMsgDlgBtn.mbOK], 0);
  end;
  jso.Free;

end;

procedure Tform_edit.clearForm();
begin
  txtNama.Text := '';
  txtTelp.Text := '';
  comGender.Text := '--Pilih Gender--';
end;

end.
