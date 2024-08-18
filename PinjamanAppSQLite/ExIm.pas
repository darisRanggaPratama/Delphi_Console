unit ExIm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, ZAbstractConnection,
  ZConnection, Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  Vcl.ComCtrls;

type
  TformExIm = class(TForm)
    gBoxExport: TGroupBox;
    lblPeriod: TLabel;
    lblIDPinjam: TLabel;
    txtPeriod: TEdit;
    txtIDPinjam: TEdit;
    btnExportAll: TButton;
    btnExportPerPeriod: TButton;
    btnExportPerID: TButton;
    btnImport: TButton;
    zConnect: TZConnection;
    lblProgress: TLabel;
    progress: TProgressBar;
    procedure btnImportClick(Sender: TObject);
  private
    { Private declarations }
    procedure connectToDB();
    procedure updateProgress(Current, Max: Integer);
  public
    { Public declarations }
  end;

var
  formExIm: TformExIm;

implementation

uses
  MainForm, System.IOUtils;

{$R *.dfm}

procedure TformExIm.connectToDB();
begin
  // Koneksi ke database
  zConnect.Database := ExtractFilePath(Application.ExeName) +
    'database\pinjam.s3db';
  zConnect.Protocol := 'sqlite';
  zConnect.LibraryLocation := ExtractFilePath(Application.ExeName) +
    'library\sqlite3.dll';
    zConnect.Connect;
end;

procedure TformExIm.updateProgress(Current: Integer; Max: Integer);
var
  percentDone: Double;
begin
  progress.Max := Max;
  progress.Position := Current;
  percentDone := Current / (Max * 1000) * 100000;
  lblProgress.Caption := Format('%f %%', [percentDone]);
  Application.ProcessMessages;
end;

procedure TformExIm.btnImportClick(Sender: TObject);
var
  CSVFile: TStringList;
  i: Integer;
  Fields: TArray<string>;
begin
  lblProgress.Caption := '0.0 %';
  connectToDB();
  CSVFile := TStringList.Create;
  try
    CSVFile.LoadFromFile(ExtractFilePath(Application.ExeName) +
      'import\angsur.csv');
    progress.Max := CSVFile.Count - 1;
    progress.Position := 0;

    zConnect.StartTransaction;
    try
      for i := 1 to CSVFile.Count - 1 do
      begin
        Fields := CSVFile[i].Split([';']);
        if Length(Fields) = 8 then
        begin
          zConnect.ExecuteDirect
            (Format('INSERT INTO angsur(id_pinjam, nik, nama, periode, angsuran, utang, bayar, saldo) VALUES ("%s", "%s", "%s", "%s", %s, %s, %s, %s)',
            [Fields[0], Fields[1], Fields[2], Fields[3], Fields[4], Fields[5],
            Fields[6], Fields[7]]));
        end;
        updateProgress(i, CSVFile.Count - 1);
      end;
      zConnect.Commit;
      ShowMessage('Import successfully');
    except
      on E: Exception do
      begin
        zConnect.Rollback;
        ShowMessage('Error during import: ' + E.Message);
      end;
    end;
  finally
    CSVFile.Free;
  end;
end;

end.
