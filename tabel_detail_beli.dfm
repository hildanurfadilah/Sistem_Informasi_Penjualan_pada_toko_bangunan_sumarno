object Form8: TForm8
  Left = 192
  Top = 152
  Width = 870
  Height = 450
  Caption = 'TABEL DETAIL BELI'
  Color = clTeal
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 392
    Top = 56
    Width = 3
    Height = 13
  end
  object lbl2: TLabel
    Left = 288
    Top = 16
    Width = 187
    Height = 25
    Caption = 'TABEL DETAIL BELI'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Stencil'
    Font.Style = []
    ParentFont = False
  end
  object lbl7: TLabel
    Left = 248
    Top = 72
    Width = 35
    Height = 13
    Caption = 'BELI ID'
  end
  object lbl3: TLabel
    Left = 248
    Top = 104
    Width = 55
    Height = 13
    Caption = 'BARANG ID'
  end
  object lbl4: TLabel
    Left = 248
    Top = 136
    Width = 39
    Height = 13
    Caption = 'JUMLAH'
  end
  object lbl5: TLabel
    Left = 248
    Top = 168
    Width = 59
    Height = 13
    Caption = 'HARGA BELI'
  end
  object lbl6: TLabel
    Left = 248
    Top = 200
    Width = 56
    Height = 13
    Caption = 'TOTAL BELI'
  end
  object edt1: TEdit
    Left = 344
    Top = 72
    Width = 169
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 344
    Top = 96
    Width = 169
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 344
    Top = 128
    Width = 169
    Height = 21
    TabOrder = 2
  end
  object edt4: TEdit
    Left = 344
    Top = 160
    Width = 169
    Height = 21
    TabOrder = 3
  end
  object edt5: TEdit
    Left = 344
    Top = 192
    Width = 169
    Height = 21
    TabOrder = 4
  end
  object btn1: TButton
    Left = 136
    Top = 244
    Width = 75
    Height = 33
    Caption = 'BARU'
    TabOrder = 5
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 232
    Top = 244
    Width = 75
    Height = 33
    Caption = 'SIMPAN'
    TabOrder = 6
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 328
    Top = 244
    Width = 75
    Height = 33
    Caption = 'EDIT'
    TabOrder = 7
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 424
    Top = 244
    Width = 75
    Height = 33
    Caption = 'HAPUS'
    TabOrder = 8
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 520
    Top = 244
    Width = 75
    Height = 33
    Caption = 'BATAL'
    TabOrder = 9
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 616
    Top = 244
    Width = 75
    Height = 33
    Caption = 'LAPORAN'
    TabOrder = 10
    OnClick = btn6Click
  end
  object dbgrd1: TDBGrid
    Left = 136
    Top = 296
    Width = 585
    Height = 99
    DataSource = ds1
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
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
    Left = 680
    Top = 88
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'SELECT * From tabel_detail_beli')
    Params = <>
    Left = 728
    Top = 88
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 776
    Top = 88
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
    Left = 680
    Top = 160
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
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo13: TfrxMemoView
          Left = 226.771800000000000000
          Top = 11.338590000000000000
          Width = 317.480520000000000000
          Height = 30.236240000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Bookman Old Style'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'LAPORAN DATA DETAIL BELI')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 18.897650000000000000
        Top = 98.267780000000000000
        Width = 793.701300000000000000
        object Memo7: TfrxMemoView
          Left = 631.181510000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'total_beli')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 483.779840000000000000
          Width = 147.401670000000000000
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
        object Memo9: TfrxMemoView
          Left = 359.055350000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'jumlah')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 222.992270000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'barang_id')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 102.047310000000000000
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
            'beli_id')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 7.559060000000000000
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
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 177.637910000000000000
        Width = 793.701300000000000000
        DataSet = frxdbdtst1
        DataSetName = 'frxdbdtst1'
        RowCount = 0
        object Memo1: TfrxMemoView
          Left = 7.559060000000000000
          Top = 3.779530000000000000
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
          Left = 102.047310000000000000
          Top = 3.779530000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'beli_id'
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
            '[frxdbdtst1."beli_id"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 222.992270000000000000
          Top = 3.779530000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          DataField = 'barang_id'
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
            '[frxdbdtst1."barang_id"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 359.055350000000000000
          Top = 3.779530000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataField = 'jumlah'
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
            '[frxdbdtst1."jumlah"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 483.779840000000000000
          Top = 3.779530000000000000
          Width = 147.401670000000000000
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
        object Memo6: TfrxMemoView
          Left = 631.181510000000000000
          Top = 3.779530000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DataField = 'total_beli'
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
            '[frxdbdtst1."total_beli"]')
          ParentFont = False
        end
      end
    end
  end
  object frxdbdtst1: TfrxDBDataset
    UserName = 'frxdbdtst1'
    CloseDataSource = True
    DataSet = zqry1
    Left = 744
    Top = 160
  end
end
