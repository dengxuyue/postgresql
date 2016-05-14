SELECT	"Location"	,"Tran_Line_Date"
,CAST(COUNT(*) AS FLOAT) AS "xcnt"
,100.000 * "xcnt" / "xall" AS "xpct"
FROM	"universal_schema"."sales_transaction_line" A,	(
SELECT	CAST(COUNT(*) AS FLOAT) AS "xall"	FROM "universal_schema"."sales_transaction_line"	WHERE location <50	) B
WHERE	location <50
GROUP	BY "Location", "Tran_Line_Date", "xall"
HAVING	"xpct" >= 0.1
ORDER	BY "xcnt" DESC, "Location", "Tran_Line_Date"