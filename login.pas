unit login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    lbl3: TLabel;
    btn1: TButton;
    btn2: TButton;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses menu_utama;

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
with zqry1 do
  begin
   SQL.Clear;
   SQL.Add('Select*from user where username='+QuotedStr(edt1.Text)) ;
   open;
  end;

   if zqry1.RecordCount=0
   then
   Application.MessageBox('Maaf username tidak ditemukan', 'informasi', MB_OK or MB_ICONINFORMATION)
   else

   begin
     if  zqry1.FieldByName('password').AsString<>edt2.Text
     then
     Application.MessageBox('Password salah coba lagi', 'error', MB_OK or MB_ICONERROR)
     else
     begin
       hide;
       Form2.Show;
     end;

    end;
end;

end.
