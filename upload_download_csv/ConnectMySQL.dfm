object DataModuleDB: TDataModuleDB
  Height = 292
  Width = 313
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
    Left = 102
    Top = 20
  end
  object queryDB: TZQuery
    Connection = zConnect
    Params = <>
    Left = 108
    Top = 153
  end
end
