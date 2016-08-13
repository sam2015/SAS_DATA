/*ONE TO ONE MERGING*/
DATA B79.J;MERGE SASHELP.AIR SASHELP.CLASS;RUN;
/*ONE TO MANY NERGE*/
DATA B79.A;SET SASHELP.AIR;L=MONTH(DATE);RUN;
DATA B79.C;SET SASHELP.CLASS;L=_N_;RUN;
/*SORTING IS REQD BEFORE MERGING*/
PROC SORT DATA = B79.C;BY L;RUN;
PROC SORT DATA = B79.A;BY L;RUN;
DATA B79.M;MERGE B79.A B79.C;BY L;RUN;
/*X & Y*/
DATA B79.M;MERGE B79.A (IN = X) B79.C (IN = Y);
BY L;IF X & Y;RUN;
/*X & NOT(Y)*/
DATA B79.M;MERGE B79.A (IN = X) B79.C (IN = Y);
BY L;IF X & NOT(Y);RUN;
/*Y & NOT(X)*/
DATA B79.M;MERGE B79.A (IN = X) B79.C (IN = Y);
BY L;IF Y & NOT(X);RUN;
/*X*/
DATA B79.M;MERGE B79.A (IN = X) B79.C (IN = Y);
BY L;IF X;RUN;
/*Y*/
DATA B79.M;MERGE B79.A (IN = X) B79.C (IN = Y);
BY L;IF Y;RUN;