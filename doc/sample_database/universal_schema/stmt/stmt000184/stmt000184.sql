SELECT	'return_transaction_line' AS "xtbl"
,'Original_Sales_Tran_Id' AS "xcol"
,"Original_Sales_Tran_Id" AS "xval"
,CAST(COUNT(*) AS FLOAT) AS "xcnt"
,100.000 * "xcnt" / "xall" AS "xpct"
,MIN(CAST("Location_Id" AS FLOAT)) AS "xmin_Location_Id"
,MAX(CAST("Location_Id" AS FLOAT)) AS "xmax_Location_Id"
,AVG(CAST("Location_Id" AS FLOAT)) AS "xmean_Location_Id"
,STDDEV_POP(CAST("Location_Id" AS FLOAT)) AS "xstd_Location_Id"
FROM	"universal_schema"."return_transaction_line" A,	(
SELECT	CAST(COUNT(*) AS FLOAT) AS "xall"	FROM "universal_schema"."return_transaction_line"	) B
GROUP	BY "xtbl", "xcol", "xval", "xall"
HAVING	"xpct" >= 0.002
ORDER	BY "xcnt" DESC, "xval"