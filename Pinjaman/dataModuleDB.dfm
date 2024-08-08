object myDataModule: TmyDataModule
  Height = 366
  Width = 218
  object zConnect: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    Properties.Strings = (
      'RawStringEncoding=DB_CP')
    DisableSavepoints = False
    HostName = 'localhost'
    Port = 3306
    Database = 'pinjam'
    User = 'rangga'
    Password = 'rangga'
    Protocol = 'mysql'
    LibraryLocation = 
      'D:\up2github\Delphi_Console\Pinjaman\Win32\Debug\library\libmysq' +
      'l.dll'
    Left = 99
    Top = 46
  end
  object qAngsur_: TZQuery
    Connection = zConnect
    SQL.Strings = (
      'SELECT * FROM angsur ORDER BY id_pinjam DESC, periode ASC;')
    Params = <>
    Left = 97
    Top = 161
    object qAngsur_no: TZWordField
      FieldName = 'no'
      Required = True
    end
    object qAngsur_idPinjam: TZUnicodeStringField
      FieldName = 'id_pinjam'
      Size = 3
    end
    object qAngsur_nik: TZUnicodeStringField
      FieldName = 'nik'
      Size = 5
    end
    object qAngsur_nama: TZUnicodeStringField
      FieldName = 'nama'
      Size = 45
    end
    object qAngsur_periode: TZUnicodeStringField
      FieldName = 'periode'
      Size = 7
    end
    object qAngsur_angsuran: TZIntegerField
      FieldName = 'angsuran'
    end
    object qAngsur_utang: TZIntegerField
      FieldName = 'utang'
    end
    object qAngsur_bayar: TZIntegerField
      FieldName = 'bayar'
    end
    object qAngsur_saldo: TZIntegerField
      FieldName = 'saldo'
    end
  end
  object sourceAngsur: TDataSource
    DataSet = qAngsur_
    Left = 98
    Top = 260
  end
end
