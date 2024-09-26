unit FormInsert;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.JSON,
  System.Net.HttpClient, System.Net.URLClient, System.Net.HttpClientComponent,
  IdURI;

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
  HttpClient: TNetHTTPClient;
  content: TStringStream;
  response: IHTTPResponse;
  jsonResponse: TJSONObject;
  status: Integer;
  messages: string;
  postData: TStringList;

begin
  HttpClient := TNetHTTPClient.Create(nil);
  postData := TStringList.Create;

  try
    // Mengirim data dengan metode POST ke file PHP
    postData.Add('nama=' + TIdURI.ParamsEncode(txtNama.Text));
    postData.Add('jk=' + TIdURI.ParamsEncode(comGender.Text));
    postData.Add('telp=' + TIdURI.ParamsEncode(txtTelp.Text));

    url := 'https://hyvoy.com/crud_json_delphi/save.php';

    // Membuat konten POST
    content := TStringStream.Create(postData.Text, TEncoding.UTF8);

    try
      response := HttpClient.Post(url, content, nil,
        [TNameValuePair.Create('Content-Type',
        'application/x-www-form-urlencoded')]);

      if response.StatusCode = 200 then
      begin
        jsonResponse := TJSONObject.ParseJSONValue(response.ContentAsString)
          as TJSONObject;
        try
          status := StrToInt(jsonResponse.GetValue('value').Value);
          messages := jsonResponse.GetValue('pesan').Value;

          if status = 1 then
          begin
            MessageDlg(messages, TMsgDlgType.mtInformation,
              [TMsgDlgBtn.mbOK], 0);
            clearForm();
            form_utama.btnRefresh.Click;
            Self.Close;
          end
          else
          begin
            MessageDlg(messages, TMsgDlgType.mtError, [TMsgDlgBtn.mbOK], 0);
          end;
        finally
          jsonResponse.Free;
        end;
      end
      else
      begin
        ShowMessage('Error: ' + response.StatusCode.ToString + ' ' +
          response.StatusText);
      end;
    finally
      content.Free;
    end;
  finally
    HttpClient.Free;
    postData.Free;
  end;
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
