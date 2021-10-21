uses System;
function IsLeapYear(Year : Integer): Boolean;
Begin
  var b := False;
  if (Year % 4 = 0) and (Year % 100 != 0) then
    b := True;
  else if (Year % 4 = 0) and (Year % 400 = 0) then
    b := True;
  result := b;
end;
begin
  
end.