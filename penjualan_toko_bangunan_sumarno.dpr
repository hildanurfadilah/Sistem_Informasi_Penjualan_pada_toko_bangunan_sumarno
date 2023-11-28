program penjualan_toko_bangunan_sumarno;

uses
  Forms,
  login in 'login.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
