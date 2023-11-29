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
  end
  object dbgrd2: TDBGrid
    Left = 152
    Top = 328
    Width = 585
    Height = 105
    DataSource = ds2
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd2CellClick
  end
  object edt1: TEdit
    Left = 392
    Top = 56
    Width = 145
    Height = 25
    TabOrder = 7
  end
  object edt2: TEdit
    Left = 392
    Top = 88
    Width = 145
    Height = 25
    TabOrder = 8
  end
  object edt3: TEdit
    Left = 392
    Top = 120
    Width = 145
    Height = 25
    TabOrder = 9
  end
  object edt4: TEdit
    Left = 392
    Top = 152
    Width = 145
    Height = 25
    TabOrder = 10
  end
  object edt5: TEdit
    Left = 392
    Top = 184
    Width = 145
    Height = 25
    TabOrder = 11
  end
  object edt6: TEdit
    Left = 392
    Top = 224
    Width = 145
    Height = 25
    TabOrder = 12
  end
  object con2: TZConnection
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
  object zqry2: TZQuery
    Connection = con2
    Active = True
    SQL.Strings = (
      'SELECT * From tabel_barang')
    Params = <>
    Left = 696
    Top = 72
  end
  object ds2: TDataSource
    DataSet = zqry2
    Left = 744
    Top = 72
  end
end
