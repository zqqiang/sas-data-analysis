data finance;
  infile "/folders/myshortcuts/myfolder/RobustRegression/data/crx.data" delimiter="," firstobs=2;
  input A1 $ A2 A3 A4 $ A5 $ A6 $ A7 $ A8 A9 $ A10 $ A11 A12 $ A13 $ A14 A15 A16 $;
run;
proc print data = finance;
  var A1 A2 A3 A4 A5 A6 A7 A8 A9 A10 A11 A12 A13 A14 A15 A16;
run;