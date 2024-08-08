unit dataModuleDB;

interface

uses
  System.SysUtils, System.Classes, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection;

type
  TmyDataModule = class(TDataModule)
    zConnect: TZConnection;
    qAngsur_: TZQuery;
    qAngsur_no: TZWordField;
    qAngsur_idPinjam: TZUnicodeStringField;
    qAngsur_nik: TZUnicodeStringField;
    qAngsur_nama: TZUnicodeStringField;
    qAngsur_periode: TZUnicodeStringField;
    qAngsur_angsuran: TZIntegerField;
    qAngsur_utang: TZIntegerField;
    qAngsur_bayar: TZIntegerField;
    qAngsur_saldo: TZIntegerField;
    sourceAngsur: TDataSource;
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
