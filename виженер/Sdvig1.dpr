program Sdvig1;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Windows;

//циклический сдвиг влево русского алфавита на m позиций
var alph:array [1..32] of Char;
    i, l, j, m:Integer;
    c:Char;
begin
  SetConsoleCP(1251);
  SetConsoleOutputCP(1251);
  i:=1;
  l:=32;
  //заполнение русским алфавитом
 for i:=1 to l do
    alph[i]:=chr(223+i);
 m:=4;
 for j:=1 to m do
 begin
   c:=alph[1];
   for i:=1 to l-1 do
      alph[i]:=alph[i+1];
   alph[l]:=c;
 end;
 readln;
end.
