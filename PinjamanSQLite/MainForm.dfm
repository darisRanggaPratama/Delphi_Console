object formHome: TformHome
  Left = 0
  Top = 0
  Caption = 'formHome'
  ClientHeight = 756
  ClientWidth = 777
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = menuHome
  Position = poScreenCenter
  WindowState = wsMaximized
  OnShow = FormShow
  DesignSize = (
    777
    756)
  TextHeight = 15
  object statusDB: TStatusBar
    Left = 0
    Top = 737
    Width = 777
    Height = 19
    Panels = <
      item
        Text = 'DATABASE ?'
        Width = 550
      end
      item
        Alignment = taRightJustify
        Text = 'LIBRARY ?'
        Width = 50
      end>
    ExplicitTop = 736
    ExplicitWidth = 773
  end
  object pageHome: TPageControl
    Left = 0
    Top = -1
    Width = 777
    Height = 732
    ActivePage = tabData
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 1
    ExplicitWidth = 773
    ExplicitHeight = 731
    object tabHome: TTabSheet
      Caption = 'Home'
      object lblHome: TLabel
        Left = 0
        Top = 666
        Width = 769
        Height = 36
        Align = alBottom
        Alignment = taCenter
        Caption = 'DATA PINJAMAN'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'JetBrains Mono'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 208
      end
    end
    object tabData: TTabSheet
      Caption = 'Data'
      ImageIndex = 1
      DesignSize = (
        769
        702)
      object lblSearch: TLabel
        Left = 52
        Top = 32
        Width = 54
        Height = 19
        Caption = 'Search'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'JetBrains Mono NL'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object gridAngsur: TDBGrid
        Left = -4
        Top = 98
        Width = 775
        Height = 608
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = myDataModule.sourceAngsur
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnDblClick = gridAngsurDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'no'
            Width = 20
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'id_pinjam'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nik'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nama'
            Width = 250
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'periode'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'angsuran'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'utang'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'bayar'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'saldo'
            Width = 100
            Visible = True
          end>
      end
      object txtSearch: TEdit
        Left = 136
        Top = 32
        Width = 630
        Height = 27
        Alignment = taCenter
        Anchors = [akLeft, akTop, akRight]
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'JetBrains Mono'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnChange = txtSearchChange
        ExplicitWidth = 626
      end
    end
  end
  object menuHome: TMainMenu
    Left = 52
    Top = 625
    object Form_submenu: TMenuItem
      Caption = 'Form'
      object InputPinjam_sub: TMenuItem
        Caption = 'Input Pinjam'
        OnClick = InputPinjam_subClick
      end
    end
    object Data_submenu: TMenuItem
      Caption = 'Data'
      object ExportImport_sub: TMenuItem
        Caption = 'Export-Import'
        OnClick = ExportImport_subClick
      end
      object search_sub: TMenuItem
        Caption = 'Search'
        OnClick = search_subClick
      end
    end
  end
end
