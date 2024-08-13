unit UploadDownload;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ZConnection, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZAbstractConnection,
  Vcl.StdCtrls;

type
  Tform_uploadDownload = class(TForm)
    qTest: TZQuery;
    zConns: TZConnection;
    btnExport: TButton;
    btnImport: TButton;
    procedure btnExportClick(Sender: TObject);
    procedure btnImportClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_uploadDownload: Tform_uploadDownload;

implementation

{$R *.dfm}

procedure Tform_uploadDownload.btnExportClick(Sender: TObject);
var
  exportFile: TextFile;
begin
  zConns.Protocol := 'sqlite';
  zConns.Database := ExtractFilePath(Application.ExeName) + 'testdb.s3db';
  zConns.LibraryLocation := ExtractFilePath(Application.ExeName) +
    'sqlite3.dll';
  zConns.Connected := True;

  qTest.Connection := zConns;
  qTest.SQL.Text := 'SELECT firstName, lastName FROM testtbl';
  qTest.Open;

  AssignFile(exportFile, 'name_export.csv');
  Rewrite(exportFile);

  try
    Writeln(exportFile, 'firstname; lastname');

    while not qTest.Eof do
    begin
      Write(exportFile, qTest.FieldByName('firstname').AsString + ';');
      Writeln(exportFile, qTest.FieldByName('lastname').AsString);
      qTest.Next;
    end;
    ShowMessage('Data Export successfully');
  finally
    CloseFile(exportFile);
    qTest.Close;
    zConns.Connected := False;
  end;
end;

procedure Tform_uploadDownload.btnImportClick(Sender: TObject);
var
  importFile: TextFile;
  LineStr, firstnamestr, lastnamestr: string;
  LineCount: Integer;
begin
  zConns.Protocol := 'sqlite';
  zConns.Database := ExtractFilePath(Application.ExeName) + 'testdb.s3db';
  zConns.LibraryLocation := ExtractFilePath(Application.ExeName) +
    'sqlite3.dll';
  zConns.Connected := True;

  qTest.Connection := zConns;
  qTest.SQL.Text :=
    'INSERT INTO testtbl(firstname, lastname) VALUES(:firstname, :lastname)';

  AssignFile(importFile, 'name_import.csv');
  Reset(importFile);

  try
    Readln(importFile);
    LineCount := 0;

    zConns.StartTransaction;
    try
      while not Eof(importFile) do
      begin
        Readln(importFile, LineStr);
        Inc(LineCount);
        firstnamestr := Copy(LineStr, 1, Pos(';', LineStr) - 1);
        Delete(LineStr, 1, Pos(';', LineStr));
        lastnamestr := LineStr;

        qTest.ParamByName('firstname').AsString := firstnamestr;
        qTest.ParamByName('lastname').AsString := lastnamestr;

        qTest.ExecSQL;
      end;
      zConns.Commit;
    except
      on E: Exception do
      begin
        zConns.Rollback;
        ShowMessage('Error saat impor: ' + E.Message);
      end;

    end;
  finally
    CloseFile(importFile);
    zConns.Connected := False;
  end;

end;

end.
