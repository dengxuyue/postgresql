SELECT	"Region"	,"AverageHouseValue" AS "_twm_Valu"	,"_twm_Sad" AS "_twm_Sad"	,SUM(1) OVER (PARTITION BY "Region" 
ORDER	BY "AverageHouseValue" ROWS UNBOUNDED PRECEDING) AS "_twm_Rnk"	FROM "universal_schema"."demographics" "T1",
			(	SELECT "State"	,SUM(1) OVER (
ORDER	BY "State" ROWS UNBOUNDED PRECEDING) AS "_twm_sad"	FROM	(	SELECT "State"	FROM "universal_schema"."demographics"	GROUP BY "State"	) AS "T3"	) AS "T2"	where "T1"."State" = "T2"."State"