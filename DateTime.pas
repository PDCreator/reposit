uses System;
function IsLeapYear(Year : Integer): Boolean;
Begin
  var b := False;
  if (Year mod 4 = 0) and (Year mod 100 <> 0) then
    b := True
  else if (Year mod 4 = 0) and (Year mod 400 = 0) then
    b := True;
  result := b;
end;
function LaterInYear(D1, D2: DateTime): Integer;
Begin
  var D := DateTime.Now;
end;
function DaysInYear(Year : Integer): Integer;
Begin
  var b : Integer;
  if IsLeapYear(Year) then
    b := 366
  else
    b := 365;
  result := b;
end;
function DaysInYearRange(Year1, Year2 : Integer): Integer;
Begin
  var b := Year2-Year1;
  var s := 0;
  while Year1<>Year2 do
  begin
    if IsLeapYear(Year1) then
      s += 366
    else
      s += 365;
    Year1 += 1;
  end;
  result := s;
end;
function SeconsInHours(h : Integer): Integer;
Begin
  result := h*3600;
end;
function IsYearOfApocalypse(Year : Integer): Boolean;
Begin
  var b := False;
  if (Year = 1992) or (Year = 2005) or (Year = 2011) then
    b := True;
  result := b;
end;
begin
  Print(IsLeapYear(900));
  Print(IsLeapYear(800));
  Print(IsLeapYear(2020));
end.