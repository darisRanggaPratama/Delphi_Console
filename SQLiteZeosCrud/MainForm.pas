unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection;

type
  Tform_main = class(TForm)
    zConn: TZConnection;
    query1: TZQuery;
    query2: TZQuery;
    dataSource: TDataSource;
    grid: TDBGrid;
    btnOpenDB: TButton;
    btnCreateTable: TButton;
    cBoxTable: TComboBox;
    lblCreateTable: TLabel;
    lblFirstName: TLabel;
    lblLastName: TLabel;
    txtFirstName: TEdit;
    txtLastName: TEdit;
    btnInsert: TButton;
    lblFirstNameUpdate: TLabel;
    lblLastNameUpdate: TLabel;
    txtFirstNameUpdate: TEdit;
    txtLastNameUpdate: TEdit;
    btnUpdate: TButton;
    btnDelete: TButton;
    lblOpenedDB: TLabel;
    lblTextID: TLabel;
    lblID: TLabel;
    btnCSV: TButton;
    procedure btnOpenDBClick(Sender: TObject);
    procedure btnCreateTableClick(Sender: TObject);
    procedure cBoxTableChange(Sender: TObject);
    procedure btnInsertClick(Sender: TObject);
    procedure btnUpdateClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure gridCellClick(Column: TColumn);
    procedure btnCSVClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_main: Tform_main;

implementation

uses
UploadDownload;

{$R *.dfm}

procedure Tform_main.btnCreateTableClick(Sender: TObject);
begin
  query1.Close;
  query1.SQL.Clear;
  query1.SQL.Add
    ('CREATE TABLE IF NOT EXISTS testtbl(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, '
    + 'firstname VARCHAR(50), lastname VARCHAR(50), UNIQUE(id))');
  query1.ExecSQL;

  cBoxTable.Items.Clear;
  zConn.GetTableNames('', cBoxTable.Items);
  cBoxTable.ItemIndex := 0;
  cBoxTable.OnChange(Self);
end;

procedure Tform_main.btnCSVClick(Sender: TObject);
begin
      form_uploadDownload.Show;
end;

procedure Tform_main.btnDeleteClick(Sender: TObject);
begin
  query2.Delete;
end;

procedure Tform_main.btnInsertClick(Sender: TObject);
begin
  if txtFirstName.Text <> null then
  begin
    query1.SQL.Clear;
    query1.SQL.Add('INSERT INTO testtbl(firstname, lastname) VALUES(' +
      QuotedStr(txtFirstName.Text) + ',' + QuotedStr(txtLastName.Text) + ')');
    query1.ExecSQL;
    cBoxTable.OnChange(Self);
  end;
end;

procedure Tform_main.btnOpenDBClick(Sender: TObject);
begin
  zConn.Protocol := 'sqlite';
  zConn.LibraryLocation := ExtractFilePath(Application.ExeName) + 'sqlite3.dll';
  if not FileExists(zConn.LibraryLocation) then
    Exit;

  zConn.Database := ExtractFilePath(Application.ExeName) + 'testdb.s3db';
  zConn.Connect;
  cBoxTable.Items.Clear;
  zConn.GetTableNames('', cBoxTable.Items);
  cBoxTable.ItemIndex := 0;
  cBoxTable.OnChange(Self);
  lblOpenedDB.Caption := zConn.Database;
end;

procedure Tform_main.btnUpdateClick(Sender: TObject);
begin
  query1.SQL.Clear;
  query1.SQL.Add('UPDATE testtbl SET firstName = ' +
    QuotedStr(txtFirstNameUpdate.Text) + ', lastname = ' +
    QuotedStr(txtLastNameUpdate.Text) + ' WHERE id = ' +
    QuotedStr(lblID.Caption));
  query1.ExecSQL;
  cBoxTable.OnChange(Self);
end;

procedure Tform_main.cBoxTableChange(Sender: TObject);
var
  i: Integer;
begin
  query2.Close;
  query2.SQL.Clear;
  query2.SQL.Add('SELECT * FROM ' + cBoxTable.Text);
  query2.Open;

  for i := 0 to grid.Columns.Count - 1 do
  begin
    grid.Columns[i].Width := 100;
  end;
end;

procedure Tform_main.gridCellClick(Column: TColumn);
begin
  txtLastNameUpdate.Text := query2.FieldByName('lastname').AsString;
  txtFirstNameUpdate.Text := query2.FieldByName('firstname').AsString;
  lblID.Caption := query2.FieldByName('id').AsString;
end;

end.
