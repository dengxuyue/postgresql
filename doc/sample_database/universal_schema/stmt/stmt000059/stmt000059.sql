SELECT	D.DISTRICT_NAME "DISTRICT NAME",SUM(S.MKB_REV_AMT) "ALL HISTORY REVENUE"
FROM	
universal_schema.LOCATION L, universal_schema.ASSOCIATE A, universal_schema.SALES_TRANSACTION S,
		universal_schema.DISTRICT D
WHERE	
S.ASSOCIATE_PARTY_ID = A.ASSOCIATE_PARTY_ID
	AND	S.TRAN_DATE < '2005-07-01'
	AND	D.DISTRICT_CD = 'DISTRICT_A'
	AND	A.LOCATION_ID = L.LOCATION_ID
	AND	L.DISTRICT_CD = D.DISTRICT_CD
ORDER	BY "ALL HISTORY REVENUE" DESC
GROUP	BY D.DISTRICT_NAME