unit dataModule;

interface

uses
  System.SysUtils, System.Classes, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection;

type
  TmyDataModule = class(TDataModule)
    zConnect: TZConnection;
    queryAnggota: TZQuery;
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
