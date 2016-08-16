data crime;
  infile "/folders/myshortcuts/myfolder/sas-data-analysis/RobustRegression/crime.csv" delimiter="," firstobs=2;
  input sid state $ crime murder pctmetro pctwhite pcths poverty single;
run;

proc means data = crime;
  var crime poverty single;
run;
