object Form10: TForm10
  Left = 196
  Top = 158
  Width = 870
  Height = 450
  Caption = 'TABEL KOSTUMER'
  Color = clAppWorkSpace
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
    Width = 176
    Height = 25
    Caption = 'TABEL KOSTUMER'
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
    Width = 86
    Height = 13
    Caption = 'NAMA KOSTUMER'
  end
  object lbl3: TLabel
    Left = 248
    Top = 104
    Width = 74
    Height = 13
    Caption = 'JENIS KELAMIN'
  end
  object lbl4: TLabel
    Left = 248
    Top = 136
    Width = 40
    Height = 13
    Caption = 'ALAMAT'
  end
  object lbl5: TLabel
    Left = 248
    Top = 168
    Width = 41
    Height = 13
    Caption = 'NO TELP'
  end
  object edt1: TEdit
    Left = 344
    Top = 72
    Width = 169
    Height = 21
    TabOrder = 0
  end
  object edt3: TEdit
    Left = 344
    Top = 128
    Width = 169
    Height = 21
    TabOrder = 1
  end
  object edt4: TEdit
    Left = 344
    Top = 160
    Width = 169
    Height = 21
    TabOrder = 2
  end
  object btn1: TButton
    Left = 136
    Top = 220
    Width = 75
    Height = 33
    Caption = 'BARU'
    TabOrder = 3
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 232
    Top = 220
    Width = 75
    Height = 33
    Caption = 'SIMPAN'
    TabOrder = 4
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 328
    Top = 220
    Width = 75
    Height = 33
    Caption = 'EDIT'
    TabOrder = 5
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 424
    Top = 220
    Width = 75
    Height = 33
    Caption = 'HAPUS'
    TabOrder = 6
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 520
    Top = 220
    Width = 75
    Height = 33
    Caption = 'BATAL'
    TabOrder = 7
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 616
    Top = 220
    Width = 75
    Height = 33
    Caption = 'LAPORAN'
    TabOrder = 8
  end
  object dbgrd1: TDBGrid
    Left = 136
    Top = 267
    Width = 585
    Height = 120
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object cmb1: TComboBox
    Left = 344
    Top = 104
    Width = 169
    Height = 21
    ItemHeight = 13
    TabOrder = 10
    Items.Strings = (
      'L'
      'P')
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
    SQL.Strings = (
      'SELECT * From kostumer')
    Params = <>
    Left = 728
    Top = 88
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 776
    Top = 88
  end
end
