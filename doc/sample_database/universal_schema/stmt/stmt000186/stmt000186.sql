SELECT	"ZipCode"	,CAST(COUNT(*) AS FLOAT) AS "_twm_cnt"	,CAST(SUM( 
CASE	WHEN "AnnualPayroll2003" IS NULL THEN 1.0E0 
ELSE	0.0E0 
END	) AS FLOAT) AS "_twm_null1"	,CAST(SUM( 
CASE	WHEN "AnnualPayroll2003" = 0 THEN 1.0E0 
ELSE	0.0E0 
END	) AS FLOAT) AS "_twm_zero1"	,CAST(SUM( 
CASE	WHEN "AnnualPayroll2003" > 0 THEN 1.0E0 
ELSE	0.0E0 
END	) AS FLOAT) AS "_twm_pos1"	,CAST(SUM( 
CASE	WHEN "AnnualPayroll2003" < 0 THEN 1.0E0 
ELSE	0.0E0 
END	) AS FLOAT) AS "_twm_neg1"	,CAST(SUM( 
CASE	WHEN "AreaCode" IS NULL THEN 1.0E0 
ELSE	0.0E0 
END	) AS FLOAT) AS "_twm_null2"	,CAST(SUM( 
CASE	WHEN "AreaCode" = ' ' THEN 1.0E0 
ELSE	0.0E0 
END	) AS FLOAT) AS "_twm_blank2"	,CAST(SUM( 
CASE	WHEN "AverageHouseValue" IS NULL THEN 1.0E0 
ELSE	0.0E0 
END	) AS FLOAT) AS "_twm_null3"	,CAST(SUM( 
CASE	WHEN "AverageHouseValue" = 0 THEN 1.0E0 
ELSE	0.0E0 
END	) AS FLOAT) AS "_twm_zero3"	,CAST(SUM( 
CASE	WHEN "AverageHouseValue" > 0 THEN 1.0E0 
ELSE	0.0E0 
END	) AS FLOAT) AS "_twm_pos3"	,CAST(SUM( 
CASE	WHEN "AverageHouseValue" < 0 THEN 1.0E0 
ELSE	0.0E0 
END	) AS FLOAT) AS "_twm_neg3"	,CAST(SUM( 
CASE	WHEN "AverageHouseValueSF3" IS NULL THEN 1.0E0 
ELSE	0.0E0 
END	) AS FLOAT) AS "_twm_null4"	,CAST(SUM( 
CASE	WHEN "AverageHouseValueSF3" = 0 THEN 1.0E0 
ELSE	0.0E0 
END	) AS FLOAT) AS "_twm_zero4"	,CAST(SUM( 
CASE	WHEN "AverageHouseValueSF3" > 0 THEN 1.0E0 
ELSE	0.0E0 
END	) AS FLOAT) AS "_twm_pos4"	,CAST(SUM( 
CASE	WHEN "AverageHouseValueSF3" < 0 THEN 1.0E0 
ELSE	0.0E0 
END	) AS FLOAT) AS "_twm_neg4"	,CAST(SUM( 
CASE	WHEN "BlackPopulation" IS NULL THEN 1.0E0 
ELSE	0.0E0 
END	) AS FLOAT) AS "_twm_null5"	,CAST(SUM( 
CASE	WHEN "BlackPopulation" = 0 THEN 1.0E0 
ELSE	0.0E0 
END	) AS FLOAT) AS "_twm_zero5"	,CAST(SUM( 
CASE	WHEN "BlackPopulation" > 0 THEN 1.0E0 
ELSE	0.0E0 
END	) AS FLOAT) AS "_twm_pos5"	,CAST(SUM( 
CASE	WHEN "BlackPopulation" < 0 THEN 1.0E0 
ELSE	0.0E0 
END	) AS FLOAT) AS "_twm_neg5"	,CAST(SUM( 
CASE	WHEN "HispanicPopulation" IS NULL THEN 1.0E0 
ELSE	0.0E0 
END	) AS FLOAT) AS "_twm_null6"	,CAST(SUM( 
CASE	WHEN "HispanicPopulation" = 0 THEN 1.0E0 
ELSE	0.0E0 
END	) AS FLOAT) AS "_twm_zero6"	,CAST(SUM( 
CASE	WHEN "HispanicPopulation" > 0 THEN 1.0E0 
ELSE	0.0E0 
END	) AS FLOAT) AS "_twm_pos6"	,CAST(SUM( 
CASE	WHEN "HispanicPopulation" < 0 THEN 1.0E0 
ELSE	0.0E0 
END	) AS FLOAT) AS "_twm_neg6"	,CAST(SUM( 
CASE	WHEN "HouseholdsPerZipcode" IS NULL THEN 1.0E0 
ELSE	0.0E0 
END	) AS FLOAT) AS "_twm_null7"	,CAST(SUM( 
CASE	WHEN "HouseholdsPerZipcode" = 0 THEN 1.0E0 
ELSE	0.0E0 
END	) AS FLOAT) AS "_twm_zero7"	,CAST(SUM( 
CASE	WHEN "HouseholdsPerZipcode" > 0 THEN 1.0E0 
ELSE	0.0E0 
END	) AS FLOAT) AS "_twm_pos7"	,CAST(SUM( 
CASE	WHEN "HouseholdsPerZipcode" < 0 THEN 1.0E0 
ELSE	0.0E0 
END	) AS FLOAT) AS "_twm_neg7"	,CAST(SUM( 
CASE	WHEN "IncomePerHousehold" IS NULL THEN 1.0E0 
ELSE	0.0E0 
END	) AS FLOAT) AS "_twm_null8"	,CAST(SUM( 
CASE	WHEN "IncomePerHousehold" = 0 THEN 1.0E0 
ELSE	0.0E0 
END	) AS FLOAT) AS "_twm_zero8"	,CAST(SUM( 
CASE	WHEN "IncomePerHousehold" > 0 THEN 1.0E0 
ELSE	0.0E0 
END	) AS FLOAT) AS "_twm_pos8"	,CAST(SUM( 
CASE	WHEN "IncomePerHousehold" < 0 THEN 1.0E0 
ELSE	0.0E0 
END	) AS FLOAT) AS "_twm_neg8"	,CAST(SUM( 
CASE	WHEN "PersonsPerHousehold" IS NULL THEN 1.0E0 
ELSE	0.0E0 
END	) AS FLOAT) AS "_twm_null9"	,CAST(SUM( 
CASE	WHEN "PersonsPerHousehold" = 0 THEN 1.0E0 
ELSE	0.0E0 
END	) AS FLOAT) AS "_twm_zero9"	,CAST(SUM( 
CASE	WHEN "PersonsPerHousehold" > 0 THEN 1.0E0 
ELSE	0.0E0 
END	) AS FLOAT) AS "_twm_pos9"	,CAST(SUM( 
CASE	WHEN "PersonsPerHousehold" < 0 THEN 1.0E0 
ELSE	0.0E0 
END	) AS FLOAT) AS "_twm_neg9"	,CAST(SUM( 
CASE	WHEN "Population" IS NULL THEN 1.0E0 
ELSE	0.0E0 
END	) AS FLOAT) AS "_twm_null10"	,CAST(SUM( 
CASE	WHEN "Population" = 0 THEN 1.0E0 
ELSE	0.0E0 
END	) AS FLOAT) AS "_twm_zero10"	,CAST(SUM( 
CASE	WHEN "Population" > 0 THEN 1.0E0 
ELSE	0.0E0 
END	) AS FLOAT) AS "_twm_pos10"	,CAST(SUM( 
CASE	WHEN "Population" < 0 THEN 1.0E0 
ELSE	0.0E0 
END	) AS FLOAT) AS "_twm_neg10"
FROM	"universal_schema"."demographics"
GROUP	BY "ZipCode"