object Form_Main: TForm_Main
  Left = 0
  Top = 0
  Caption = 'Contact'
  ClientHeight = 647
  ClientWidth = 543
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 15
  object lbl_fname: TLabel
    Left = 45
    Top = 45
    Width = 41
    Height = 17
    Caption = 'fname'
    FocusControl = txt_fname
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lbl_mname: TLabel
    Left = 45
    Top = 89
    Width = 50
    Height = 17
    Caption = 'mname'
    FocusControl = txt_mname
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lbl_maidenname: TLabel
    Left = 45
    Top = 133
    Width = 85
    Height = 17
    Caption = 'maidenname'
    FocusControl = txt_maidenname
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lbl_lname: TLabel
    Left = 45
    Top = 177
    Width = 40
    Height = 17
    Caption = 'lname'
    FocusControl = txt_lname
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lbl_address1: TLabel
    Left = 45
    Top = 221
    Width = 61
    Height = 17
    Caption = 'address1'
    FocusControl = txt_address1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lbl_address2: TLabel
    Left = 45
    Top = 265
    Width = 61
    Height = 17
    Caption = 'address2'
    FocusControl = txt_address2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lbl_city: TLabel
    Left = 45
    Top = 309
    Width = 22
    Height = 17
    Caption = 'city'
    FocusControl = txt_city
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lbl_state: TLabel
    Left = 45
    Top = 353
    Width = 32
    Height = 17
    Caption = 'state'
    FocusControl = txt_state
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lbl_zip: TLabel
    Left = 45
    Top = 397
    Width = 19
    Height = 17
    Caption = 'zip'
    FocusControl = txt_zip
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lbl_phone: TLabel
    Left = 45
    Top = 441
    Width = 40
    Height = 17
    Caption = 'phone'
    FocusControl = txt_phone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lbl_email: TLabel
    Left = 45
    Top = 485
    Width = 35
    Height = 17
    Caption = 'email'
    FocusControl = txt_email
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lbl_notes: TLabel
    Left = 45
    Top = 529
    Width = 36
    Height = 17
    Caption = 'notes'
    FocusControl = txt_notes
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object txt_fname: TDBEdit
    Left = 45
    Top = 61
    Width = 304
    Height = 25
    DataField = 'fname'
    DataSource = dsContact
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object txt_mname: TDBEdit
    Left = 45
    Top = 105
    Width = 304
    Height = 25
    DataField = 'mname'
    DataSource = dsContact
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object txt_maidenname: TDBEdit
    Left = 45
    Top = 149
    Width = 304
    Height = 25
    DataField = 'maidenname'
    DataSource = dsContact
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object txt_lname: TDBEdit
    Left = 45
    Top = 193
    Width = 304
    Height = 25
    DataField = 'lname'
    DataSource = dsContact
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object txt_address1: TDBEdit
    Left = 45
    Top = 237
    Width = 454
    Height = 25
    DataField = 'address1'
    DataSource = dsContact
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object txt_address2: TDBEdit
    Left = 45
    Top = 281
    Width = 454
    Height = 25
    DataField = 'address2'
    DataSource = dsContact
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object txt_city: TDBEdit
    Left = 45
    Top = 325
    Width = 454
    Height = 25
    DataField = 'city'
    DataSource = dsContact
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object txt_state: TDBEdit
    Left = 45
    Top = 369
    Width = 34
    Height = 25
    DataField = 'state'
    DataSource = dsContact
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object txt_zip: TDBEdit
    Left = 45
    Top = 413
    Width = 154
    Height = 25
    DataField = 'zip'
    DataSource = dsContact
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object txt_phone: TDBEdit
    Left = 45
    Top = 457
    Width = 229
    Height = 25
    DataField = 'phone'
    DataSource = dsContact
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
  end
  object txt_email: TDBEdit
    Left = 45
    Top = 501
    Width = 304
    Height = 25
    DataField = 'email'
    DataSource = dsContact
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
  end
  object txt_notes: TDBEdit
    Left = 45
    Top = 545
    Width = 454
    Height = 25
    DataField = 'notes'
    DataSource = dsContact
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
  end
  object naviContact: TDBNavigator
    Left = 45
    Top = 8
    Width = 460
    Height = 29
    DataSource = dsContact
    TabOrder = 12
  end
  object connectSQL: TFDConnection
    Params.Strings = (
      'ConnectionDef=SQLiteContact')
    Connected = True
    LoginPrompt = False
    Left = 55
    Top = 595
  end
  object ContactsTable: TFDQuery
    Connection = connectSQL
    SQL.Strings = (
      'SELECT * FROM contacts')
    Left = 148
    Top = 595
    object cont_id: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object cont_fname: TWideStringField
      FieldName = 'fname'
      Origin = 'fname'
      Required = True
    end
    object cont_mname: TWideStringField
      FieldName = 'mname'
      Origin = 'mname'
    end
    object cont_maidenname: TWideStringField
      FieldName = 'maidenname'
      Origin = 'maidenname'
    end
    object cont_lname: TWideStringField
      FieldName = 'lname'
      Origin = 'lname'
      Required = True
    end
    object cont_address1: TWideStringField
      FieldName = 'address1'
      Origin = 'address1'
      Size = 30
    end
    object cont_address2: TWideStringField
      FieldName = 'address2'
      Origin = 'address2'
      Size = 30
    end
    object cont_city: TWideStringField
      FieldName = 'city'
      Origin = 'city'
      Size = 30
    end
    object cont_state: TWideStringField
      FieldName = 'state'
      Origin = 'state'
      Size = 2
    end
    object cont_zip: TWideStringField
      FieldName = 'zip'
      Origin = 'zip'
      Size = 10
    end
    object cont_phone: TWideStringField
      FieldName = 'phone'
      Origin = 'phone'
      Size = 15
    end
    object cont_email: TWideStringField
      FieldName = 'email'
      Origin = 'email'
    end
    object cont_notes: TWideStringField
      FieldName = 'notes'
      Origin = 'notes'
      Size = 50
    end
  end
  object dsContact: TDataSource
    DataSet = ContactsTable
    Left = 231
    Top = 599
  end
end
