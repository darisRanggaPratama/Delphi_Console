object formDashboard: TformDashboard
  Left = 0
  Top = 0
  Caption = 'formDashboard'
  ClientHeight = 442
  ClientWidth = 690
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnShow = FormShow
  TextHeight = 15
  object pageData: TPageControl
    Left = 0
    Top = 0
    Width = 690
    Height = 89
    ActivePage = tabAnggota
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 686
    object tabAnggota: TTabSheet
      Caption = 'Data Anggota'
      object btnAnggota: TSpeedButton
        Left = 16
        Top = 16
        Width = 97
        Height = 40
        Cursor = crHandPoint
        Caption = 'Tambah Data'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'JetBrains Mono'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnAnggotaClick
      end
      object btnLaporAnggota: TSpeedButton
        Left = 136
        Top = 16
        Width = 97
        Height = 40
        Cursor = crHandPoint
        Caption = 'Data Anggota'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'JetBrains Mono'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnTabelAnggota: TSpeedButton
        Left = 291
        Top = 16
        Width = 113
        Height = 40
        Cursor = crHandPoint
        Caption = 'Tabel Anggota'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'JetBrains Mono'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnTabelAnggotaClick
      end
    end
    object tabFilm: TTabSheet
      Caption = 'Data Film'
      ImageIndex = 1
      object btnFilm: TSpeedButton
        Left = 10
        Top = 16
        Width = 97
        Height = 40
        Cursor = crHandPoint
        Caption = 'Tambah Film'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'JetBrains Mono'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnLaporFilm: TSpeedButton
        Left = 170
        Top = 17
        Width = 97
        Height = 40
        Cursor = crHandPoint
        Caption = 'Data Film'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'JetBrains Mono'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object tabPinjam: TTabSheet
      Caption = 'Data Pinjam'
      ImageIndex = 2
    end
  end
  object statusBarApp: TStatusBar
    Left = 0
    Top = 423
    Width = 690
    Height = 19
    Panels = <
      item
        Text = 'Aplikasi Rental DVD'
        Width = 200
      end
      item
        Text = 'Delphi Community'
        Width = 300
      end>
    ExplicitTop = 422
    ExplicitWidth = 686
  end
  object page_control: TPageControl
    Left = 0
    Top = 89
    Width = 690
    Height = 334
    ActivePage = InfoAnggota
    Align = alClient
    TabOrder = 2
    ExplicitWidth = 686
    ExplicitHeight = 333
    object InfoHome: TTabSheet
      Caption = 'InfoHome'
      object panelHome: TPanel
        Left = 0
        Top = 0
        Width = 682
        Height = 304
        Align = alClient
        BevelOuter = bvLowered
        Caption = 'Aplikasi Rental Film'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'JetBrains Mono'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
    end
    object InfoAnggota: TTabSheet
      Caption = 'InfoAnggota'
      ImageIndex = 1
      object gridAnggota: TDBGrid
        Left = 0
        Top = 0
        Width = 682
        Height = 304
        Align = alClient
        DataSource = DataModuleMySQL.dataSourceAnggota
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
    end
    object InfoFilm: TTabSheet
      Caption = 'InfoFilm'
      ImageIndex = 2
    end
    object InfoPinjam: TTabSheet
      Caption = 'InfoPinjam'
      ImageIndex = 3
    end
  end
end
