program penjualan_toko_bangunan_sumarno;

uses
  Forms,
  login in 'login.pas' {Form1},
  menu_utama in 'menu_utama.pas' {Form2},
  tabel_user in 'tabel_user.pas' {Form3},
  tabel_jual in 'tabel_jual.pas' {Form4},
  tabel_barang in 'tabel_barang.pas' {Form5},
  tabel_detail_jual in 'tabel_detail_jual.pas' {Form6},
  tabel_beli in 'tabel_beli.pas' {Form7},
  tabel_detail_beli in 'tabel_detail_beli.pas' {Form8},
  tabel_kategori in 'tabel_kategori.pas' {Form9},
  tabel_kostumer in 'tabel_kostumer.pas' {Form10},
  tabel_supplier in 'tabel_supplier.pas' {Form11};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm10, Form10);
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TForm11, Form11);
  Application.Run;
end.
