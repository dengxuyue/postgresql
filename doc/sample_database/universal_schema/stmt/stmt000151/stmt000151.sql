SELECT	L.LOCATION_NAME "STORE NAME",SUM(S.MKB_REV_AMT) "ALL HISTORY REVENUE"
FROM	
universal_schema.LOCATION L, universal_schema.ASSOCIATE A, universal_schema.SALES_TRANSACTION S
WHERE	
S.ASSOCIATE_PARTY_ID = A.ASSOCIATE_PARTY_ID
	AND	S.TRAN_DATE < '2005-07-01'
	AND	L.LOCATION_ID = 200
	AND	A.LOCATION_ID = L.LOCATION_ID
ORDER	BY "ALL HISTORY REVENUE" DESC
GROUP	BY L.LOCATION_NAME