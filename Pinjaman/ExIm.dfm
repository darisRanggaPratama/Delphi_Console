object formExIm: TformExIm
  Left = 0
  Top = 0
  Caption = 'Export-Import'
  ClientHeight = 177
  ClientWidth = 268
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object btnExport: TSpeedButton
    Left = 52
    Top = 17
    Width = 165
    Height = 61
    Caption = 'EXPORT TO CSV'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'JetBrains Mono NL'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = btnExportClick
  end
  object btnImport: TSpeedButton
    Left = 52
    Top = 93
    Width = 165
    Height = 61
    Caption = 'IMPORT FROM CSV'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'JetBrains Mono NL'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = btnImportClick
  end
  object zConnect: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    DisableSavepoints = False
    HostName = 'localhost'
    Port = 3306
    Database = 'pinjam'
    User = 'rangga'
    Password = 'rangga'
    Protocol = 'mysql'
    Left = 223
    Top = 28
  end
  object qAngsur: TZQuery
    Connection = zConnect
    Params = <>
    Left = 224
    Top = 103
  end
end
