object Form3: TForm3
  Left = 210
  Top = 183
  Width = 870
  Height = 442
  VertScrollBar.Position = 52
  Caption = 'USER'
  Color = clInfoBk
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 288
    Top = -36
    Width = 120
    Height = 25
    Caption = 'TABEL USER'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Stencil'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 232
    Top = 4
    Width = 17
    Height = 13
    Caption = 'NIK'
  end
  object lbl3: TLabel
    Left = 232
    Top = 36
    Width = 76
    Height = 13
    Caption = 'NAMA LENGKAP'
  end
  object lbl4: TLabel
    Left = 232
    Top = 68
    Width = 54
    Height = 13
    Caption = 'USERNAME'
  end
  object lbl5: TLabel
    Left = 232
    Top = 100
    Width = 57
    Height = 13
    Caption = 'PASSWORD'
  end
  object lbl6: TLabel
    Left = 232
    Top = 132
    Width = 74
    Height = 13
    Caption = 'JENIS KELAMIN'
  end
  object lbl7: TLabel
    Left = 232
    Top = 164
    Width = 23
    Height = 13
    Caption = 'TELP'
  end
  object lbl8: TLabel
    Left = 232
    Top = 196
    Width = 30
    Height = 13
    Caption = 'EMAIL'
  end
  object lbl9: TLabel
    Left = 232
    Top = 228
    Width = 40
    Height = 13
    Caption = 'ALAMAT'
  end
  object edt1: TEdit
    Left = 336
    Top = 4
    Width = 161
    Height = 21
    TabOrder = 0
  end
  object edt3: TEdit
    Left = 336
    Top = 60
    Width = 161
    Height = 21
    TabOrder = 1
  end
  object edt4: TEdit
    Left = 336
    Top = 92
    Width = 161
    Height = 21
    TabOrder = 2
  end
  object edt6: TEdit
    Left = 336
    Top = 156
    Width = 161
    Height = 21
    TabOrder = 3
  end
  object edt7: TEdit
    Left = 336
    Top = 188
    Width = 161
    Height = 21
    TabOrder = 4
  end
  object edt8: TEdit
    Left = 336
    Top = 220
    Width = 161
    Height = 21
    TabOrder = 5
  end
  object btn1: TButton
    Left = 136
    Top = 276
    Width = 75
    Height = 33
    Caption = 'BARU'
    TabOrder = 6
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 232
    Top = 276
    Width = 75
    Height = 33
    Caption = 'SIMPAN'
    TabOrder = 7
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 328
    Top = 276
    Width = 75
    Height = 33
    Caption = 'EDIT'
    TabOrder = 8
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 424
    Top = 276
    Width = 75
    Height = 33
    Caption = 'HAPUS'
    TabOrder = 9
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 520
    Top = 276
    Width = 75
    Height = 33
    Caption = 'BATAL'
    TabOrder = 10
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 616
    Top = 276
    Width = 75
    Height = 33
    Caption = 'LAPORAN'
    TabOrder = 11
    OnClick = btn6Click
  end
  object dbgrd1: TDBGrid
    Left = 120
    Top = 332
    Width = 681
    Height = 120
    DataSource = ds1
    TabOrder = 12
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object cmb1: TComboBox
    Left = 336
    Top = 120
    Width = 161
    Height = 21
    ItemHeight = 13
    TabOrder = 13
    Items.Strings = (
      'L'
      'P')
  end
  object edtnama: TEdit
    Left = 336
    Top = 32
    Width = 161
    Height = 21
    TabOrder = 14
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
      'SELECT * From user')
    Params = <>
    Left = 728
    Top = 88
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 776
    Top = 88
  end
  object frxreport: TfrxReport
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
    Left = 688
    Top = 160
    Datasets = <>
    Variables = <>
    Style = <>
  end
end
