SELECT	TOP 1 L.LOCATION_NAME "STORE", D.CITY "CITY" , SUM(S.MKB_REV_AMT - S.MKB_COST_AMT) "MARGIN"
FROM	universal_schema.LOCATION L,universal_schema.SALES_TRANSACTION S,
		universal_schema.DEMOGRAPHICS D, universal_schema.ASSOCIATE A,
		universal_schema.PARTY P
WHERE	
S.TRAN_DATE BETWEEN '2005-06-01' 
	AND	'2005-06-30'
	AND	S.ASSOCIATE_PARTY_ID = A.ASSOCIATE_PARTY_ID
	AND	A.LOCATION_ID = L.LOCATION_ID
	AND	S.REWARD_CD = P.PARTY_ID
	AND	P.PARTY_ZIP = D.ZIPCODE
ORDER	BY "MARGIN" DESC
GROUP	BY L.LOCATION_NAME, D.CITY