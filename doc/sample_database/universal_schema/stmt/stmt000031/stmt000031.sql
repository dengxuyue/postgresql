SELECT	EXTRACT(MONTH 
FROM	Return_Tran_Line_Start_Dttm) "MONTH", EXTRACT(YEAR 
FROM	Return_Tran_Line_Start_Dttm) "YEAR", SUM(Return_Item_Qty * Unit_Refund_Amt) "# OF REFUNDED"
FROM	universal_schema.RETURN_TRANSACTION_LINE
ORDER	BY "YEAR" DESC, "MONTH" DESC
GROUP	BY "YEAR", "MONTH"