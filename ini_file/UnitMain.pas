unit UnitMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.IniFiles, Vcl.StdCtrls;

type
  Tform_main = class(TForm)
    btnCek: TButton;
    lblUserName: TLabel;
    txtUserName: TEdit;
    lblPassword: TLabel;
    txtPassword: TEdit;
    lblDatabase: TLabel;
    txtDatabase: TEdit;
    lblPort: TLabel;
    txtPort: TEdit;
    btnSetting: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnCekClick(Sender: TObject);
    procedure btnSettingClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure createConfiguration;
    function bacaUserName: string;
    function bacaPassword: string;
    function bacaDatabase: string;
    function bacaPort: Integer;
    procedure tulisUsername(value: string);
    procedure tulisPassword(value: string);
    procedure tulisDatabase(value: string);
    procedure tulisPort(value: Integer);

  end;

var
  form_main: Tform_main;
  namaFile: String;
  myConfig: TIniFile;

implementation

{$R *.dfm}

function Tform_main.bacaDatabase: string;
begin
  try
    namaFile := ExtractFilePath(Application.ExeName) + '\setting\setApps.ini';
    if FileExists(namaFile) then
    begin
      myConfig := TIniFile.Create(namaFile);
      Result := myConfig.ReadString('Setting', 'Database', '');
      myConfig.Free;
    end;

  except
    on error: Exception do
      ShowMessage(error.Message);
  end;
end;

function Tform_main.bacaPassword: string;
begin
  try
    namaFile := ExtractFilePath(Application.ExeName) + '\setting\setApps.ini';
    if FileExists(namaFile) then
    begin
      myConfig := TIniFile.Create(namaFile);
      Result := myConfig.ReadString('Setting', 'Password', '');
      myConfig.Free;
    end;

  except
    on error: Exception do
      ShowMessage(error.Message);
  end;
end;

function Tform_main.bacaPort: Integer;
begin
  Result := 0;
  try
    namaFile := ExtractFilePath(Application.ExeName) + '\setting\setApps.ini';
    if FileExists(namaFile) then
    begin
      myConfig := TIniFile.Create(namaFile);
      Result := myConfig.ReadInteger('Setting', 'Port', 0);
      myConfig.Free;
    end;

  except
    on error: Exception do
      ShowMessage(error.Message);
  end;
end;

function Tform_main.bacaUserName: string;
begin
  try
    namaFile := ExtractFilePath(Application.ExeName) + '\setting\setApps.ini';
    if FileExists(namaFile) then
    begin
      myConfig := TIniFile.Create(namaFile);
      Result := myConfig.ReadString('Setting', 'Username', '');
      myConfig.Free;
    end;

  except
    on error: Exception do
      ShowMessage(error.Message);
  end;
end;

procedure Tform_main.btnCekClick(Sender: TObject);
begin
  txtUserName.Text := bacaUserName;
  txtPassword.Text := bacaPassword;
  txtDatabase.Text := bacaDatabase;
  txtPort.Text := IntToStr(bacaPort);

  // ShowMessage(bacaDatabase);
  // ShowMessage(bacaUserName);
  // ShowMessage(bacaPassword);
  // ShowMessage(bacaPort.ToString);
end;

procedure Tform_main.btnSettingClick(Sender: TObject);
begin
tulisUsername(txtUserName.Text);
tulisPassword(txtPassword.text);
tulisDatabase(txtDatabase.Text);
tulisPort(StrToInt(txtPort.Text));
end;

procedure Tform_main.createConfiguration;
begin
  try
    namaFile := ExtractFilePath(Application.ExeName) + '\setting\setApps.ini';
    if FileExists(namaFile) then
      Exit
    else
    begin
      myConfig := TIniFile.Create(namaFile);
      with myConfig do
      begin
        WriteString('Setting', 'Username', '-');
        WriteString('Setting', 'Password', '-');
        WriteInteger('Setting', 'Port', 0);
        WriteString('Setting', 'Database', '-');
        Free;
      end;
    end;
  except
    on error: Exception do
      ShowMessage(error.Message);
  end;

end;

procedure Tform_main.FormCreate(Sender: TObject);
begin
  createConfiguration;
end;

procedure Tform_main.tulisDatabase(value: string);
begin
  try
    namaFile := ExtractFilePath(Application.ExeName) + '\setting\setApps.ini';
    if FileExists(namaFile) then
    begin
      myConfig := TIniFile.Create(namaFile);
      myConfig.WriteString('Setting', 'Database', value);
      myConfig.Free;
    end;
  except
    on error: Exception do
      ShowMessage(error.Message);
  end;
end;

procedure Tform_main.tulisPassword(value: string);
begin
  try
    namaFile := ExtractFilePath(Application.ExeName) + '\setting\setApps.ini';
    if FileExists(namaFile) then
    begin
      myConfig := TIniFile.Create(namaFile);
      myConfig.WriteString('Setting', 'Password', value);
      myConfig.Free;
    end;
  except
    on error: Exception do
      ShowMessage(error.Message);
  end;
end;

procedure Tform_main.tulisPort(value: Integer);
begin
  try
    namaFile := ExtractFilePath(Application.ExeName) + '\setting\setApps.ini';
    if FileExists(namaFile) then
    begin
      myConfig := TIniFile.Create(namaFile);
      myConfig.WriteInteger('Setting', 'Port', value);
      myConfig.Free;
    end;
  except
    on error: Exception do
      ShowMessage(error.Message);
  end;
end;

procedure Tform_main.tulisUsername(value: string);
begin
  try
    namaFile := ExtractFilePath(Application.ExeName) + '\setting\setApps.ini';
    if FileExists(namaFile) then
    begin
      myConfig := TIniFile.Create(namaFile);
      myConfig.WriteString('Setting', 'Username', value);
      myConfig.Free;
    end;
  except
    on error: Exception do
      ShowMessage(error.Message);
  end;
end;

end.
