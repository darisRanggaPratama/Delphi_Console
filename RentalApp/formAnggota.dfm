object Form_Anggota: TForm_Anggota
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Data Anggota'
  ClientHeight = 383
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  TextHeight = 15
  object lblKodeAnggota: TLabel
    Left = 67
    Top = 73
    Width = 108
    Height = 19
    Caption = 'Kode Anggota'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'JetBrains Mono NL'
    Font.Style = []
    ParentFont = False
  end
  object lblNama: TLabel
    Left = 67
    Top = 116
    Width = 36
    Height = 19
    Caption = 'Nama'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'JetBrains Mono NL'
    Font.Style = []
    ParentFont = False
  end
  object lblPekerjaan: TLabel
    Left = 67
    Top = 162
    Width = 81
    Height = 19
    Caption = 'Pekerjaan'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'JetBrains Mono NL'
    Font.Style = []
    ParentFont = False
  end
  object lblAlamat: TLabel
    Left = 67
    Top = 209
    Width = 54
    Height = 19
    Caption = 'Alamat'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'JetBrains Mono NL'
    Font.Style = []
    ParentFont = False
  end
  object lblHP: TLabel
    Left = 67
    Top = 252
    Width = 45
    Height = 19
    Caption = 'No HP'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'JetBrains Mono NL'
    Font.Style = []
    ParentFont = False
  end
  object panelAnggota: TPanel
    Left = 0
    Top = 0
    Width = 628
    Height = 41
    Align = alTop
    Color = clAppWorkSpace
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 624
  end
  object txtKode: TEdit
    Left = 205
    Top = 70
    Width = 361
    Height = 27
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'JetBrains Mono NL'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnKeyPress = TekanEnter
  end
  object txtNama: TEdit
    Left = 205
    Top = 113
    Width = 361
    Height = 27
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'JetBrains Mono NL'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnKeyPress = TekanEnter
  end
  object txtPekerjaan: TEdit
    Left = 205
    Top = 159
    Width = 361
    Height = 27
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'JetBrains Mono NL'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnKeyPress = TekanEnter
  end
  object txtAlamat: TEdit
    Left = 205
    Top = 206
    Width = 361
    Height = 27
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'JetBrains Mono NL'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnKeyPress = TekanEnter
  end
  object txtHP: TEdit
    Left = 205
    Top = 249
    Width = 361
    Height = 27
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'JetBrains Mono NL'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnKeyPress = TekanEnter
  end
  object btnSave: TButton
    Left = 182
    Top = 315
    Width = 106
    Height = 37
    Caption = 'SAVE'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'JetBrains Mono'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = btnSaveClick
  end
  object btnEdit: TButton
    Left = 322
    Top = 315
    Width = 106
    Height = 37
    Caption = 'EDIT'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'JetBrains Mono'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
  end
  object btnDelete: TButton
    Left = 462
    Top = 315
    Width = 106
    Height = 37
    Caption = 'DELETE'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'JetBrains Mono'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
  end
end
