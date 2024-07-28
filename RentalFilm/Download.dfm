object form_download: Tform_download
  Left = 0
  Top = 0
  Caption = 'Form Download'
  ClientHeight = 95
  ClientWidth = 352
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 15
  object btnExport: TSpeedButton
    Left = 8
    Top = 25
    Width = 150
    Height = 42
    Caption = 'Export To Excel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = btnExportClick
  end
  object btnExportCSV: TSpeedButton
    Left = 183
    Top = 25
    Width = 150
    Height = 42
    Caption = 'Export To CSV'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = btnExportCSVClick
  end
end
