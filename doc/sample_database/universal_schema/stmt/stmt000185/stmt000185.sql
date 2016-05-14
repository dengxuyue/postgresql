SELECT	1 AS "xidx", '#records ' AS "xtable", "SALES_TRANSACTION",
		"sales_transaction_line" 
FROM	(
SELECT	CAST(COUNT(*) AS FLOAT) AS "SALES_TRANSACTION" 
FROM	"universal_schema"."SALES_TRANSACTION") T1	, (
SELECT	CAST(COUNT(*) AS FLOAT) AS "sales_transaction_line" 
FROM	"universal_schema"."sales_transaction_line") T2
UNION	
SELECT	2, '#uniques ', "SALES_TRANSACTION", "sales_transaction_line" 
FROM	(
SELECT	CAST(COUNT(DISTINCT "TRAN_DATE"||"SALES_TRAN_ID") AS FLOAT) AS "SALES_TRANSACTION" 
FROM	"universal_schema"."SALES_TRANSACTION") T1	, (
SELECT	CAST(COUNT(DISTINCT "Tran_Line_Date"||"SALES_TRAN_ID") AS FLOAT) AS "sales_transaction_line" 
FROM	"universal_schema"."sales_transaction_line") T2
UNION	
SELECT	3, 'SALES_TRANSACTION ', NULL, "sales_transaction_line" 
FROM	(
SELECT	CAST(COUNT(DISTINCT c1) AS FLOAT) AS "sales_transaction_line" 
FROM	(
SELECT	DISTINCT "TRAN_DATE"||"SALES_TRAN_ID" AS c1 
FROM	"universal_schema"."SALES_TRANSACTION") A, (
SELECT	DISTINCT "Tran_Line_Date"||"SALES_TRAN_ID" AS c2 
FROM	"universal_schema"."sales_transaction_line") B	WHERE c1 = c2) T2
ORDER	BY 1