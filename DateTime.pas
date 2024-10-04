begin
  var Year := ReadInteger('Введи год для определения високосности: ');
  Assert(Year > 0);
  Println($'Високосный? {(Year mod 4 = 0) and ((Year mod 100 <> 0) or (Year mod 400 = 0))}');
  
  var (firstDay, firstMonth) := ReadInteger2('Введи день и месяц первой даты: ');
  Assert((firstDay > 0) and (firstDay < 32), 'Ошибка в дне первой даты');
  Assert((firstMonth > 0) and (firstMonth < 13), 'Ошибка в месяце первой даты');
  
  var (secondDay, secondMonth) := ReadInteger2('Введи день и месяц второй даты: ');
  Assert((secondDay > 0) and (secondDay < 32), 'Ошибка в дне второй даты');
  Assert((secondMonth > 0) and (secondMonth < 13), 'Ошибка в месяце второй даты');
  
  if firstMonth > secondMonth then 
    Println(1)
  else if firstMonth < secondMonth then
    Println(2)
  else if firstDay > secondDay then
    Println(1)
  else
    Println(2);
  
  if (Year mod 4 = 0) and ((Year mod 100 <> 0) or (Year mod 400 = 0)) then
    Println(366)
  else Println(365);
  
  var (firstYear, secondYear) := ReadInteger2('Введи два года: ');
  Assert(firstYear > 0);
  Assert(secondYear > 0);
  Assert(firstYear <= secondYear);
  var resDays := 0;
  for var i := firstYear to secondYear do
    if (i mod 4 = 0) and ((i mod 100 <> 0) or (i mod 400 = 0)) then
      resDays += 366
    else resDays += 365;
    
  Println(resDays);
end.