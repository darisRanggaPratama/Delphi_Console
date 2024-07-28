program BasicJump;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

procedure DemoExit;
var
  i: Integer;
begin
  WriteLn('Demo Exit:');
  for i := 1 to 10 do
  begin
    if i = 5 then
    begin
      WriteLn('Exiting procedure at i = 5');
      Exit; // Keluar dari prosedur saat i = 5
    end;
    WriteLn('i = ', i);
  end;
  WriteLn('This line will not be executed');
end;

procedure DemoBreak;
var
  i: Integer;
begin
  WriteLn('Demo Break:');
  for i := 1 to 10 do
  begin
    if i = 5 then
    begin
      WriteLn('Breaking loop at i = 5');
      Break; // Keluar dari loop saat i = 5
    end;
    WriteLn('i = ', i);
  end;
  WriteLn('Execution continues here after Break');
end;

procedure DemoContinue;
var
  i: Integer;
begin
  WriteLn('Demo Continue:');
  for i := 1 to 5 do
  begin
    if i = 3 then
    begin
      WriteLn('Skipping i = 3');
      Continue; // Melompati iterasi saat i = 3
    end;
    WriteLn('i = ', i);
  end;
end;

procedure DemoGoto;
label
  StartPoint, EndPoint;
begin
  WriteLn('Demo Goto:');

StartPoint:
  WriteLn('This is the start point');
  if Random(2) = 0 then
  begin
    WriteLn('Going to end point');
    goto EndPoint; // Melompat ke label EndPoint
  end;
  WriteLn('This may or may not be executed');

EndPoint:
  WriteLn('This is the end point');
end;

begin
  try
    Randomize;

    DemoExit;
    WriteLn;

    DemoBreak;
    WriteLn;

    DemoContinue;
    WriteLn;

    DemoGoto;

    ReadLn;
  except
    on E: Exception do
      WriteLn(E.ClassName, ': ', E.Message);
  end;

end         .
