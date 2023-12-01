object Form12: TForm12
  Left = 192
  Top = 152
  Width = 870
  Height = 450
  Caption = 'DAFTAR'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl2: TLabel
    Left = 248
    Top = 68
    Width = 17
    Height = 13
    Caption = 'NIK'
  end
  object lbl3: TLabel
    Left = 248
    Top = 100
    Width = 76
    Height = 13
    Caption = 'NAMA LENGKAP'
  end
  object lbl4: TLabel
    Left = 248
    Top = 132
    Width = 54
    Height = 13
    Caption = 'USERNAME'
  end
  object lbl5: TLabel
    Left = 248
    Top = 164
    Width = 57
    Height = 13
    Caption = 'PASSWORD'
  end
  object lbl6: TLabel
    Left = 248
    Top = 196
    Width = 74
    Height = 13
    Caption = 'JENIS KELAMIN'
  end
  object lbl7: TLabel
    Left = 248
    Top = 228
    Width = 23
    Height = 13
    Caption = 'TELP'
  end
  object lbl8: TLabel
    Left = 248
    Top = 260
    Width = 30
    Height = 13
    Caption = 'EMAIL'
  end
  object lbl9: TLabel
    Left = 248
    Top = 292
    Width = 40
    Height = 13
    Caption = 'ALAMAT'
  end
  object lbl1: TLabel
    Left = 280
    Top = 16
    Width = 182
    Height = 24
    Caption = 'DAFTARKAN DIRI'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Reference Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edt1: TEdit
    Left = 352
    Top = 68
    Width = 161
    Height = 21
    TabOrder = 0
  end
  object edt3: TEdit
    Left = 352
    Top = 124
    Width = 161
    Height = 21
    TabOrder = 1
  end
  object edt4: TEdit
    Left = 352
    Top = 156
    Width = 161
    Height = 21
    TabOrder = 2
  end
  object edt6: TEdit
    Left = 352
    Top = 220
    Width = 161
    Height = 21
    TabOrder = 3
  end
  object edt7: TEdit
    Left = 352
    Top = 252
    Width = 161
    Height = 21
    TabOrder = 4
  end
  object edt8: TEdit
    Left = 352
    Top = 284
    Width = 161
    Height = 21
    TabOrder = 5
  end
  object cmb1: TComboBox
    Left = 352
    Top = 184
    Width = 161
    Height = 21
    ItemHeight = 13
    TabOrder = 6
    Items.Strings = (
      'L'
      'P')
  end
  object edtnama: TEdit
    Left = 352
    Top = 96
    Width = 161
    Height = 21
    TabOrder = 7
  end
  object btn1: TButton
    Left = 496
    Top = 336
    Width = 89
    Height = 49
    Caption = 'DAFTAR'
    TabOrder = 8
    OnClick = btn1Click
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
end
