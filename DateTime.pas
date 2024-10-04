begin
  var Year := ReadInteger;
  Assert(Year > 0);
  Print((Year mod 4 = 0) and ((Year mod 100 <> 0) or (Year mod 400 = 0)));
  
  Print(60);
end.