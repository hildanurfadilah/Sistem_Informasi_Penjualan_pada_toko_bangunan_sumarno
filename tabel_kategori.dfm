object Form9: TForm9
  Left = 192
  Top = 152
  Width = 870
  Height = 458
  Caption = 'TABEL KATEGORI'
  Color = clCream
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
    Width = 168
    Height = 25
    Caption = 'TABEL KATEGORI'
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
    Width = 83
    Height = 13
    Caption = 'NAMA KATEGORI'
  end
  object lbl3: TLabel
    Left = 248
    Top = 104
    Width = 52
    Height = 13
    Caption = 'DESKRIPSI'
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
    Top = 104
    Width = 169
    Height = 21
    TabOrder = 1
  end
  object btn1: TButton
    Left = 120
    Top = 164
    Width = 75
    Height = 33
    Caption = 'BARU'
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 216
    Top = 164
    Width = 75
    Height = 33
    Caption = 'SIMPAN'
    TabOrder = 3
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 312
    Top = 164
    Width = 75
    Height = 33
    Caption = 'EDIT'
    TabOrder = 4
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 408
    Top = 164
    Width = 75
    Height = 33
    Caption = 'HAPUS'
    TabOrder = 5
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 504
    Top = 164
    Width = 75
    Height = 33
    Caption = 'BATAL'
    TabOrder = 6
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 600
    Top = 164
    Width = 75
    Height = 33
    Caption = 'LAPORAN'
    TabOrder = 7
    OnClick = btn6Click
  end
  object dbgrd1: TDBGrid
    Left = 112
    Top = 227
    Width = 585
    Height = 120
    DataSource = ds1
    TabOrder = 8
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
    Left = 688
    Top = 56
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'SELECT * From tabel_kategori')
    Params = <>
    Left = 736
    Top = 56
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 784
    Top = 56
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
    Left = 712
    Top = 120
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
        Height = 60.472480000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo7: TfrxMemoView
          Left = 222.992270000000000000
          Top = 15.118120000000000000
          Width = 287.244280000000000000
          Height = 30.236240000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Bookman Old Style'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'LAPORAN DATA KATEGORI')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 18.897650000000000000
        Top = 102.047310000000000000
        Width = 793.701300000000000000
        object Memo4: TfrxMemoView
          Left = 158.740260000000000000
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
            'id')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 264.567100000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'nm_kategori')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 430.866420000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'deskripsi')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 181.417440000000000000
        Width = 793.701300000000000000
        DataSet = frxdbdtst1
        DataSetName = 'frxdbdtst1'
        RowCount = 0
        object Memo1: TfrxMemoView
          Left = 158.740260000000000000
          Width = 105.826840000000000000
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
          Left = 264.567100000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          DataField = 'nm_kategori'
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
            '[frxdbdtst1."nm_kategori"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 430.866420000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          DataField = 'deskripsi'
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
            '[frxdbdtst1."deskripsi"]')
          ParentFont = False
        end
      end
    end
  end
  object frxdbdtst1: TfrxDBDataset
    UserName = 'frxdbdtst1'
    CloseDataSource = True
    DataSet = zqry1
    Left = 776
    Top = 120
  end
end
