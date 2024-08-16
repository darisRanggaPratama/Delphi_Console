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
    Form_submenu: TMenuItem;
    InputPinjam_sub: TMenuItem;
    Data_submenu: TMenuItem;
    ExportImport_sub: TMenuItem;
    lblHome: TLabel;
    gridAngsur: TDBGrid;
    lblSearch: TLabel;
    txtSearch: TEdit;
    search_sub: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure txtSearchChange(Sender: TObject);
    procedure InputPinjam_subClick(Sender: TObject);
    procedure gridAngsurDblClick(Sender: TObject);
    procedure ExportImport_subClick(Sender: TObject);
    procedure search_subClick(Sender: TObject);
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

procedure TformHome.ExportImport_subClick(Sender: TObject);
begin
  formExIm.Show;
end;

procedure TformHome.FormShow(Sender: TObject);
begin
  try
    tabData.TabVisible := False;
    tabHome.TabVisible := False;
    pageHome.ActivePage := tabHome;

    with myDataModule do
    begin
      with connect do
      begin
        Protocol := 'sqlite';
        Database := ExtractFilePath(Application.ExeName) +
          'database\pinjam.s3db';
        LibraryLocation := ExtractFilePath(Application.ExeName) +
          'library\sqlite3.dll';
        Connected := True;
      end;
      qAngsur_.Active := True;
    end;
    statusDB.Panels[0].Text := 'Database: ' +
      ExtractFilePath(Application.ExeName) + 'database\pinjam.s3db';
    statusDB.Panels[1].Text := 'Library: ' +
      ExtractFilePath(Application.ExeName) + 'database\sqlite3.dll';
  except
  end;
end;

procedure TformHome.gridAngsurDblClick(Sender: TObject);
begin
  with formEntry do
  begin
    txtKode.Text := myDataModule.qAngsur_idPinjam.AsString;
    txtNIK.Text := myDataModule.qAngsur_nik.AsString;
    txtNama.Text := myDataModule.qAngsur_nama.AsString;
    txtPeriode.Text := myDataModule.qAngsur_periode.AsString;
    txtAngsur.Text := IntToStr(myDataModule.qAngsur_angsuran.AsInteger);
    txtUtang.Text := IntToStr(myDataModule.qAngsur_utang.AsInteger);
    txtBayar.Text := IntToStr(myDataModule.qAngsur_bayar.AsInteger);
    txtSaldo.Text := IntToStr(myDataModule.qAngsur_saldo.AsInteger);
    ShowModal;
  end;
end;

procedure TformHome.InputPinjam_subClick(Sender: TObject);
begin
  formEntry.Show;
end;

procedure TformHome.search_subClick(Sender: TObject);
begin
  pageHome.ActivePage := tabData;
end;

procedure TformHome.txtSearchChange(Sender: TObject);
begin
  with myDataModule do
  begin
    sourceAngsur.DataSet.Refresh;
    with qAngsur_ do
    begin
      SQL.Clear;
      SQL.Text := 'SELECT * FROM angsur WHERE nama LIKE ' +
        QuotedStr('%' + txtSearch.Text + '%') + ' OR id_pinjam LIKE ' +
        QuotedStr('%' + txtSearch.Text + '%') + ' OR periode LIKE ' +
        QuotedStr('%' + txtSearch.Text + '%') + ' ORDER BY id_pinjam';
      Open;
    end;
  end;
end;

end.
