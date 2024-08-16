unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, Vcl.StdCtrls;

type
  TformHome = class(TForm)
    MainMenuForm: TMainMenu;
    menuForm: TMenuItem;
    inputPinjam_sub: TMenuItem;
    pageHome: TPageControl;
    tabHome: TTabSheet;
    tabData: TTabSheet;
    gridAngsur: TDBGrid;
    lblHome: TLabel;
    txtSearch: TEdit;
    lblSearch: TLabel;
    menuData: TMenuItem;
    importExport_sub: TMenuItem;
    statBar: TStatusBar;
    search_sub: TMenuItem;

    procedure inputPinjam_subClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure gridAngsurDblClick(Sender: TObject);
    procedure txtSearchChange(Sender: TObject);
    procedure importExport_subClick(Sender: TObject);
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
  dataModuleDB, Entry, ExIm;

{$R *.dfm}

procedure TformHome.gridAngsurDblClick(Sender: TObject);
begin
  with formEntry do
  begin
    txtKode.Text := myDataModule.qAngsur_idPinjam.AsString;
    txtNik.Text := myDataModule.qAngsur_nik.AsString;
    txtNama.Text := myDataModule.qAngsur_nama.AsString;
    txtPeriode.Text := myDataModule.qAngsur_periode.AsString;
    txtAngsur.Text := IntToStr(myDataModule.qAngsur_angsuran.AsInteger);
    txtUtang.Text := IntToStr(myDataModule.qAngsur_utang.AsInteger);
    txtBayar.Text := IntToStr(myDataModule.qAngsur_bayar.AsInteger);
    txtSaldo.Text := IntToStr(myDataModule.qAngsur_saldo.AsInteger);
    ShowModal;
  end;
end;

procedure TformHome.importExport_subClick(Sender: TObject);
begin
  formExIm.Show;
end;

procedure TformHome.inputPinjam_subClick(Sender: TObject);
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

procedure TformHome.FormShow(Sender: TObject);
begin
  try
    tabData.TabVisible := False;
    tabHome.TabVisible := False;
    pageHome.ActivePage := tabHome;

    with myDataModule do
    begin
      with zConnect do
      begin
        HostName := 'localhost';
        Port := 3306;
        Database := 'pinjam';
        LibraryLocation := ExtractFilePath(Application.ExeName) +
          'library\libmysql.dll';
        User := 'rangga';
        Password := 'rangga';
        Connected := True;
      end;
      qAngsur_.Active := True;
    end;
    statBar.Panels[0].Text := 'Library: ' + ExtractFilePath(Application.ExeName)
      + 'library\libmysql.dll';
    statBar.Panels[1].Text := 'Aplikasi Pinjaman Karyawan';
  except
  end;
end;

end.
