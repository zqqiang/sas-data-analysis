data binary;
  infile "/folders/myshortcuts/myfolder/sas-data-analysis/LogitRegression/binary.csv" delimiter=",";
  input admit gre gpa rank;
run;

proc means data=binary;
  var gre gpa;
run;

proc freq data=binary;
  tables rank admit admit*rank;
run;

proc logistic data=binary descending;
  class rank / param=ref ;
  model admit = gre gpa rank;
run;