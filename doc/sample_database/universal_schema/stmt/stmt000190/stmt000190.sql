SELECT	"State"	,"AnnualPayroll2003" AS "_twm_Valu"	,"_twm_Sad" AS "_twm_Sad"	,CAST(SUM(1) OVER (PARTITION BY "State" 
ORDER	BY "AnnualPayroll2003" ROWS UNBOUNDED PRECEDING) AS FLOAT) AS "_twm_Rnk"	FROM "universal_schema"."demographics" "T1",
			(	SELECT "AverageHouseValueSF3"	,SUM(1) OVER (
ORDER	BY "AverageHouseValueSF3" ROWS UNBOUNDED PRECEDING) AS "_twm_sad"	FROM	(	SELECT "AverageHouseValueSF3"	FROM "universal_schema"."demographics"	GROUP BY "AverageHouseValueSF3"	) AS "T3"	) AS "T2"	where "T1"."AverageHouseValueSF3" = "T2"."AverageHouseValueSF3"