object form_edit: Tform_edit
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'EDIT DATA'
  ClientHeight = 323
  ClientWidth = 626
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 15
  object grpInsert: TGroupBox
    Left = 20
    Top = 19
    Width = 578
    Height = 241
    Caption = 'Insert Data'
    TabOrder = 0
    object lblNama: TLabel
      Left = 50
      Top = 85
      Width = 40
      Height = 21
      Caption = 'Nama'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'JetBrains Mono'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblGender: TLabel
      Left = 50
      Top = 131
      Width = 60
      Height = 21
      Caption = 'Gender'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'JetBrains Mono'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblTelp: TLabel
      Left = 50
      Top = 182
      Width = 70
      Height = 21
      Caption = 'Telepon'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'JetBrains Mono'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblID: TLabel
      Left = 50
      Top = 36
      Width = 20
      Height = 21
      Caption = 'ID'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'JetBrains Mono'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object txtNama: TEdit
      Left = 211
      Top = 75
      Width = 293
      Height = 29
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'JetBrains Mono'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object txtTelp: TEdit
      Left = 211
      Top = 174
      Width = 293
      Height = 29
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'JetBrains Mono'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object comGender: TComboBox
      Left = 211
      Top = 123
      Width = 146
      Height = 29
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'JetBrains Mono'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      Text = '- Gender -'
      Items.Strings = (
        'Pria'
        'Wanita')
    end
    object txtID: TEdit
      Left = 211
      Top = 28
      Width = 121
      Height = 29
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'JetBrains Mono'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
  end
  object btnEdit: TButton
    Left = 231
    Top = 275
    Width = 75
    Height = 25
    Caption = 'EDIT'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'JetBrains Mono'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btnEditClick
  end
  object btnDelete: TButton
    Left = 523
    Top = 276
    Width = 75
    Height = 25
    Caption = 'DELETE'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'JetBrains Mono'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = btnDeleteClick
  end
end
