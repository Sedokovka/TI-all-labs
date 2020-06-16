program Chiepher;

{$APPTYPE CONSOLE}

uses
  SysUtils;
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

var i, x, y, z:Integer;
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
end.
