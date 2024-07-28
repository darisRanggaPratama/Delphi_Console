unit dataModulDB;

interface

uses
  System.SysUtils, System.Classes, ZAbstractConnection, ZConnection, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TmyDataModule = class(TDataModule)
    zConnect: TZConnection;
    queryAnggota_: TZQuery;
    queryAnggota_id: TZUnicodeStringField;
    queryAnggota_nama: TZUnicodeStringField;
    queryAnggota_pekerjaan: TZUnicodeStringField;
    queryAnggota_alamat: TZUnicodeStringField;
    queryAnggota_telp: TZUnicodeStringField;
    sourceAnggota: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  myDataModule: TmyDataModule;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
