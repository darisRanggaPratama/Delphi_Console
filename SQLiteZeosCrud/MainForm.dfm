object form_main: Tform_main
  Left = 0
  Top = 0
  Caption = 'Main Form'
  ClientHeight = 679
  ClientWidth = 928
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object lblCreateTable: TLabel
    Left = 365
    Top = 16
    Width = 45
    Height = 19
    Caption = 'Table'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -15
    Font.Name = 'JetBrains Mono NL'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblFirstName: TLabel
    Left = 34
    Top = 142
    Width = 90
    Height = 19
    Caption = 'First Name'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -15
    Font.Name = 'JetBrains Mono NL'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblLastName: TLabel
    Left = 34
    Top = 216
    Width = 81
    Height = 19
    Caption = 'Last Name'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -15
    Font.Name = 'JetBrains Mono NL'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblFirstNameUpdate: TLabel
    Left = 280
    Top = 142
    Width = 90
    Height = 19
    Caption = 'First Name'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -15
    Font.Name = 'JetBrains Mono NL'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblLastNameUpdate: TLabel
    Left = 280
    Top = 216
    Width = 81
    Height = 19
    Caption = 'Last Name'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -15
    Font.Name = 'JetBrains Mono NL'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblOpenedDB: TLabel
    Left = 8
    Top = 79
    Width = 144
    Height = 19
    Caption = 'Opened Database?'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -15
    Font.Name = 'JetBrains Mono NL'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblTextID: TLabel
    Left = 531
    Top = 142
    Width = 18
    Height = 19
    Caption = 'ID'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -15
    Font.Name = 'JetBrains Mono NL'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblID: TLabel
    Left = 531
    Top = 170
    Width = 9
    Height = 19
    Caption = '?'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -15
    Font.Name = 'JetBrains Mono NL'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object grid: TDBGrid
    Left = 0
    Top = 374
    Width = 928
    Height = 305
    Align = alBottom
    DataSource = dataSource
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnCellClick = gridCellClick
  end
  object btnOpenDB: TButton
    Left = 8
    Top = 8
    Width = 141
    Height = 37
    Caption = 'Open Database'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -15
    Font.Name = 'JetBrains Mono'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btnOpenDBClick
  end
  object btnCreateTable: TButton
    Left = 170
    Top = 8
    Width = 141
    Height = 37
    Caption = 'Create Table'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -15
    Font.Name = 'JetBrains Mono'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = btnCreateTableClick
  end
  object cBoxTable: TComboBox
    Left = 457
    Top = 16
    Width = 173
    Height = 27
    Style = csDropDownList
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'JetBrains Mono NL'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnChange = cBoxTableChange
  end
  object txtFirstName: TEdit
    Left = 34
    Top = 167
    Width = 221
    Height = 27
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'JetBrains Mono NL'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object txtLastName: TEdit
    Left = 34
    Top = 241
    Width = 221
    Height = 27
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'JetBrains Mono NL'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object btnInsert: TButton
    Left = 34
    Top = 289
    Width = 141
    Height = 37
    Caption = 'Insert'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -15
    Font.Name = 'JetBrains Mono'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = btnInsertClick
  end
  object txtFirstNameUpdate: TEdit
    Left = 280
    Top = 167
    Width = 221
    Height = 27
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'JetBrains Mono NL'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object txtLastNameUpdate: TEdit
    Left = 280
    Top = 241
    Width = 221
    Height = 27
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'JetBrains Mono NL'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object btnUpdate: TButton
    Left = 280
    Top = 289
    Width = 141
    Height = 37
    Caption = 'Update'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -15
    Font.Name = 'JetBrains Mono'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnClick = btnUpdateClick
  end
  object btnDelete: TButton
    Left = 556
    Top = 289
    Width = 141
    Height = 37
    Caption = 'Delete'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -15
    Font.Name = 'JetBrains Mono'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    OnClick = btnDeleteClick
  end
  object btnCSV: TButton
    Left = 682
    Top = 8
    Width = 141
    Height = 37
    Caption = 'CSV'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -15
    Font.Name = 'JetBrains Mono'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
    OnClick = btnCSVClick
  end
  object zConn: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    SQLHourGlass = True
    DisableSavepoints = False
    HostName = ''
    Port = 0
    Database = ''
    User = ''
    Password = ''
    Protocol = 'sqlite'
    LibraryLocation = 
      'D:\up2github\Delphi_Console\SQLiteZeosCrud\Win32\Debug\sqlite3.d' +
      'll'
    Left = 890
    Top = 10
  end
  object query1: TZQuery
    Connection = zConn
    Params = <>
    Left = 892
    Top = 98
  end
  object query2: TZQuery
    Connection = zConn
    Params = <>
    Left = 893
    Top = 216
  end
  object dataSource: TDataSource
    DataSet = query2
    Left = 884
    Top = 301
  end
end
