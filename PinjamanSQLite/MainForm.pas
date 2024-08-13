unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Menus,
  Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TformHome = class(TForm)
    statusDB: TStatusBar;
    pageHome: TPageControl;
    tabHome: TTabSheet;
    tabData: TTabSheet;
    menuHome: TMainMenu;
    Form1: TMenuItem;
    InputPinjam1: TMenuItem;
    Data1: TMenuItem;
    ExportImport1: TMenuItem;
    lblHome: TLabel;
    gridAngsur: TDBGrid;
    lblSearch: TLabel;
    txtSearch: TEdit;
    procedure FormShow(Sender: TObject);
    procedure txtSearchChange(Sender: TObject);
    procedure InputPinjam1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formHome: TformHome;

implementation

uses
  DataModuleDB, ExIm, Entry;

{$R *.dfm}

procedure TformHome.FormShow(Sender: TObject);
begin
  try
    tabData.Visible := False;
    tabHome.Visible := False;
    pageHome.ActivePage := tabHome;

    with myDataModule do
    begin
      with connect do
      begin
        Protocol := 'sqlite';
        Database := ExtractFilePath(Application.ExeName) + 'pinjam.s3db';
        LibraryLocation := ExtractFilePath(Application.ExeName) + 'sqlite3.dll';
        Connected := True;
      end;
      qAngsur_.Active := True;
    end;
  except
  end;
end;

procedure TformHome.InputPinjam1Click(Sender: TObject);
begin
 formEntry.Show;
end;

procedure TformHome.txtSearchChange(Sender: TObject);
begin
  with myDataModule do
  begin
    with qAngsur_ do
    begin
      SQL.Clear;
      SQL.Text := 'SELECT * FROM angsur WHERE nama LIKE ' +
        QuotedStr('%' + txtSearch.Text + '%') + ' ORDER BY id_pinjam';
        Open;
    end;
  end;
end;

end.
