object form_uploadDownload: Tform_uploadDownload
  Left = 0
  Top = 0
  Caption = 'form_uploadDownload'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object btnExport: TButton
    Left = 204
    Top = 40
    Width = 141
    Height = 37
    Caption = 'Export to CSV'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -15
    Font.Name = 'JetBrains Mono'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = btnExportClick
  end
  object btnImport: TButton
    Left = 204
    Top = 97
    Width = 141
    Height = 37
    Caption = 'Import From CSV'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -15
    Font.Name = 'JetBrains Mono'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btnImportClick
  end
  object qTest: TZQuery
    Connection = zConns
    Params = <>
    Left = 563
    Top = 127
  end
  object zConns: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    Properties.Strings = (
      'RawStringEncoding=DB_CP')
    DisableSavepoints = False
    HostName = ''
    Port = 0
    Database = ''
    User = ''
    Password = ''
    Protocol = 'sqlite'
    Left = 557
    Top = 40
  end
end
