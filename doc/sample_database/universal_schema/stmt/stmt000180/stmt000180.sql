SELECT	CAST(COUNT("TRAN_DATE") AS FLOAT) AS "_twm_cnt1"	,CAST(MIN("TRAN_DATE") AS INT) + 19000000 AS "_twm_min1"	,CAST(MAX("TRAN_DATE") AS INT) + 19000000 AS "_twm_max1"	,CAST(CAST(AVG(CAST("TRAN_DATE" - DATE '1900-01-01' AS FLOAT)) AS INT) + DATE '1900-01-01' AS INT) + 19000000 AS "_twm_mean1"	,STDDEV_SAMP("TRAN_DATE" - DATE '1900-01-01') AS "_twm_std1"	,SKEW("TRAN_DATE" - DATE '1900-01-01') AS "_twm_skew1"	,
CASE	WHEN AVG(CAST("TRAN_DATE" - DATE '1900-01-01' AS FLOAT)) = 0 THEN NULL 
ELSE	100*STDDEV_SAMP(CAST("TRAN_DATE" - DATE '1900-01-01' AS FLOAT)) / AVG(CAST("TRAN_DATE" - DATE '1900-01-01' AS FLOAT)) 
END	AS "_twm_cv1"	,STDDEV_SAMP("TRAN_DATE" - DATE '1900-01-01')**2 AS "_twm_var1"	,SUM(CAST("TRAN_DATE" - DATE '1900-01-01' AS FLOAT)) AS "_twm_sum1"	,SUM(("TRAN_DATE" - DATE '1900-01-01')**2) - CAST(COUNT("TRAN_DATE") AS FLOAT)*AVG(CAST("TRAN_DATE" - DATE '1900-01-01' AS FLOAT))**2 AS "_twm_css1"	,CAST(COUNT("SALES_TRAN_ID") AS FLOAT) AS "_twm_cnt2"	,MIN(CAST("SALES_TRAN_ID" AS FLOAT)) AS "_twm_min2"	,MAX(CAST("SALES_TRAN_ID" AS FLOAT)) AS "_twm_max2"	,AVG(CAST("SALES_TRAN_ID" AS FLOAT)) AS "_twm_mean2"	,STDDEV_SAMP(CAST("SALES_TRAN_ID" AS FLOAT)) AS "_twm_std2"	,SKEW(CAST("SALES_TRAN_ID" AS FLOAT)) AS "_twm_skew2"	,
CASE	WHEN AVG(CAST("SALES_TRAN_ID" AS FLOAT)) = 0 THEN NULL 
ELSE	100* STDDEV_SAMP(CAST("SALES_TRAN_ID" AS FLOAT)) / AVG(CAST("SALES_TRAN_ID" AS FLOAT)) 
END	AS "_twm_cv2"	,STDDEV_SAMP(CAST("SALES_TRAN_ID" AS FLOAT))**2 AS "_twm_var2"	,SUM(CAST("SALES_TRAN_ID" AS FLOAT)) AS "_twm_sum2"	,SUM(CAST("SALES_TRAN_ID" AS FLOAT)**2) - CAST(COUNT("SALES_TRAN_ID") AS FLOAT)*AVG(CAST("SALES_TRAN_ID" AS FLOAT))**2 AS "_twm_css2"	,CAST(COUNT("MKB_COST_AMT") AS FLOAT) AS "_twm_cnt3"	,MIN(CAST("MKB_COST_AMT" AS FLOAT)) AS "_twm_min3"	,MAX(CAST("MKB_COST_AMT" AS FLOAT)) AS "_twm_max3"	,AVG(CAST("MKB_COST_AMT" AS FLOAT)) AS "_twm_mean3"	,STDDEV_SAMP(CAST("MKB_COST_AMT" AS FLOAT)) AS "_twm_std3"	,SKEW(CAST("MKB_COST_AMT" AS FLOAT)) AS "_twm_skew3"	,
CASE	WHEN AVG(CAST("MKB_COST_AMT" AS FLOAT)) = 0 THEN NULL 
ELSE	100* STDDEV_SAMP(CAST("MKB_COST_AMT" AS FLOAT)) / AVG(CAST("MKB_COST_AMT" AS FLOAT)) 
END	AS "_twm_cv3"	,STDDEV_SAMP(CAST("MKB_COST_AMT" AS FLOAT))**2 AS "_twm_var3"	,SUM(CAST("MKB_COST_AMT" AS FLOAT)) AS "_twm_sum3"	,SUM(CAST("MKB_COST_AMT" AS FLOAT)**2) - CAST(COUNT("MKB_COST_AMT") AS FLOAT)*AVG(CAST("MKB_COST_AMT" AS FLOAT))**2 AS "_twm_css3"	,CAST(COUNT("MKB_ITEM_QTY") AS FLOAT) AS "_twm_cnt4"	,MIN(CAST("MKB_ITEM_QTY" AS FLOAT)) AS "_twm_min4"	,MAX(CAST("MKB_ITEM_QTY" AS FLOAT)) AS "_twm_max4"	,AVG(CAST("MKB_ITEM_QTY" AS FLOAT)) AS "_twm_mean4"	,STDDEV_SAMP(CAST("MKB_ITEM_QTY" AS FLOAT)) AS "_twm_std4"	,SKEW(CAST("MKB_ITEM_QTY" AS FLOAT)) AS "_twm_skew4"	,
CASE	WHEN AVG(CAST("MKB_ITEM_QTY" AS FLOAT)) = 0 THEN NULL 
ELSE	100* STDDEV_SAMP(CAST("MKB_ITEM_QTY" AS FLOAT)) / AVG(CAST("MKB_ITEM_QTY" AS FLOAT)) 
END	AS "_twm_cv4"	,STDDEV_SAMP(CAST("MKB_ITEM_QTY" AS FLOAT))**2 AS "_twm_var4"	,SUM(CAST("MKB_ITEM_QTY" AS FLOAT)) AS "_twm_sum4"	,SUM(CAST("MKB_ITEM_QTY" AS FLOAT)**2) - CAST(COUNT("MKB_ITEM_QTY") AS FLOAT)*AVG(CAST("MKB_ITEM_QTY" AS FLOAT))**2 AS "_twm_css4"	,CAST(COUNT("MKB_NUMBER_UNIQUE_ITEMS_QTY") AS FLOAT) AS "_twm_cnt5"	,MIN(CAST("MKB_NUMBER_UNIQUE_ITEMS_QTY" AS FLOAT)) AS "_twm_min5"	,MAX(CAST("MKB_NUMBER_UNIQUE_ITEMS_QTY" AS FLOAT)) AS "_twm_max5"	,AVG(CAST("MKB_NUMBER_UNIQUE_ITEMS_QTY" AS FLOAT)) AS "_twm_mean5"	,STDDEV_SAMP(CAST("MKB_NUMBER_UNIQUE_ITEMS_QTY" AS FLOAT)) AS "_twm_std5"	,SKEW(CAST("MKB_NUMBER_UNIQUE_ITEMS_QTY" AS FLOAT)) AS "_twm_skew5"	,
CASE	WHEN AVG(CAST("MKB_NUMBER_UNIQUE_ITEMS_QTY" AS FLOAT)) = 0 THEN NULL 
ELSE	100* STDDEV_SAMP(CAST("MKB_NUMBER_UNIQUE_ITEMS_QTY" AS FLOAT)) / AVG(CAST("MKB_NUMBER_UNIQUE_ITEMS_QTY" AS FLOAT)) 
END	AS "_twm_cv5"	,STDDEV_SAMP(CAST("MKB_NUMBER_UNIQUE_ITEMS_QTY" AS FLOAT))**2 AS "_twm_var5"	,SUM(CAST("MKB_NUMBER_UNIQUE_ITEMS_QTY" AS FLOAT)) AS "_twm_sum5"	,SUM(CAST("MKB_NUMBER_UNIQUE_ITEMS_QTY" AS FLOAT)**2) - CAST(COUNT("MKB_NUMBER_UNIQUE_ITEMS_QTY") AS FLOAT)*AVG(CAST("MKB_NUMBER_UNIQUE_ITEMS_QTY" AS FLOAT))**2 AS "_twm_css5"	,CAST(COUNT("MKB_REV_AMT") AS FLOAT) AS "_twm_cnt6"	,MIN(CAST("MKB_REV_AMT" AS FLOAT)) AS "_twm_min6"	,MAX(CAST("MKB_REV_AMT" AS FLOAT)) AS "_twm_max6"	,AVG(CAST("MKB_REV_AMT" AS FLOAT)) AS "_twm_mean6"	,STDDEV_SAMP(CAST("MKB_REV_AMT" AS FLOAT)) AS "_twm_std6"	,SKEW(CAST("MKB_REV_AMT" AS FLOAT)) AS "_twm_skew6"	,
CASE	WHEN AVG(CAST("MKB_REV_AMT" AS FLOAT)) = 0 THEN NULL 
ELSE	100* STDDEV_SAMP(CAST("MKB_REV_AMT" AS FLOAT)) / AVG(CAST("MKB_REV_AMT" AS FLOAT)) 
END	AS "_twm_cv6"	,STDDEV_SAMP(CAST("MKB_REV_AMT" AS FLOAT))**2 AS "_twm_var6"	,SUM(CAST("MKB_REV_AMT" AS FLOAT)) AS "_twm_sum6"	,SUM(CAST("MKB_REV_AMT" AS FLOAT)**2) - CAST(COUNT("MKB_REV_AMT") AS FLOAT)*AVG(CAST("MKB_REV_AMT" AS FLOAT))**2 AS "_twm_css6"
FROM	"universal_schema"."SALES_TRANSACTION"
WHERE	TRAN_DATE < '2005-10-10'