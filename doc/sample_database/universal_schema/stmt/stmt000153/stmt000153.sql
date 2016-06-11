SELECT	R.REGION_NAME "REGION NAME", SUM(S.MKB_REV_AMT) "ALL HISTORY REVENUE"
FROM	
universal_schema.LOCATION L, universal_schema.ASSOCIATE A, universal_schema.SALES_TRANSACTION S,
		universal_schema.DISTRICT D, universal_schema.REGION R
WHERE	
S.ASSOCIATE_PARTY_ID = A.ASSOCIATE_PARTY_ID
	AND	S.TRAN_DATE < '2005-07-01'
	AND	R.REGION_CD = 'REGION_A'
	AND	A.LOCATION_ID = L.LOCATION_ID
	AND	L.DISTRICT_CD = D.DISTRICT_CD
	AND	R.REGION_CD = D.REGION_CD
ORDER	BY "ALL HISTORY REVENUE" DESC
GROUP	BY R.REGION_NAME