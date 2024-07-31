unit ConnectMySQL;

interface

uses
  System.SysUtils, System.Classes, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection;

type
  TDataModuleDB = class(TDataModule)
    zConnect: TZConnection;
    queryDB: TZQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModuleDB: TDataModuleDB;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
