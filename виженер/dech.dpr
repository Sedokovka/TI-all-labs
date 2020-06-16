program dech;

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

var ch, key, text:Char;
arr: Tarr;
i, x, y, z:Integer;
begin
  enter_alph(arr);
z:=identification(ch, arr);
y:=identification(key, arr);

 if z-y>0 then x:=z-y
 else x:=33+z-y;
  text:=arr[x];
  Writeln(text);
end.

