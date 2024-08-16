unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZAbstractConnection,
  ZConnection, Vcl.ComCtrls;

type
  TformHome = class(TForm)
    zConnect: TZConnection;
    btnUpload: TButton;
    progress: TProgressBar;
    lblProgress: TLabel;
    procedure btnUploadClick(Sender: TObject);
  private
    { Private declarations }
    procedure connectDB();
    procedure updateProgress(Current, Max: Integer);
  public
    { Public declarations }
  end;

var
  formHome: TformHome;

implementation

uses
  System.IOUtils;

{$R *.dfm}

procedure TformHome.btnUploadClick(Sender: TObject);
var
  CSVFile: TStringList;
  i: Integer;
  Fields: TArray<string>;
begin
  lblProgress.Caption := '0.0 %';
  connectDB();
  CSVFile := TStringList.Create;
  try
    CSVFile.LoadFromFile(ExtractFilePath(Application.ExeName) + 'data.csv');
    // Ensure 'data.csv' is in the same directory as the executable

    progress.Max := CSVFile.Count - 1; // Assuming first line is header
    progress.Position := 0;

    zConnect.StartTransaction;
    try
      for i := 1 to CSVFile.Count - 1 do // Start from 1 to skip header
      begin
        Fields := CSVFile[i].Split([';']);
        if Length(Fields) = 2 then
        begin
          zConnect.ExecuteDirect
            (Format('INSERT INTO test (nama, umur) VALUES ("%s", %s)',
            [Fields[0], Fields[1]]));
        end;
        updateProgress(i, CSVFile.Count - 1);
      end;
      zConnect.Commit;
      ShowMessage('Proses import sudah selesai');
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

procedure TformHome.connectDB();
begin
  zConnect.Database := ExtractFilePath(Application.ExeName) + 'testing.sqlite3';
  zConnect.Protocol := 'sqlite';
  zConnect.LibraryLocation := ExtractFilePath(Application.ExeName) +
    'sqlite3.dll';
  zConnect.Connect;
end;

procedure TformHome.updateProgress(Current, Max: Integer);
var
  PercentDone: Double;
begin
  progress.Max := Max;
  progress.Position := Current;
  PercentDone := Current / (Max * 1000) * 100000;
  lblProgress.Caption := Format('%f %%', [PercentDone]);
  Application.ProcessMessages; // Allow UI to update
end;

end.
