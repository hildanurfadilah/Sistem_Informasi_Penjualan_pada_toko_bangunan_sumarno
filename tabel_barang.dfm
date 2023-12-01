object Form5: TForm5
  Left = 307
  Top = 115
  Width = 851
  Height = 490
  Caption = 'TABEL BARANG'
  Color = clOlive
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl9: TLabel
    Left = 352
    Top = 168
    Width = 3
    Height = 13
  end
  object lbl10: TLabel
    Left = 336
    Top = 16
    Width = 149
    Height = 25
    Caption = 'TABEL BARANG'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Stencil'
    Font.Style = []
    ParentFont = False
  end
  object lbl11: TLabel
    Left = 288
    Top = 64
    Width = 65
    Height = 13
    Caption = 'KATEGORI ID'
  end
  object lbl12: TLabel
    Left = 288
    Top = 96
    Width = 48
    Height = 13
    Caption = 'BARCODE'
  end
  object lbl4: TLabel
    Left = 288
    Top = 125
    Width = 73
    Height = 13
    Caption = 'NAMA BARANG'
  end
  object lbl5: TLabel
    Left = 288
    Top = 157
    Width = 26
    Height = 13
    Caption = 'STOK'
  end
  object lbl6: TLabel
    Left = 288
    Top = 189
    Width = 62
    Height = 13
    Caption = 'HARGA JUAL'
  end
  object lbl8: TLabel
    Left = 288
    Top = 229
    Width = 59
    Height = 13
    Caption = 'HARGA BELI'
  end
  object btn7: TButton
    Left = 152
    Top = 273
    Width = 75
    Height = 33
    Caption = 'BARU'
    TabOrder = 0
    OnClick = btn1Click
  end
  object btn8: TButton
    Left = 248
    Top = 273
    Width = 75
    Height = 33
    Caption = 'SIMPAN'
    TabOrder = 1
    OnClick = btn8Click
  end
  object btn9: TButton
    Left = 344
    Top = 273
    Width = 75
    Height = 33
    Caption = 'EDIT'
    TabOrder = 2
    OnClick = btn9Click
  end
  object btn10: TButton
    Left = 440
    Top = 273
    Width = 75
    Height = 33
    Caption = 'HAPUS'
    TabOrder = 3
    OnClick = btn10Click
  end
  object btn11: TButton
    Left = 536
    Top = 273
    Width = 75
    Height = 33
    Caption = 'BATAL'
    TabOrder = 4
    OnClick = btn11Click
  end
  object btn12: TButton
    Left = 632
    Top = 273
    Width = 75
    Height = 33
    Caption = 'LAPORAN'
    TabOrder = 5
    OnClick = btn12Click
  end
  object dbgrd1: TDBGrid
    Left = 152
    Top = 328
    Width = 585
    Height = 105
    DataSource = ds1
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object edt1: TEdit
    Left = 392
    Top = 56
    Width = 145
    Height = 21
    TabOrder = 7
  end
  object edt2: TEdit
    Left = 392
    Top = 88
    Width = 145
    Height = 21
    TabOrder = 8
  end
  object edt3: TEdit
    Left = 392
    Top = 120
    Width = 145
    Height = 21
    TabOrder = 9
  end
  object edt4: TEdit
    Left = 392
    Top = 152
    Width = 145
    Height = 21
    TabOrder = 10
  end
  object edt5: TEdit
    Left = 392
    Top = 184
    Width = 145
    Height = 21
    TabOrder = 11
  end
  object edt6: TEdit
    Left = 392
    Top = 224
    Width = 145
    Height = 21
    TabOrder = 12
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'tokobangunan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'C:\Users\ACER\Documents\SEMESTER 5\VISUAL 3\UAS VISUAL 3\libmysq' +
      'l.dll'
    Left = 648
    Top = 72
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'SELECT * From tabel_barang')
    Params = <>
    Left = 696
    Top = 72
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 744
    Top = 72
  end
  object frxreport1: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45259.572974537030000000
    ReportOptions.LastChange = 45259.572974537030000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 648
    Top = 152
    Datasets = <
      item
        DataSet = frxdbdtst1
        DataSetName = 'frxdbdtst1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      object ReportTitle1: TfrxReportTitle
        Height = 52.913420000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo15: TfrxMemoView
          Left = 272.126160000000000000
          Top = 7.559060000000000000
          Width = 260.787570000000000000
          Height = 30.236240000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Bookman Old Style'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'LAPORAN DATA BARANG')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 18.897650000000000000
        Top = 94.488250000000000000
        Width = 793.701300000000000000
        object Memo3: TfrxMemoView
          Left = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'id')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 98.267780000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'kategori_id')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 204.094620000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'barcode')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 306.141930000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'nama_barang')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 427.086890000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'stok')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 536.693260000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'harga_jual')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 646.299630000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'harga_beli')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 173.858380000000000000
        Width = 793.701300000000000000
        DataSet = frxdbdtst1
        DataSetName = 'frxdbdtst1'
        RowCount = 0
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'id'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."id"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 98.267780000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'kategori_id'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."kategori_id"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 204.094620000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'barcode'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."barcode"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 306.141930000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'nama_barang'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."nama_barang"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 427.086890000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'stok'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."stok"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 536.693260000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'harga_jual'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."harga_jual"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 646.299630000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DataField = 'harga_beli'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."harga_beli"]')
          ParentFont = False
        end
      end
    end
  end
  object frxdbdtst1: TfrxDBDataset
    UserName = 'frxdbdtst1'
    CloseDataSource = True
    DataSet = zqry1
    Left = 720
    Top = 152
  end
end
