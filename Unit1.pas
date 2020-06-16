unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    pnl1: TPanel;
    lbl1: TLabel;
    edt1: TEdit;
    mmo1: TMemo;
    mmo2: TMemo;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    mmo3: TMemo;
    btn1: TButton;
    btn2: TButton;
    btnKeyBtn: TButton;
    btn3: TButton;
    lbl5: TLabel;
    dlgOpen1: TOpenDialog;
    pnl2: TPanel;
    mmo4: TMemo;
    mmo5: TMemo;
    mmo6: TMemo;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    pnl3: TPanel;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    lbl14: TLabel;
    mmo7: TMemo;
    mmo8: TMemo;
    btn7: TButton;
    btn8: TButton;
    edt2: TEdit;
    mmo9: TMemo;
    btn9: TButton;
    btn10: TButton;
    edt3: TEdit;
    lbl15: TLabel;
    procedure edt1KeyPress(Sender: TObject; var Key: Char);
    procedure btnKeyBtnClick(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure mmo3KeyPress(Sender: TObject; var Key: Char);
    procedure mmo4KeyPress(Sender: TObject; var Key: Char);
    procedure btn6Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure edt2KeyPress(Sender: TObject; var Key: Char);
    procedure btn9Click(Sender: TObject);
    procedure btn10Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure mmo9KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
type tmap = array [1..4] of array [1..4] of char;
const alp='абвгдеёжзийклмнопрстувхцчшщъыьэюя';
 arr: array [1..33] of Char = ('а','б','в','г','д','е','ё','ж','з','и','й','к','л','м','н','о','п','р','с','т','у','ф','х','ц','ч','ш','щ','ъ','ы','ь','э','ю','я');
implementation

{$R *.dfm}

type Tarr = array [1..33] of Char;

procedure enter_alph(var alp:Tarr);
var i:Integer;
begin
 for i:=1 to 33 do
    begin
      if i<7 then alp[i]:=chr(223+i);
      if i=7 then alp[i]:=chr(184);
      if i>7 then alp[i]:=chr(222+i)
    end;
end;

function identification(x:Char; alp:Tarr):Integer;
var i:Integer;
begin
  //функция возвращает номер буквы в алфавите
  for i:=1 to 33 do
     begin
       if alp[i] = x then
         begin
         Result:=i;
         Break;
         end;
       end;
     end;

{var i, x, y, z:Integer;
arr:TArr;
text, key, ch:Char;
begin
enter_alph(arr);
text:='ъ'; //и
key:='д'; //п
x:=identification(text, arr);
y:=identification(key, arr);
  // у - смещение буквы от-но а
  //ч - индекс буквы в массиве
if x+y<>33 then z:=((x+y) mod 33)
else z:=33;
ch:=arr[z];

   Writeln(Ch);
end.}
function ToLowRegisterRus(s:string):string;
var i:Integer;
    res:string;
begin
 s:=AnsiLowerCase(s) ;
 i:=1;
 res:='';
 while i<= Length(s) do
    begin
      if not(s[i] in['а'..'я', 'ё']) then inc(i) else
      begin
      res:=res+s[i];
      Inc(i);  end;
    end;
  result:=res;
end;
function ToLowRegisterEng(s:string):string;
var i:Integer;
    res:string;
begin
 s:=AnsiLowerCase(s) ;
 i:=1;
 res:='';
 while i<= Length(s) do
    begin
      if not(s[i] in['a'..'z']) then inc(i) else
      begin
      res:=res+s[i];
      Inc(i);  end;
    end;
  result:=res;
end;
function IsRussian (s:string):Boolean;
var i:integer;
begin
  result:=True;
   if Length(s)=0 then result:=False
   else
    begin
      for i:=1 to Length(s) do
       begin
         if (s[i]in ['A'..'Z'])or(s[i] in ['a'..'z']) then result:=False;
       end;
     end;
end;

function IsEnglish (s:string):Boolean;
var i:integer;
begin
  result:=True;
  if Length(s)=0 then result:=False
  else
   begin
     for i:=1 to Length(s) do
      begin
         if (s[i]in ['А'..'Я'])or(s[i] in ['а'..'я']) then result:=False;
      end;
   end;
end;

function OneCharVizhChiepher(text, key:Char):char;
var i, x, y, z:Integer;
arr:Tarr;
 ch:Char;
begin
enter_alph(arr);
  // у - смещение буквы от-но а
  //ч - индекс буквы в массиве
x:=identification(text, arr);
y:=identification(key, arr);
if x+y<>33 then z:=((x+y-1) mod 33)
else z:=33;
ch:=arr[z];
result:=ch;
end;

function OneCharVizhDechiepher(ch, key:Char):char;
var text:Char;
arr: Tarr;
i, x, y, z:Integer;
begin
  enter_alph(arr);
z:=identification(ch, arr);
y:=identification(key, arr);
 if z-y+1>0 then x:=z-y+1
 else x:=34+z-y;
  text:=arr[x];
  result:=text;
end;


procedure TForm1.edt1KeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in ['0'..'9', #8]) then key:=#0;
end;

procedure TForm1.btnKeyBtnClick(Sender: TObject);
begin
  if (Form1.edt1.text<>'') and (Form1.edt1.text<>'0') then ShowMessage('Ключ получен')
  else ShowMessage('Ошибка ввода');
end;

procedure TForm1.btn3Click(Sender: TObject);
var f:TextFile;
    s0, s:string;
begin
if Form1.mmo3.text=''then
   begin
   if Form1.dlgOpen1.Execute then
      begin
      AssignFile(f, Form1.dlgOpen1.FileName);
      Reset(f);
      s:='';
       while not Eof(f) do
        begin
         readln(f, s0);
         s:=s+s0;
        end;
      form1.mmo3.Text:=ToLowRegisterEng(s);
      CloseFile(f);
      ShowMessage('Текст загружен. Регистр мог быть изменен');
      end  ;
   end
else ShowMessage('Текст загружен в ручную');
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
mmo1.Text:='';
mmo2.Text:='';
mmo3.Text:='';
mmo4.Text:='';
mmo5.Text:='';
mmo6.Text:='';
mmo7.Text:='';
mmo8.Text:='';
mmo9.Text:='';
end;

procedure railwaydecryption(s:string; key:integer);
var I, j, len, t, ost, row, k:Integer;
 h:array of array of char;    res:string;
  begin
    len:=Length(s);
    SetLength(h, key, len);
    for i:=0 to key-1 do
       for j:=0 to len-1 do
          h[i][j]:=' ';
    j:=1; i:=0;
    t:=2*key-2;
    i:=0;
    while i<=len-1 do
    begin
      ost:=i mod t;
      row:=key-1-abs(key-1-ost);
      h[row][i]:='1';
      inc(i);
    end;
    k:=1;  i:=0; j:=0;
      for i:=0 to key-1 do
         for j:=0 to Len-1 do
         if h[i][j]<>' ' then
         begin
         h[i][j]:=s[k];
         inc(k);
         end;
    i:=0; j:=0;
     res:='';
    while i<len do
    begin
     for j:=0 to key-1 do
      if h[j][i]<>' ' then res:=res+h[j][i];

       inc(i);
       j:=0;
       end;
       form1.mmo2.text:=res;
  end;

procedure railwayencryption;
var i, j:Integer;
    mess, res:string;
    key, len, k, t, ost, row:Integer;
    hash:array of array of Char;
begin
    key:=StrToInt(Form1.edt1.text);
    mess:=Form1.mmo3.Text;
    len:=Length(mess);
   for i:=1 to Length(mess) do
       if mess[i]=' ' then Delete(mess,i,1);
    len:=Length(mess);
    SetLength(hash, key, len);
    for i:=0 to key-1 do
       for j:=0 to len-1 do
          hash[i][j]:=' ';   //cryptography
    j:=1; k:=0;i:=0;
    t:=2*key-2;
    i:=0;
    while i<=len-1 do
    begin
      ost:=i mod t;
      row:=key-1-abs(key-1-ost);
      hash[row][i]:=mess[i+1];
      inc(i);
    end;

    for i:=0 to key-1 do
       for j:=0 to len-1 do
          if hash[i][j]<>' ' then res:=res+hash[i][j];
    form1.mmo1.Text:=res;
end;

procedure turnright(var a:tmap);
var p,k,j,i,n:integer;
  x:Char; b:tmap;
begin
n:=4;
for i:=1 to n do
for j:=1 to n do
b[i,j]:=a[n-j+1,i];
a:=b;
end;

procedure hashencryption(s:string);
var
arr: array[1..16] of Integer;
i, j, k, n, l:Integer; res, tmp:string;
begin
  arr[1]:=1;arr[2]:=13;arr[3]:=9;arr[4]:=5;
  arr[5]:=6;arr[6]:=10;arr[7]:=14;arr[8]:=2;
  arr[9]:=11;arr[10]:=7;arr[11]:=3;arr[12]:=15;
  arr[13]:=16;arr[14]:=4;arr[15]:=8;arr[16]:=12;
 i:=0; k:=1;
 while i<= (Length(s) div 16) do
 begin
   k:=1;
  while k<= 16 do
  begin
   if (16*i +arr[k])<=Length(s) then res:=res+s[ 16*i +arr[k]]
   else res:=res+chr(Random(25)+97);
   Inc(k);
  end;
  Inc(i);
 end;

 Form1.mmo5.Text:=res;
end;

procedure TForm1.btn1Click(Sender: TObject);
var f:TextFile;
begin
 if (Form1.mmo3.text<>'') and (IsEnglish(Form1.mmo3.text)) then
   begin
    AssignFile(f, 'railway_enc.txt');
    Rewrite(f);
    railwayencryption;
    write(f, form1.mmo1.text);
    CloseFile(f);
   end
 else
  begin
   ShowMessage('Загруженный текст пуст либо не соответствует языку задания. Повторите ввод');
   Form1.mmo3.Clear;
  end;
end;

procedure TForm1.btn2Click(Sender: TObject);
var f:TextFile;
begin
railwaydecryption(Form1.mmo1.Text, StrToInt(Form1.edt1.text));
AssignFile(f, 'Railway_dec.txt');
Rewrite(f);
write(f, form1.mmo2.text);
CloseFile(f);
end;

procedure TForm1.mmo3KeyPress(Sender: TObject; var Key: Char);
begin
if (Key in [ 'а'..'я', 'А'..'Я', 'A'..'Z']) then key:=#0;
end;

procedure TForm1.mmo4KeyPress(Sender: TObject; var Key: Char);
begin
if Key in [ 'а'..'я', 'А'..'Я', 'A'..'Z'] then key:=#0;
end;

procedure TForm1.btn6Click(Sender: TObject);
var f:TextFile;
s0, s:string;
begin
if Form1.mmo4.text=''then
   begin
   if Form1.dlgOpen1.Execute then
      begin
      AssignFile(f, Form1.dlgOpen1.FileName);
      Reset(f);
      s:='';
      while not Eof(f) do
      begin
      readln(f, s0);
      s:=s+s0;
      end;
      form1.mmo4.Text:=ToLowRegisterEng(s);
      CloseFile(f);
      ShowMessage('Текст загружен. Регистр мог быть изменен');
      end  ;
   end
else ShowMessage('Текст загружен в ручную');

end;

procedure TForm1.btn4Click(Sender: TObject);
var f:TextFile;
begin
  if (Form1.mmo4.text<>'')and(IsEnglish(Form1.mmo4.text)) then
  begin
AssignFile(f, 'hash_enc.txt');
Rewrite(f);
hashencryption(Form1.mmo4.text);
write(f, form1.mmo5.text);
CloseFile(f);
end
else
begin
   ShowMessage('Загруженный текст пуст либо не соответствует языку задания. Повторите ввод');
   Form1.mmo4.Clear;
  end;
end;
procedure hashdecryption(s:string);
var res:string;
   arr:array[1..16] of Integer;
   i, j, k, n:Integer;
begin
arr[1]:=1;arr[2]:=8;arr[3]:=11;arr[4]:=14;
  arr[5]:=4;arr[6]:=5;arr[7]:=10;arr[8]:=15;
  arr[9]:=3;arr[10]:=6;arr[11]:=9;arr[12]:=16;
  arr[13]:=2;arr[14]:=7;arr[15]:=12;arr[16]:=13;
 i:=0; k:=1;
 while i<= (Length(s) div 16) do
 begin
   k:=1;
  while k<= 16 do
  begin
   if (16*i +arr[k])<=Length(s) then res:=res+s[ 16*i +arr[k]];
   Inc(k);
  end;
  Inc(i);
 end;
 Form1.mmo6.Text:=res;
end;

procedure TForm1.btn5Click(Sender: TObject);
var f:TextFile;
begin
hashdecryption(Form1.mmo5.Text);
AssignFile(f, 'hash_dec.txt');
Rewrite(f);
write(f, form1.mmo6.text);
CloseFile(f);
end;

procedure TForm1.edt2KeyPress(Sender: TObject; var Key: Char);
begin
if not(Key in ['А'..'Я', 'а'..'я', #8, #32]) then key:=#0;
end;

procedure TForm1.btn9Click(Sender: TObject);
begin
if (Form1.edt2.text<>'') then ShowMessage('Ключ получен')
  else ShowMessage('Ошибка ввода');
end;

procedure TForm1.btn10Click(Sender: TObject);
var f:TextFile; s0, s:string;
begin
if Form1.mmo9.text=''then
   begin
   if Form1.dlgOpen1.Execute then
      begin
      AssignFile(f, Form1.dlgOpen1.FileName);
      Reset(f);
      s:='';
      while  not Eof(f) do
       begin
       readln(f, s0);
       s:=s+s0;
       end;
      form1.mmo9.Text:=ToLowRegisterRus(s);
      CloseFile(f);
      ShowMessage('Текст загружен. Регистр мог быть изменен');
      end  ;
   end
else ShowMessage('Текст загружен в ручную');
end;

function sdvig(c:char):char;
var i:Integer;
begin
 for i:=1 to Length(alp) do
 if alp[i]=c then
 if i<>Length(alp)then result:= (Alp[i+1])
 else result:=(Alp[1]);
end;

function progressivekey(var s:string; len:Integer):string;
var i, j:Integer; key, res,  tmp:string;
begin
 i:=Length(s);
 key:=s;
 for i:=Len to len do
 begin
   for j:=1 to Length(s) do    //224-255
   begin
     tmp:=tmp+sdvig(key[i]);
   end;
    res:=res+tmp;
    key:=tmp;
    tmp:='';
     end;
s:=res;
end;

function keygen(s:string; len:Integer):string;
var i, k, m:Integer;  key, tmp:string;
    arr:Tarr;
begin
  enter_alph(arr);
  tmp:='';key:=s;
  if len > Length(s) then
    for k:=1 to (len div Length(s))  do
       begin
        for i:=1 to Length(s) do
         begin
           if i<=Length(s) then
            begin
             m:=identification(s[i], arr);
             if m<>33 then tmp:=tmp+arr[m+1] else tmp:=tmp+arr[1]
            end;
         end;
        key:=key+tmp;
        s:=tmp;
         tmp:='';
       end
   else key:=Copy(s, 1, len);
   result:=key;
end;

procedure vizhencryption(s, key:string);
var res, t:string;
i, j:Integer;
begin
 res:='';
 for i:=1 to Length(s) do
   begin
     res:=res+OneCharVizhChiepher(s[i], key[i]);
   end;
 Form1.mmo7.Text:=res;
 end;



procedure TForm1.btn7Click(Sender: TObject);
var f:TextFile; key:string;
begin
  if (Form1.mmo9.text<>'')and(IsRussian(Form1.mmo9.text)) then
    begin
     AssignFile(f, 'vizhener_enc.txt');
     Rewrite(f);
     key:=keygen(ToLowRegisterRus(Form1.edt2.Text), Length(Form1.mmo9.Text));
     form1.edt3.Text:=key;
     vizhencryption(Form1.mmo9.text, key);
     write(f, form1.mmo7.text);
     CloseFile(f);
    end
  else
begin
   ShowMessage('Загруженный текст пуст либо не соответствует языку задания. Повторите ввод');
   Form1.mmo9.Clear;
  end;

end;

procedure vizenerdecryption(s, key:string);
var i:Integer; res:string;
begin
  res:='';
  for i:=1 to Length(s) do
     res:=res+OneCharVizhDechiepher(s[i], key[i]);
 Form1.mmo8.Text:=res;
 end;
procedure TForm1.btn8Click(Sender: TObject);
var f:TextFile;
key:string;
begin
//vizhdecryption(Form1.mmo5.Text);
AssignFile(f, 'vizh_dec.txt');
Rewrite(f);
key:=keygen(AnsiLowerCase(Form1.edt2.Text), Length(Form1.mmo9.Text));
vizenerdecryption(Form1.mmo7.Text, key);
write(f, form1.mmo8.text);
CloseFile(f);
end;

procedure TForm1.mmo9KeyPress(Sender: TObject; var Key: Char);
begin
if not(Key in ['а'..'я', #8, #32]) then key:=#0;
end;

end.
