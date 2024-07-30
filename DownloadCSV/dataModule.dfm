object myDataModule: TmyDataModule
  Height = 480
  Width = 640
  object zConnect: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    DisableSavepoints = False
    HostName = 'localhost'
    Port = 3306
    Database = 'rentaldvd'
    User = 'rangga'
    Password = 'rangga'
    Protocol = 'mysql'
    Left = 186
    Top = 55
  end
  object queryAnggota: TZQuery
    Connection = zConnect
    Params = <>
    Left = 144
    Top = 183
  end
end
