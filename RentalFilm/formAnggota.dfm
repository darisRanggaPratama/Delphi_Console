object form_anggota: Tform_anggota
  Left = 0
  Top = 0
  Caption = 'Data Anggota'
  ClientHeight = 384
  ClientWidth = 582
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  TextHeight = 15
  object lblKodeAnggota: TLabel
    Left = 40
    Top = 66
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
    Left = 40
    Top = 109
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
    Left = 40
    Top = 155
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
    Left = 40
    Top = 202
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
    Left = 40
    Top = 245
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
    Width = 582
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 578
  end
  object txtKode: TEdit
    Left = 178
    Top = 63
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
    Left = 178
    Top = 106
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
    Left = 178
    Top = 152
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
    Left = 178
    Top = 199
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
    Left = 178
    Top = 242
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
    Left = 40
    Top = 304
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
    Left = 180
    Top = 304
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
    OnClick = btnEditClick
  end
  object btnDelete: TButton
    Left = 320
    Top = 304
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
    OnClick = btnDeleteClick
  end
  object btnClear: TButton
    Left = 458
    Top = 304
    Width = 106
    Height = 37
    Caption = 'CLEAR'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'JetBrains Mono'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnClick = btnClearClick
  end
end
