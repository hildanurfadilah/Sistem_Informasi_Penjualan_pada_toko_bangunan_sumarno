unit menu_utama;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    lbl1: TLabel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    btn7: TButton;
    btn8: TButton;
    btn9: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses tabel_user, tabel_jual, tabel_barang, tabel_detail_jual, tabel_beli,
  tabel_detail_beli, tabel_kategori, tabel_kostumer, tabel_supplier;

{$R *.dfm}

procedure TForm2.btn1Click(Sender: TObject);
begin
hide;
form3.show;
end;

procedure TForm2.btn2Click(Sender: TObject);
begin
hide;
form4.show;
end;

procedure TForm2.btn3Click(Sender: TObject);
begin
hide;
form5.show;
end;

procedure TForm2.btn4Click(Sender: TObject);
begin
hide;
form6.show;
end;

procedure TForm2.btn5Click(Sender: TObject);
begin
hide;
form7.show;
end;

procedure TForm2.btn6Click(Sender: TObject);
begin
hide;
form8.show;
end;

procedure TForm2.btn7Click(Sender: TObject);
begin
hide;
form9.show;
end;

procedure TForm2.btn8Click(Sender: TObject);
begin
hide;
form10.show;
end;

procedure TForm2.btn9Click(Sender: TObject);
begin
hide;
form11.show;
end;

end.
