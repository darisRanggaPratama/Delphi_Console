object DataModuleMySQL: TDataModuleMySQL
  Height = 273
  Width = 334
  object zConnect: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    Properties.Strings = (
      'RawStringEncoding=DB_CP')
    DisableSavepoints = False
    HostName = 'localhost'
    Port = 3306
    Database = 'rentaldvd'
    User = 'rangga'
    Password = 'rangga'
    Protocol = 'mysql'
    Left = 55
    Top = 12
  end
  object zQueryAnggota: TZQuery
    Connection = zConnect
    SQL.Strings = (
      'SELECT * FROM anggota ORDER BY nama ASC;')
    Params = <>
    Left = 59
    Top = 87
    object zQueryAnggotaid: TZUnicodeStringField
      DisplayLabel = 'Kode'
      DisplayWidth = 10
      FieldName = 'id'
      Required = True
      Size = 5
    end
    object zQueryAnggotanama: TZUnicodeStringField
      DisplayLabel = 'Nama Anggota'
      DisplayWidth = 50
      FieldName = 'nama'
      Required = True
      Size = 100
    end
    object zQueryAnggotapekerjaan: TZUnicodeStringField
      DisplayLabel = 'Pekerjaan'
      FieldName = 'pekerjaan'
      Required = True
    end
    object zQueryAnggotaalamat: TZUnicodeStringField
      DisplayLabel = 'Alamat'
      FieldName = 'alamat'
      Required = True
      Size = 50
    end
    object zQueryAnggotatelp: TZUnicodeStringField
      DisplayLabel = 'Telepon'
      FieldName = 'telp'
      Required = True
      Size = 15
    end
  end
  object dataSourceAnggota: TDataSource
    DataSet = zQueryAnggota
    Left = 56
    Top = 151
  end
end
