unit ExportCSV;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZAbstractConnection,
  ZConnection;

type
  Tform_export = class(TForm)
    btnExport: TButton;
    btnOpenForm: TButton;
    zConnect: TZConnection;
    queryDB: TZQuery;
    procedure btnExportClick(Sender: TObject);
    procedure btnOpenFormClick(Sender: TObject);
  private
    procedure ExportDataToCSV(const FileName: string);
  public
    { Public declarations }
  end;

var
  form_export: Tform_export;

implementation

uses
  ImportCSV;

{$R *.dfm}

procedure Tform_export.btnExportClick(Sender: TObject);
begin
  // Set up the connection
  with zConnect do
  begin
    HostName := 'localhost';
    Port := 3306;
    Database := 'rentaldvd';
    Protocol := 'mysql';
    LibraryLocation := ExtractFilePath(Application.ExeName) +
      '\library\libmysql.dll';
    User := 'rangga';
    Password := 'rangga';
  end;

  try
    if not zConnect.Connected then
      zConnect.Connect;

    queryDB.SQL.Clear;
    queryDB.SQL.Text := 'SELECT id, nama, pekerjaan, alamat, telp FROM anggota';

    if queryDB.SQL.Text = '' then
      raise Exception.Create('SQL Query is Empty');

    queryDB.Open;

    // Export data to CSV
    ExportDataToCSV(ExtractFilePath(Application.ExeName) +
      '\export\anggota.csv');
    ShowMessage('Data exported successfully!');
  except
    on E: Exception do
    begin
      ShowMessage('Error: ' + E.Message);
    end;
  end;
end;

procedure Tform_export.btnOpenFormClick(Sender: TObject);
begin
  form_import.show;
end;

procedure Tform_export.ExportDataToCSV(const FileName: string);
var
  CSVFile: TextFile;
  i: Integer;
  Line: string;
begin

  AssignFile(CSVFile, FileName);
  Rewrite(CSVFile);

  try
    // Write column headers
    Line := 'id;nama;pekerjaan;alamat;telp';
    Writeln(CSVFile, Line);

    // Write data rows
    queryDB.First;
    while not queryDB.Eof do
    begin
      Line := '';
      for i := 0 to queryDB.FieldCount - 1 do
      begin
        Line := Line + queryDB.Fields[i].AsString;
        if i < queryDB.FieldCount - 1 then
          Line := Line + ';';
      end;
      Writeln(CSVFile, Line);
      queryDB.Next;
    end;

  finally
    CloseFile(CSVFile);
  end;
end;

end.
