unit appRental;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.ComCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TformDashboard = class(TForm)
    pageData: TPageControl;
    tabAnggota: TTabSheet;
    tabFilm: TTabSheet;
    tabPinjam: TTabSheet;
    statusBarApp: TStatusBar;
    btnAnggota: TSpeedButton;
    btnLaporAnggota: TSpeedButton;
    btnFilm: TSpeedButton;
    btnLaporFilm: TSpeedButton;
    page_control: TPageControl;
    InfoHome: TTabSheet;
    InfoAnggota: TTabSheet;
    InfoFilm: TTabSheet;
    InfoPinjam: TTabSheet;
    panelHome: TPanel;
    btnTabelAnggota: TSpeedButton;
    gridAnggota: TDBGrid;
    procedure btnAnggotaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnTabelAnggotaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formDashboard: TformDashboard;

implementation

{$R *.dfm}

uses formAnggota, dataModuleDB;

procedure TformDashboard.btnAnggotaClick(Sender: TObject);
begin
  Form_Anggota.Show;
end;

procedure TformDashboard.btnTabelAnggotaClick(Sender: TObject);
begin
  page_control.ActivePage := InfoAnggota;
end;

procedure TformDashboard.FormShow(Sender: TObject);
begin
try
        InfoHome.TabVisible := False;
  InfoAnggota.TabVisible := False;
  InfoFilm.TabVisible := False;
  InfoPinjam.TabVisible := False;
  pageData.ActivePage := tabAnggota;
  pageData.ActivePage := InfoHome;

  with DataModuleMySQL            do
  begin
    zConnect.HostName := 'localhost';
    zConnect.Port := 3306;
    zConnect.User := 'rangga';
    zConnect.Password := 'rangga';
    zConnect.Database := 'rentaldvd';
    zConnect.LibraryLocation := ExtractFilePath(Application.ExeName)+'libmysql.dll';
    zConnect.Connected := True;
    zQueryAnggota.Active := True;
  end;
except

end;




end;

end.
