SELECT	EXTRACT(MONTH 
FROM	R.Return_Tran_Line_Start_Dttm) "MONTH", EXTRACT(YEAR 
FROM	R.Return_Tran_Line_Start_Dttm) "YEAR",
L.LOCATION_NAME "STORE NAME", SUM(R.Return_Item_Qty * R.Unit_Refund_Amt) "# OF REFUNDED"
FROM	universal_schema.LOCATION L, universal_schema.RETURN_TRANSACTION_LINE R,
		universal_schema.SALES_TRANSACTION_LINE S
WHERE	R.Original_Sales_Tran_Id = S.SALES_TRAN_ID
	AND	S.LOCATION = L.LOCATION_ID
	AND	CAST(R.Return_Tran_Line_Start_Dttm AS DATE FORMAT 'YYYY-MM-DD') >= '2004-01-01'
ORDER	BY "YEAR" DESC, "MONTH" DESC
GROUP	BY "STORE NAME", "YEAR", "MONTH"