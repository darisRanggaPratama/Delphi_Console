object form_export: Tform_export
  Left = 0
  Top = 0
  Caption = 'Download'
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
    Left = 165
    Top = 84
    Width = 231
    Height = 84
    Caption = 'Export To CSV'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'JetBrains Mono NL'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = btnExportClick
  end
  object btnOpenForm: TButton
    Left = 165
    Top = 216
    Width = 231
    Height = 84
    Caption = 'Open Form'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'JetBrains Mono NL'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btnOpenFormClick
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
    Left = 474
    Top = 117
  end
  object queryDB: TZQuery
    Connection = zConnect
    Params = <>
    Left = 486
    Top = 224
  end
end
