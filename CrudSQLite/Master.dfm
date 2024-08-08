object form_master: Tform_master
  Left = 0
  Top = 0
  Caption = 'Master'
  ClientHeight = 690
  ClientWidth = 962
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = menuMaster
  Position = poDesktopCenter
  TextHeight = 15
  object lblKode: TLabel
    Left = 67
    Top = 53
    Width = 39
    Height = 21
    Caption = 'Kode'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblNama: TLabel
    Left = 67
    Top = 108
    Width = 46
    Height = 21
    Caption = 'Nama'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object strGridMaster: TStringGrid
    Tag = 3
    Left = 23
    Top = 159
    Width = 911
    Height = 120
    ColCount = 3
    FixedCols = 0
    RowCount = 6
    TabOrder = 0
    ColWidths = (
      64
      304
      304)
    ColAligments = (
      1
      0
      0)
  end
  object txtKode: TEdit
    Left = 158
    Top = 51
    Width = 242
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object txtNama: TEdit
    Left = 158
    Top = 106
    Width = 242
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object btnSave: TButton
    Left = 567
    Top = 53
    Width = 103
    Height = 25
    Caption = 'SAVE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = btnSaveClick
  end
  object btnAdd: TButton
    Left = 444
    Top = 53
    Width = 103
    Height = 25
    Caption = 'ADD'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = btnAddClick
  end
  object btnUpdate: TButton
    Left = 444
    Top = 108
    Width = 103
    Height = 25
    Caption = 'UPDATE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = btnUpdateClick
  end
  object btnDelete: TButton
    Left = 567
    Top = 108
    Width = 103
    Height = 25
    Caption = 'DELETE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = btnDeleteClick
  end
  object connectSQLite: TFDConnection
    Params.Strings = (
      'ConnectionDef=connectSQLite')
    Connected = True
    LoginPrompt = False
    Left = 30
    Top = 406
  end
  object BindSourceMaster: TBindSourceDB
    DataSet = tableMaster
    ScopeMappings = <>
    Left = 210
    Top = 407
  end
  object tableMaster: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = connectSQLite
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'master'
    Left = 117
    Top = 407
    object tableMaster_id: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tableMaster_kode: TWideMemoField
      DisplayWidth = 50
      FieldName = 'kode'
      Origin = 'kode'
      Required = True
      BlobType = ftWideString
    end
    object tableMaster_nama: TWideMemoField
      FieldName = 'nama'
      Origin = 'nama'
      Required = True
      BlobType = ftWideString
    end
  end
  object bindListMaster: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 313
    Top = 407
    object linkGridMaster: TLinkGridToDataSource
      Category = 'Quick Bindings'
      DataSource = BindSourceMaster
      GridControl = strGridMaster
      Columns = <
        item
          MemberName = 'id'
        end
        item
          MemberName = 'kode'
          TextWidth = 50
        end
        item
          MemberName = 'nama'
          TextWidth = 50
        end>
    end
  end
  object menuMaster: TMainMenu
    Left = 571
    Top = 413
    object ransaksi1: TMenuItem
      Caption = 'Transaksi'
      object menu_formPenjualan: TMenuItem
        Caption = 'Form Penjualan'
        OnClick = menu_formPenjualanClick
      end
    end
  end
end
