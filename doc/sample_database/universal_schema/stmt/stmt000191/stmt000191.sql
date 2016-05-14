SELECT	"State"	,"AnnualPayroll2003" AS "_twm_Valu"	,"_twm_Sad" AS "_twm_Sad"	,CAST(SUM(1) OVER (PARTITION BY "State" 
ORDER	BY "AnnualPayroll2003" ROWS UNBOUNDED PRECEDING) AS FLOAT) AS "_twm_Rnk"	FROM "universal_schema"."demographics" "T1",
			(	SELECT "BlackPopulation"	,SUM(1) OVER (
ORDER	BY "BlackPopulation" ROWS UNBOUNDED PRECEDING) AS "_twm_sad"	FROM	(	SELECT "BlackPopulation"	FROM "universal_schema"."demographics"	GROUP BY "BlackPopulation"	) AS "T3"	) AS "T2"	where "T1"."BlackPopulation" = "T2"."BlackPopulation"