object Form4: TForm4
  Left = 194
  Top = 157
  Width = 870
  Height = 450
  Caption = 'TABEL JUAL'
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 376
    Top = 48
    Width = 3
    Height = 13
  end
  object lbl2: TLabel
    Left = 288
    Top = 16
    Width = 116
    Height = 25
    Caption = 'TABEL JUAL'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Stencil'
    Font.Style = []
    ParentFont = False
  end
  object lbl7: TLabel
    Left = 232
    Top = 64
    Width = 68
    Height = 13
    Caption = 'KOSTUMER ID'
  end
  object lbl3: TLabel
    Left = 232
    Top = 96
    Width = 45
    Height = 13
    Caption = 'TGL JUAL'
  end
  object lbl4: TLabel
    Left = 232
    Top = 128
    Width = 32
    Height = 13
    Caption = 'TOTAL'
  end
  object lbl5: TLabel
    Left = 232
    Top = 160
    Width = 33
    Height = 13
    Caption = 'BAYAR'
  end
  object lbl6: TLabel
    Left = 232
    Top = 192
    Width = 42
    Height = 13
    Caption = 'KEMBALI'
  end
  object edt1: TEdit
    Left = 328
    Top = 64
    Width = 169
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 328
    Top = 88
    Width = 169
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 328
    Top = 120
    Width = 169
    Height = 21
    TabOrder = 2
  end
  object edt4: TEdit
    Left = 328
    Top = 152
    Width = 169
    Height = 21
    TabOrder = 3
  end
  object edt5: TEdit
    Left = 328
    Top = 184
    Width = 169
    Height = 21
    TabOrder = 4
  end
  object btn1: TButton
    Left = 136
    Top = 236
    Width = 75
    Height = 33
    Caption = 'BARU'
    TabOrder = 5
  end
  object btn2: TButton
    Left = 232
    Top = 236
    Width = 75
    Height = 33
    Caption = 'SIMPAN'
    TabOrder = 6
  end
  object btn3: TButton
    Left = 328
    Top = 236
    Width = 75
    Height = 33
    Caption = 'EDIT'
    TabOrder = 7
  end
  object btn4: TButton
    Left = 424
    Top = 236
    Width = 75
    Height = 33
    Caption = 'HAPUS'
    TabOrder = 8
  end
  object btn5: TButton
    Left = 520
    Top = 236
    Width = 75
    Height = 33
    Caption = 'BATAL'
    TabOrder = 9
  end
  object btn6: TButton
    Left = 616
    Top = 236
    Width = 75
    Height = 33
    Caption = 'LAPORAN'
    TabOrder = 10
  end
  object dbgrd1: TDBGrid
    Left = 136
    Top = 283
    Width = 585
    Height = 120
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
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
end
