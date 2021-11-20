program InsertSort;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

Const
  N = 10;

type
  Raw = array[1..N] of integer;

var
  Mas: Raw;
  i, j, Temp: integer;
begin
  Randomize;
  for i := 1 to N do
  begin
    Mas[i] := Random(11);
    write(Mas[i]:4);
  end;
  for i := 2 to N do
  begin
    if Mas[i-1] > Mas[i] then
    begin
      j := i;
      Temp := Mas[i];
      while (j > 1) and (Mas[j-1] > Temp) do
      begin
        Mas[j] := Mas[j-1];
        dec(j);
      end;
      Mas[j] := Temp;
    end;
  end;
  writeln;
  for i := 1 to N do
    write(Mas[i]:4);

  readln;
end.
