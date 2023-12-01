unit daftar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection;

type
  TForm12 = class(TForm)
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    edt1: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt6: TEdit;
    edt7: TEdit;
    edt8: TEdit;
    cmb1: TComboBox;
    edtnama: TEdit;
    btn1: TButton;
    con1: TZConnection;
    zqry1: TZQuery;
    lbl1: TLabel;
    procedure posisiawal;
    procedure editbersih;
    procedure editenable;
    procedure editdisable;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form12: TForm12;
  id : String;

implementation

{$R *.dfm}

procedure TForm12.editbersih;
begin
edt1.Text :='';
edtnama.Text :='';
edt3.Text :='';
edt4.Text :='';
cmb1.Text :='';
edt6.Text :='';
edt7.Text :='';
edt8.Text :='';
end;

procedure TForm12.editdisable;
begin
edt1.Enabled:= False;
edtnama.Enabled:= False;
edt3.Enabled:= False;
edt4.Enabled:= False;
cmb1.Enabled:= False;
edt6.Enabled:= False;
edt7.Enabled:= False;
edt8.Enabled:= False;
end;

procedure TForm12.editenable;
begin
edt1.Enabled:= True;
edtnama.Enabled:= True;
edt3.Enabled:= True;
edt4.Enabled:= True;
cmb1.Enabled:= True;
edt6.Enabled:= True;
edt7.Enabled:= True;
edt8.Enabled:= True;
end;

procedure TForm12.posisiawal;
begin
editbersih;

editdisable;

btn1.Enabled := True;
end;

procedure TForm12.btn1Click(Sender: TObject);
begin
//SIMPAN

if(edt1.Text = '') or(edtnama.Text = '') or(edt3.Text = '') or(edt4.Text = '') or(cmb1.Text = '') or(edt6.Text = '') or(edt7.Text = '') or(edt8.Text = '')then
begin
  ShowMessage('DATA TIDAK BOLEH KOSONG !');
end else
if(zqry1.Locate('nik',edt1.Text,[]))then
begin
  ShowMessage('Data user sudah ada');
  posisiawal;
end else
begin
zqry1.sql.clear;
zqry1.sql.Add('insert into user values(null,"'+edt1.Text+'","'+edtnama.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+cmb1.Text+'","'+edt6.Text+'","'+edt7.text+'","'+edt8.text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from user');
zqry1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!!');
posisiawal;
end;
end;

end.
