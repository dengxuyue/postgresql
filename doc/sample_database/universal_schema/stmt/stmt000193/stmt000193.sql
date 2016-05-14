SELECT	"State"	,"AverageHouseValue" AS "_twm_Valu"	,"_twm_Sad" AS "_twm_Sad"	,SUM(1) OVER (PARTITION BY "State" 
ORDER	BY "AverageHouseValue" ROWS UNBOUNDED PRECEDING) AS "_twm_Rnk"	FROM "universal_schema"."demographics" "T1",
			(	SELECT "ZipCode"	,SUM(1) OVER (
ORDER	BY "ZipCode" ROWS UNBOUNDED PRECEDING) AS "_twm_sad"	FROM	(	SELECT "ZipCode"	FROM "universal_schema"."demographics"	GROUP BY "ZipCode"	) AS "T3"	) AS "T2"	WHERE "T1"."ZipCode" = "T2"."ZipCode"