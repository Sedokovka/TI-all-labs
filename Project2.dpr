program Project2;

{$APPTYPE CONSOLE}

uses
  SysUtils;


function railwdecryption(s:string; key:integer):string;
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
       result:=res;
  end;


var i, j,ost, row:Integer;
    mess, res:string;
    key, len, k, t:Integer;
    hash:array of array of Char;
begin
    Readln(key);
    Readln(mess);
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
    Writeln(res);
  res:=railwdecryption(res, key);
  Writeln(res);
readln;
end.