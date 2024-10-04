begin
  var Year := ReadInteger;
  Assert(Year > 0);
  Print((Year mod 4 = 0) and ((Year mod 100 <> 0) or (Year mod 400 = 0)));
  
  var (firstDay, firstMonth) := ReadInteger2;
  Assert((firstDay > 0) and (firstDay < 32), 'Ошибка в дне первой даты');
  Assert((firstMonth > 0) and (firstMonth < 13), 'Ошибка в месяце первой даты');
  
  var (secondDay, secondMonth) := ReadInteger2;
  Assert((secondDay > 0) and (secondDay < 32), 'Ошибка в дне второй даты');
  Assert((secondMonth > 0) and (secondMonth < 13), 'Ошибка в месяце второй даты');
  
  if firstMonth > secondMonth then 
    Print(1)
  else if firstMonth < secondMonth then
    Print(2)
  else if firstDay > secondDay then
    Print(1)
  else
    Print(2);
  
  if (Year mod 4 = 0) and ((Year mod 100 <> 0) or (Year mod 400 = 0)) then
    Print(366)
  else Print(365);
end.