object myDataModule: TmyDataModule
  Height = 480
  Width = 640
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
    Left = 117
    Top = 28
  end
  object queryAnggota_: TZQuery
    Connection = zConnect
    SQL.Strings = (
      'SELECT * FROM anggota ORDER BY id ASC')
    Params = <>
    Left = 109
    Top = 133
    object queryAnggota_id: TZUnicodeStringField
      DisplayLabel = 'Kode'
      DisplayWidth = 5
      FieldName = 'id'
      Required = True
      Size = 5
    end
    object queryAnggota_nama: TZUnicodeStringField
      DisplayLabel = 'Nama Anggota'
      DisplayWidth = 38
      FieldName = 'nama'
      Required = True
      Size = 100
    end
    object queryAnggota_pekerjaan: TZUnicodeStringField
      DisplayLabel = 'Pekerjaan'
      DisplayWidth = 38
      FieldName = 'pekerjaan'
      Required = True
    end
    object queryAnggota_alamat: TZUnicodeStringField
      DisplayLabel = 'Alamat Lengkap'
      DisplayWidth = 50
      FieldName = 'alamat'
      Required = True
      Size = 50
    end
    object queryAnggota_telp: TZUnicodeStringField
      DisplayLabel = 'No. Telepon'
      DisplayWidth = 15
      FieldName = 'telp'
      Required = True
      Size = 15
    end
  end
  object sourceAnggota: TDataSource
    DataSet = queryAnggota_
    Left = 108
    Top = 223
  end
end
