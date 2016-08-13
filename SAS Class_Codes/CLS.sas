LIBNAME C "C:\Documents and Settings\STD\Desktop\SOUVIK SIR BATCH FILES\BATCH 70\CLS";
RUN;
ODS HTML FILE = "C:\Documents and Settings\STD\Desktop\SOUVIK SIR BATCH FILES\BATCH 69\CLS\M.XLS";
PROC MEANS DATA = C.CLUSTER_DATA Nmiss;
RUN;
ODS HTML CLOSE;
/*FACTOR ANALYSIS*/
ODS HTML FILE = "C:\Documents and Settings\STD\Desktop\SOUVIK SIR BATCH FILES\BATCH 69\CLS\F.XLS";
PROC FACTOR DATA = C.CLUSTER_data NFACT = 18 
METHOD = PRIN ROTATE = VARIMAX OUT = C.FAC;
VAR
med_Actual_price_12
AVG_Actual_price_12
TOTAL_DAILY_ORDER_NET_AMT_12
AVG_DAILY_ORDER_NET_AMT_12
TOTAL_LINE_ITEM_QTY_12
AVG_LINE_ITEM_QTY_12
TOTAL_DOLLAR_DISCOUNT_12
AVG_DOLLAR_DISCOUNT_12
SIZE_NET_SALES
SIZE_QTY
SIZE_DOLLAR_DISC
RATIO_DISC_SALES
med_DAILY_ORDER_NET_AMT_12
med_LINE_ITEM_QTY_12
med_DOLLAR_DISCOUNT_12
MONTH_SINCE_LAST_TRANSACTION
count
sum_value_12
;
RUN; 
QUIT;
ODS HTML CLOSE;
/*STANDARDISATION*/ 
/*(X - MEAN)/STAND DEV*/
/*only selected variables from factor analysis*/
/*to be standardised*/
PROC STANDARD DATA = C.CLUSTER_data
MEAN = 0 STD = 1 OUT = C.STD;
VAR 
med_Actual_price_12
AVG_Actual_price_12
TOTAL_DAILY_ORDER_NET_AMT_12
TOTAL_LINE_ITEM_QTY_12
AVG_LINE_ITEM_QTY_12
TOTAL_DOLLAR_DISCOUNT_12
AVG_DOLLAR_DISCOUNT_12
RATIO_DISC_SALES
med_LINE_ITEM_QTY_12
med_DOLLAR_DISCOUNT_12
MONTH_SINCE_LAST_TRANSACTION
;
RUN;
quit;
/*CLUSTER FORMATION*/
ODS HTML FILE = "C:\Documents and Settings\STD\Desktop\SOUVIK SIR BATCH FILES\BATCH 68\CLS\C1.XLS";
PROC FASTCLUS DATA = C.STD MAXC = 50
MAXITER = 150 DELETE = 36 OUT = C.CLOUT; 
VAR
med_Actual_price_12
AVG_Actual_price_12
TOTAL_DAILY_ORDER_NET_AMT_12
TOTAL_LINE_ITEM_QTY_12
AVG_LINE_ITEM_QTY_12
TOTAL_DOLLAR_DISCOUNT_12
AVG_DOLLAR_DISCOUNT_12
RATIO_DISC_SALES
med_LINE_ITEM_QTY_12
med_DOLLAR_DISCOUNT_12
MONTH_SINCE_LAST_TRANSACTION
;QUIT;
ODS HTML CLOSE;
1. CLEAN THE DATA
2. FACTOR ANALYSIS - IDENTIFY THE VARIABLES
3. STANDARDISE THEM
4. CLUSTER ANALYSIS WITH ALL 6 CHECKS
/*GETTING CLUSTER MEMBERSHIP 
VARIABLE IN THE ORIGINAL FILE*/
PROC SQL;
CREATE TABLE C.FIN 
AS SELECT X.*,Y.CLUSTER
FROM C.CLUSTER_data X,C.CLOUT Y
WHERE X.CUST_ID = Y.CUST_ID;
QUIT;
ODS HTML FILE = "C:\Documents and Settings\STD\Desktop\SOUVIK SIR BATCH FILES\C.XLS";
PROC MEANS DATA = C.FIN MEAN;
VAR 
AVG_Actual_price_12
RATIO_DISC_SALES
TOTAL_LINE_ITEM_QTY_12
MONTH_SINCE_LAST_TRANSACTION;
CLASS CLUSTER;
RUN;
ods HTML CLOSE;
