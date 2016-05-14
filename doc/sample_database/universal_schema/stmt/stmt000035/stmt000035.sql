SELECT	TOP 10 I.ITEM_NAME "PRODUCT NAME",SUM(R.Return_Item_Qty * R.Unit_Refund_Amt) "# OF REFUNDED",
		RANK() OVER (
ORDER	BY "# OF REFUNDED" DESC) "RANK"
FROM	universal_schema.ITEM I, universal_schema.RETURN_TRANSACTION_LINE R
WHERE	
R.Returned_Item_Id = I.ITEM_ID
	AND	CAST(R.Return_Tran_Line_Start_Dttm AS DATE FORMAT 'YYYY-MM-DD') >= '2005-06-01'
ORDER	BY "# OF REFUNDED" DESC
GROUP	BY "PRODUCT NAME"