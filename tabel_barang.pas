unit tabel_barang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, frxClass,
  frxDBSet;

type
  TForm5 = class(TForm)
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl8: TLabel;
    btn7: TButton;
    btn8: TButton;
    btn9: TButton;
    btn10: TButton;
    btn11: TButton;
    btn12: TButton;
    dbgrd1: TDBGrid;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    frxreport1: TfrxReport;
    frxdbdtst1: TfrxDBDataset;
    procedure posisiawal;
    procedure editbersih;
    procedure editenable;
    procedure editdisable;
    procedure btn1Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure btn10Click(Sender: TObject);
    procedure btn11Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn12Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  id : string;

implementation

{$R *.dfm}

procedure TForm5.editbersih;
begin
edt1.Text :='';
edt2.Text :='';
edt3.Text :='';
edt4.Text :='';
edt5.Text :='';
edt6.Text :='';
end;

procedure TForm5.editdisable;
begin
edt1.Enabled:= False;
edt2.Enabled:= False;
edt3.Enabled:= False;
edt4.Enabled:= False;
edt5.Enabled:= False;
edt6.Enabled:= False;
end;

procedure TForm5.editenable;
begin
edt1.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;
edt4.Enabled:= True;
edt5.Enabled:= True;
edt6.Enabled:= True;
end;

procedure TForm5.posisiawal;
begin
editbersih;

editdisable;

btn7.Enabled := True;
btn8.Enabled := False ;
btn9.Enabled := False ;
btn10.Enabled := False ;
btn11.Enabled := True;
end;

procedure TForm5.btn1Click(Sender: TObject);
begin
editbersih;

btn7.Enabled:= false;
btn8.Enabled:= True;
btn9.Enabled:= False;
btn10.Enabled:= False;
btn11.Enabled:= True;
editenable;
end;

procedure TForm5.btn8Click(Sender: TObject);
begin
//SIMPAN

if(edt1.Text = '') or(edt2.Text = '') or(edt3.Text = '') or(edt4.Text = '') or(edt5.Text = '') or(edt6.Text = '')then
begin
  ShowMessage('DATA TIDAK BOLEH KOSONG !');
end else
if(zqry1.Locate('kategori_id',edt1.Text,[]))then
begin
  ShowMessage('Data tabel_barang sudah ada');
  posisiawal;
end else
begin
zqry1.sql.clear;
zqry1.sql.Add('insert into tabel_barang values(null,"'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+edt5.Text+'","'+edt6.Text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_barang');
zqry1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!!');
posisiawal;
end;
end;

procedure TForm5.btn9Click(Sender: TObject);
begin
begin
id:=dbgrd1.DataSource.DataSet.FieldByName('id').AsString;

zqry1.SQL.Clear;
zqry1.SQL.Add('Update tabel_barang set kategori_id= "'+edt1.Text+'", barcode = "'+edt2.Text+'",nama_barang = "'+edt3.Text+'", stok = "'+edt4.Text+'", harga_jual = "'+edt5.Text+'", harga_beli = "'+edt6.Text+'", where id ="'+id+'"');
zqry1.ExecSQL;
ShowMessage('DATA BERHASIL DIUPDATE!'); //UPDATE

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_barang');
zqry1.Open;
posisiawal;
end;
end;

procedure TForm5.btn10Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=dbgrd1.DataSource.DataSet.FieldByName('id').AsString;

zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from tabel_barang where id ="'+id+'"');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_barang');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiawal;
end;
end;

procedure TForm5.btn11Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm5.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm5.dbgrd1CellClick(Column: TColumn);
begin
editenable;

btn7.Enabled:= true;
btn8.Enabled:= False;
btn9.Enabled:= True;
btn10.Enabled:= True;
btn11.Enabled:= True;

id:=zqry1.Fields[0].AsString;

edt1.Text:= zqry1.FieldList[1].AsString;
edt2.Text:= zqry1.FieldList[2].AsString;
edt3.Text:= zqry1.FieldList[3].AsString;
edt4.Text:= zqry1.FieldList[4].AsString;
edt5.Text:= zqry1.FieldList[4].AsString;
edt6.Text:= zqry1.FieldList[4].AsString;
end;

procedure TForm5.btn12Click(Sender: TObject);
begin
frxreport1.ShowReport();
end;

end.
