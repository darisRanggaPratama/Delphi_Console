unit Download;

interface

uses
  Winapi.Windows, System.Classes, Vcl.Controls, Vcl.Buttons, Vcl.Dialogs,
  Vcl.Forms,
  System.SysUtils;

type
  Tform_download = class(TForm)
    btnExport: TSpeedButton;
    btnExportCSV: TSpeedButton;
    procedure btnExportClick(Sender: TObject);
    procedure btnExportCSVClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_download: Tform_download;

implementation

{$R *.dfm}

uses
  System.IOUtils;

procedure Tform_download.btnExportClick(Sender: TObject);
var
  PythonScriptPath, Command: string;
  StartInfo: TStartupInfo;
  ProcessInfo: TProcessInformation;
begin
  // Path ke skrip Python Anda
  PythonScriptPath := ExtractFilePath(Application.ExeName) +
    '\library\export2Excel.py';

  // Pastikan file skrip Python ada
  if not FileExists(PythonScriptPath) then
  begin
    ShowMessage('File skrip Python tidak ditemukan!');
    Exit;
  end;

  // Buat command untuk menjalankan skrip Python
  Command := 'python "' + PythonScriptPath + '"';

  // Inisialisasi struktur StartupInfo
  FillChar(StartInfo, SizeOf(TStartupInfo), 0);
  StartInfo.cb := SizeOf(TStartupInfo);

  // Jalankan command
  if CreateProcess(nil, PChar(Command), nil, nil, False, 0, nil, nil, StartInfo,
    ProcessInfo) then
  begin
    // Tunggu proses selesai
    WaitForSingleObject(ProcessInfo.hProcess, INFINITE);

    // Tutup handle
    CloseHandle(ProcessInfo.hProcess);
    CloseHandle(ProcessInfo.hThread);

    ShowMessage('Ekspor ke Excel selesai!');
  end
  else
    ShowMessage('Gagal menjalankan skrip Python!');
end;

procedure Tform_download.btnExportCSVClick(Sender: TObject);
var
  PythonScriptPath, Command: string;
  StartInfo: TStartupInfo;
  ProcessInfo: TProcessInformation;
begin
  // Path ke skrip Python Anda
  PythonScriptPath := ExtractFilePath(Application.ExeName) +
    '\library\export2CSV.py';

  // Pastikan file skrip Python ada
  if not FileExists(PythonScriptPath) then
  begin
    ShowMessage('File skrip Python tidak ditemukan!');
    Exit;
  end;

  // Buat command untuk menjalankan skrip Python
  Command := 'python "' + PythonScriptPath + '"';

  // Inisialisasi struktur StartupInfo
  FillChar(StartInfo, SizeOf(TStartupInfo), 0);
  StartInfo.cb := SizeOf(TStartupInfo);

  // Jalankan command
  if CreateProcess(nil, PChar(Command), nil, nil, False, 0, nil, nil, StartInfo,
    ProcessInfo) then
  begin
    // Tunggu proses selesai
    WaitForSingleObject(ProcessInfo.hProcess, INFINITE);

    // Tutup handle
    CloseHandle(ProcessInfo.hProcess);
    CloseHandle(ProcessInfo.hThread);

    ShowMessage('Ekspor ke Excel selesai!');
  end
  else
    ShowMessage('Gagal menjalankan skrip Python!');
end;

end.
