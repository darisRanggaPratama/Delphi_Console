object form_export: Tform_export
  Left = 0
  Top = 0
  Caption = 'Export CSV'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 15
  object btnExport: TButton
    Left = 73
    Top = 36
    Width = 179
    Height = 97
    Caption = 'Export to CSV'
    TabOrder = 0
    OnClick = btnExportClick
  end
  object btnImportCSV: TButton
    Left = 73
    Top = 237
    Width = 154
    Height = 118
    Caption = 'Import to CSV'
    TabOrder = 1
    OnClick = btnImportCSVClick
  end
  object zConnect: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    DisableSavepoints = False
    HostName = 'localhost'
    Port = 3306
    Database = 'rentaldvd'
    User = 'rangga'
    Password = 'rangga'
    Protocol = 'mysql'
    Left = 291
    Top = 75
  end
  object queryAnggota: TZQuery
    Connection = zConnect
    Params = <>
    Left = 441
    Top = 99
  end
end
