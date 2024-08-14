object formExIm: TformExIm
  Left = 0
  Top = 0
  Caption = 'Export-Import'
  ClientHeight = 265
  ClientWidth = 555
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object btnImport: TSpeedButton
    Left = 347
    Top = 207
    Width = 165
    Height = 38
    Caption = 'IMPORT FROM CSV'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = btnImportClick
  end
  object GroupBox1: TGroupBox
    Left = 28
    Top = 8
    Width = 496
    Height = 184
    Caption = 'EXPORT'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object lblPeriod: TLabel
      Left = 12
      Top = 85
      Width = 47
      Height = 18
      Caption = 'Period'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblPinjamID: TLabel
      Left = 12
      Top = 140
      Width = 66
      Height = 18
      Caption = 'ID Pinjam'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnExportAll: TButton
      Left = 321
      Top = 21
      Width = 163
      Height = 38
      Caption = 'Export All Data'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnExportAllClick
    end
    object btnExpPeriod: TButton
      Left = 321
      Top = 76
      Width = 163
      Height = 38
      Caption = 'Export Per Periode'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnExpPeriodClick
    end
    object btnExpID: TButton
      Left = 321
      Top = 131
      Width = 163
      Height = 38
      Caption = 'Export Per ID'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btnExpIDClick
    end
    object txtPeriod: TEdit
      Left = 122
      Top = 81
      Width = 160
      Height = 27
      Alignment = taCenter
      TabOrder = 3
    end
    object txtPinjamID: TEdit
      Left = 122
      Top = 136
      Width = 160
      Height = 27
      Alignment = taCenter
      TabOrder = 4
    end
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
    Left = 277
    Top = 193
  end
  object qAngsur: TZQuery
    Connection = zConnect
    Params = <>
    Left = 105
    Top = 191
  end
end
