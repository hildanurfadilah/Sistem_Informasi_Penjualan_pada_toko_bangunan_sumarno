object Form1: TForm1
  Left = 192
  Top = 125
  Width = 870
  Height = 450
  Caption = 'LOGIN'
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
    Left = 264
    Top = 96
    Width = 54
    Height = 13
    Caption = 'USERNAME'
  end
  object lbl2: TLabel
    Left = 264
    Top = 144
    Width = 57
    Height = 13
    Caption = 'PASSWORD'
  end
  object lbl3: TLabel
    Left = 400
    Top = 24
    Width = 60
    Height = 13
    Caption = 'LOGIN USER'
  end
  object edt1: TEdit
    Left = 400
    Top = 96
    Width = 177
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 400
    Top = 136
    Width = 177
    Height = 21
    TabOrder = 1
  end
  object btn1: TButton
    Left = 280
    Top = 224
    Width = 91
    Height = 49
    Caption = 'MASUK'
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 408
    Top = 224
    Width = 113
    Height = 49
    Caption = 'REGISTER'
    TabOrder = 3
    OnClick = btn2Click
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
    Left = 328
    Top = 312
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'SELECT * From user')
    Params = <>
    Left = 376
    Top = 312
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 424
    Top = 312
  end
end
