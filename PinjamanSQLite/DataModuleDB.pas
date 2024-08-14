unit DataModuleDB;

interface

uses
  System.SysUtils, System.Classes, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection;

type
  TmyDataModule = class(TDataModule)
    connect: TZConnection;
    qAngsur_: TZQuery;
    sourceAngsur: TDataSource;
    qAngsur_no: TZInt64Field;
    qAngsur_idPinjam: TZUnicodeStringField;
    qAngsur_nik: TZUnicodeStringField;
    qAngsur_nama: TZUnicodeStringField;
    qAngsur_periode: TZUnicodeStringField;
    qAngsur_angsuran: TZInt64Field;
    qAngsur_utang: TZInt64Field;
    qAngsur_bayar: TZInt64Field;
    qAngsur_saldo: TZInt64Field;
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
