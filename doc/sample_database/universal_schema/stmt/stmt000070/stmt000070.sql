SELECT	L.LOCATION_NAME "STORE NAME", '2004-07 TO 2005-06' "PERIOD",
		SUM(S.MKB_REV_AMT) "LAST YEAR REVENUE"
FROM	
universal_schema.LOCATION L, universal_schema.ASSOCIATE A, universal_schema.SALES_TRANSACTION S
WHERE	
S.TRAN_DATE BETWEEN '2004-07-01' 
	AND	'2005-06-30'
	AND	L.LOCATION_ID = 200
	AND	S.ASSOCIATE_PARTY_ID = A.ASSOCIATE_PARTY_ID
	AND	A.LOCATION_ID = L.LOCATION_ID
ORDER	BY "LAST YEAR REVENUE" DESC
GROUP	BY L.LOCATION_NAME, "PERIOD"