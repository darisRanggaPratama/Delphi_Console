object formHome: TformHome
  Left = 0
  Top = 0
  Caption = 'formHome'
  ClientHeight = 758
  ClientWidth = 767
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenuForm
  Position = poScreenCenter
  OnShow = FormShow
  DesignSize = (
    767
    758)
  TextHeight = 15
  object pageHome: TPageControl
    Left = -3
    Top = 8
    Width = 770
    Height = 742
    ActivePage = tabData
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    ExplicitWidth = 766
    ExplicitHeight = 741
    object tabHome: TTabSheet
      Caption = 'tabHome'
      object lblHome: TLabel
        Left = 0
        Top = 0
        Width = 762
        Height = 712
        Align = alClient
        Alignment = taCenter
        Caption = 'DATA PIUTANG KARYAWAN'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -27
        Font.Name = 'JetBrains Mono NL'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 336
        ExplicitHeight = 36
      end
    end
    object tabData: TTabSheet
      Caption = 'tabData'
      ImageIndex = 1
      DesignSize = (
        762
        712)
      object lblSearch: TLabel
        Left = 29
        Top = 18
        Width = 62
        Height = 18
        Caption = 'SEARCH'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object gridAngsur: TDBGrid
        Left = 3
        Top = 64
        Width = 762
        Height = 647
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = myDataModule.sourceAngsur
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnDblClick = gridAngsurDblClick
      end
      object txtSearch: TEdit
        Left = 152
        Top = 16
        Width = 607
        Height = 28
        Anchors = [akLeft, akTop, akRight]
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnChange = txtSearchChange
      end
    end
  end
  object MainMenuForm: TMainMenu
    Left = 36
    Top = 444
    object menuForm: TMenuItem
      Caption = 'Form'
      object inputPinjam: TMenuItem
        Caption = 'Input Pinjam'
        OnClick = inputPinjamClick
      end
    end
    object menuData: TMenuItem
      Caption = 'Data'
      object importExport: TMenuItem
        Caption = 'Export-Import'
        OnClick = importExportClick
      end
    end
  end
end
