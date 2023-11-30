unit tabel_jual;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids;

type
  TForm4 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl7: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    dbgrd1: TDBGrid;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    procedure posisiawal;
    procedure editbersih;
    procedure editenable;
    procedure editdisable;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  id : string;

implementation

{$R *.dfm}

procedure TForm4.editbersih;
begin
edt1.Text := '';
edt2.Text :='';
edt3.Text :='';
edt4.Text :='';
edt5.Text :='';
end;

procedure TForm4.editdisable;
begin
edt1.Enabled:= False;
edt2.Enabled:= False;
edt3.Enabled:= False;
edt4.Enabled:= False;
edt5.Enabled:= False;
end;

procedure TForm4.editenable;
begin
edt1.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;
edt4.Enabled:= True;
edt5.Enabled:= True;
end;

procedure TForm4.posisiawal;
begin
editbersih;

editdisable;

btn1.Enabled := True;
btn2.Enabled := False ;
btn3.Enabled := False ;
btn4.Enabled := False ;
btn5.Enabled := True;
end;

procedure TForm4.btn1Click(Sender: TObject);
begin
editbersih;

btn1.Enabled:= false;
btn2.Enabled:= True;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= True;
editenable;
end;

procedure TForm4.btn2Click(Sender: TObject);
begin
//SIMPAN

if(edt1.Text = '')or(edt2.Text = '')or(edt3.Text = '') or (edt4.Text = '')then
begin
  ShowMessage('DATA TIDAK BOLEH KOSONG !');
end else
if(zqry1.Locate('kostumer_id',edt1.Text,[]))then
begin
  ShowMessage('Data tabel_jual sudah ada');
  posisiawal;
end else
begin
zqry1.sql.clear;
zqry1.sql.Add('insert into tabel_jual values(null,"'+edt1.Text+'","'+edt2.Text+'","'+edt3.text+'","'+edt4.text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_jual');
zqry1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!!');
posisiawal;
end;
end;

procedure TForm4.btn3Click(Sender: TObject);
begin
begin
id:=dbgrd1.DataSource.DataSet.FieldByName('id').AsString;


zqry1.SQL.Clear;
zqry1.SQL.Add('Update tabel_jual set kostumer_id= "'+edt1.Text+'", tgl_jual= "'+edt2.Text+'", total= "'+edt3.Text+'", bayar= "'+edt4.Text+'", kembali= "'+edt5.Text+'" where id ="'+id+'"');
zqry1.ExecSQL;
ShowMessage('DATA BERHASIL DIUPDATE!'); //UPDATE

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_jual');
zqry1.Open;
posisiawal;
end;
end;

procedure TForm4.btn4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=dbgrd1.DataSource.DataSet.FieldByName('id').AsString;

zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from tabel_jual where id ="'+id+'"');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_jual');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiawal;
end;
end;

procedure TForm4.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm4.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm4.dbgrd1CellClick(Column: TColumn);
begin
editenable;

btn1.Enabled:= true;
btn2.Enabled:= False;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;

id:=zqry1.Fields[0].AsString;

edt1.Text:= zqry1.FieldList[1].AsString;
edt2.Text:= zqry1.FieldList[2].AsString;
edt3.Text:= zqry1.FieldList[3].AsString;
edt4.Text:= zqry1.FieldList[4].AsString;
edt5.Text:= zqry1.FieldList[5].AsString;
end;

end.
