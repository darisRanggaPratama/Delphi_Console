object formHome: TformHome
  Left = 0
  Top = 0
  Caption = 'formHome'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  WindowState = wsMaximized
  DesignSize = (
    624
    441)
  TextHeight = 15
  object lblProgress: TLabel
    Left = 277
    Top = 134
    Width = 11
    Height = 37
    Caption = '-'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnUpload: TButton
    Left = 111
    Top = 67
    Width = 75
    Height = 25
    Caption = 'UPLOAD'
    TabOrder = 0
    OnClick = btnUploadClick
  end
  object progress: TProgressBar
    Left = 30
    Top = 186
    Width = 570
    Height = 17
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 1
  end
  object zConnect: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    DisableSavepoints = False
    HostName = ''
    Port = 0
    Database = ''
    User = ''
    Password = ''
    Protocol = 'sqlite'
    Left = 406
    Top = 294
  end
end
