unit FormUtama;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, System.JSON,
  System.Net.HttpClient,
  System.Net.URLClient, System.Net.HttpClientComponent;

type
  Tform_utama = class(TForm)
    strGridData: TStringGrid;
    btnSave: TButton;
    btnRefresh: TButton;
    procedure FormShow(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);

    procedure strGridDataDblClick(Sender: TObject);

  private
    { Private declarations }
    procedure AturKolom;
    procedure TampilData;
  public
    { Public declarations }
  end;

var
  form_utama: Tform_utama;

implementation

uses
  FormInsert, FormEdit;

{$R *.dfm}

procedure Tform_utama.AturKolom();
begin
  strGridData.RowCount := 2;
  strGridData.Cells[0, 0] := 'No';
  strGridData.Cells[1, 0] := 'Id';
  strGridData.Cells[2, 0] := 'Nama';
  strGridData.Cells[3, 0] := 'Jenis Kelamin';
  strGridData.Cells[4, 0] := 'Telepon';

  strGridData.ColWidths[0] := 40;
  strGridData.ColWidths[1] := 0;
  strGridData.ColWidths[2] := 200;
  strGridData.ColWidths[3] := 100;
  strGridData.ColWidths[4] := 100;
  strGridData.FixedCols := 0;
end;

procedure Tform_utama.btnRefreshClick(Sender: TObject);
begin
  TampilData();
end;

procedure Tform_utama.btnSaveClick(Sender: TObject);
begin
  form_insert.ShowModal;
end;

procedure Tform_utama.FormShow(Sender: TObject);
begin
  AturKolom();
end;

procedure Tform_utama.strGridDataDblClick(Sender: TObject);
begin
  form_edit.txtID.Text := strGridData.Cells[1, strGridData.Row];
  form_edit.txtNama.Text := strGridData.Cells[2, strGridData.Row];
  form_edit.comGender.Text := strGridData.Cells[3, strGridData.Row];
  form_edit.txtTelp.Text := strGridData.Cells[4, strGridData.Row];
  form_edit.ShowModal;
end;

procedure Tform_utama.TampilData();
var
  HttpClient: TNetHTTPClient;
  httpResponse: IHTTPResponse;
  jsonData: TJSONObject;
  jsonArray: TJSONArray;
  jsonItem: TJSONObject;
  url: string;
  i: Integer;

begin
  HttpClient := TNetHTTPClient.Create(nil);
  try
    url := 'https://hyvoy.com/crud_json_delphi/view.php';

    try
      httpResponse := HttpClient.Get(url);
      if httpResponse.StatusCode = 200 then
      begin
        jsonData := TJSONObject.ParseJSONValue(httpResponse.ContentAsString)
          as TJSONObject;
        try
          jsonArray := jsonData.GetValue('result') as TJSONArray;
          strGridData.RowCount := jsonArray.Count + 1;

          for i := 0 to jsonArray.Count - 1 do
          begin
            jsonItem := jsonArray.Items[i] as TJSONObject;
            // untuk nomor urut
            strGridData.Cells[0, i + 1] := Format('%d', [i + 1]);
            strGridData.Cells[1, i + 1] := jsonItem.GetValue('id').Value;
            strGridData.Cells[2, i + 1] := jsonItem.GetValue('nama').Value;
            strGridData.Cells[3, i + 1] := jsonItem.GetValue('jk').Value;
            strGridData.Cells[4, i + 1] := jsonItem.GetValue('telp').Value;
          end;
        finally
          jsonData.Free;
        end;

      end
      else
      begin
        ShowMessage('Error: ' + httpResponse.StatusCode.ToString + ' ' +
          httpResponse.StatusText);
      end;

    except
      on E: Exception do
      begin
        ShowMessage('Error: ' + E.Message);
      end;
    end;

  finally
    HttpClient.Free;
  end;
end;

end.
