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
    inputPinjam: TMenuItem;
    pageHome: TPageControl;
    tabHome: TTabSheet;
    tabData: TTabSheet;
    gridAngsur: TDBGrid;
    lblHome: TLabel;
    txtSearch: TEdit;
    lblSearch: TLabel;
    menuData: TMenuItem;
    importExport: TMenuItem;

    procedure inputPinjamClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure gridAngsurDblClick(Sender: TObject);
    procedure txtSearchChange(Sender: TObject);
    procedure importExportClick(Sender: TObject);

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

procedure TformHome.importExportClick(Sender: TObject);
begin
  formExIm.Show;
end;

procedure TformHome.inputPinjamClick(Sender: TObject);
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
          '\library\libmysql.dll';
        User := 'rangga';
        Password := 'rangga';
        Connected := True;
      end;
      qAngsur_.Active := True;
    end;
  except
  end;
end;

end.
