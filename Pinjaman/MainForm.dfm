object formHome: TformHome
  Left = 0
  Top = 0
  Caption = 'formHome'
  ClientHeight = 764
  ClientWidth = 767
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenuForm
  Position = poScreenCenter
  WindowState = wsMaximized
  OnShow = FormShow
  DesignSize = (
    767
    764)
  TextHeight = 15
  object pageHome: TPageControl
    Left = -3
    Top = 8
    Width = 770
    Height = 757
    ActivePage = tabHome
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    ExplicitWidth = 766
    ExplicitHeight = 756
    object tabHome: TTabSheet
      Caption = 'tabHome'
      object lblHome: TLabel
        Left = 0
        Top = 0
        Width = 762
        Height = 708
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
      object statBar: TStatusBar
        Left = 0
        Top = 708
        Width = 762
        Height = 19
        Panels = <
          item
            Text = 'Library ?'
            Width = 1000
          end
          item
            Text = 'Info ?'
            Width = 50
          end>
        ExplicitTop = 707
        ExplicitWidth = 758
      end
    end
    object tabData: TTabSheet
      Caption = 'tabData'
      ImageIndex = 1
      DesignSize = (
        762
        727)
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
        Height = 662
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
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'no'
            Width = 20
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'id_pinjam'
            Width = 50
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'nik'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nama'
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'periode'
            Width = 85
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'angsuran'
            Width = 85
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'utang'
            Width = 85
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'bayar'
            Width = 85
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'saldo'
            Width = 85
            Visible = True
          end>
      end
      object txtSearch: TEdit
        Left = 152
        Top = 16
        Width = 607
        Height = 28
        Alignment = taCenter
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
      object inputPinjam_sub: TMenuItem
        Caption = 'Input Pinjam'
        OnClick = inputPinjam_subClick
      end
    end
    object menuData: TMenuItem
      Caption = 'Data'
      object importExport_sub: TMenuItem
        Caption = 'Export-Import'
        OnClick = importExport_subClick
      end
      object search_sub: TMenuItem
        Caption = 'Search'
        OnClick = search_subClick
      end
    end
  end
end
