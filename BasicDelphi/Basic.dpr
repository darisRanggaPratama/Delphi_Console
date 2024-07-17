program Basic;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

var
  startNum, EndNum, i: Integer;

begin
  try
    // Get Input
    Write('Masukkan angka awal: ');
    Readln(startNum);
    write('Masukkan angka akhir: ');
    Readln(EndNum);

    // Check input: odd or even
    Writeln('Angka Ganjil');
    for i := startNum to EndNum do
    begin
      if i mod 2 <> 0 then
        Write(IntToStr(i) + ' '); // Result: Odd
    end;
    Writeln;

    Writeln('Angka Genap');
    for i := startNum to EndNum do
    begin
      if i mod 2 = 0 then
        Write(IntToStr(i) + ' '); // Result: Even
    end;
    Writeln;

    Readln;

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

end.
