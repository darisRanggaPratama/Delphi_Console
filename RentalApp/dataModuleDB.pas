unit dataModuleDB;

interface

uses
  System.SysUtils, System.Classes, ZAbstractConnection, ZConnection, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TDataModuleMySQL = class(TDataModule)
    zConnect: TZConnection;
    zQueryAnggota: TZQuery;
    zQueryAnggotaid: TZUnicodeStringField;
    zQueryAnggotanama: TZUnicodeStringField;
    zQueryAnggotatelp: TZUnicodeStringField;
    dataSourceAnggota: TDataSource;
    zQueryAnggotapekerjaan: TZUnicodeStringField;
    zQueryAnggotaalamat: TZUnicodeStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModuleMySQL: TDataModuleMySQL;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

end.
