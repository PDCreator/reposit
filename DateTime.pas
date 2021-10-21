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
function SecondsInMinute():= 60;
begin
  
end.