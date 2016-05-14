/*
 * This ddl contains: RI/HI/JI/SI/PPI/MLPPI
 *
 */
/*RI*/
ALTER TABLE UNIVERSAL_SCHEMA.BRAND
    ADD CONSTRAINT R_4 FOREIGN KEY (BRAND_PARTY_ID) REFERENCES UNIVERSAL_SCHEMA.BRAND_OWNER_ORG (BRAND_PARTY_ID); 

ALTER TABLE UNIVERSAL_SCHEMA.ITEM
    ADD CONSTRAINT R_30 FOREIGN KEY (BRAND_CD) REFERENCES UNIVERSAL_SCHEMA.BRAND (BRAND_CD); 

ALTER TABLE UNIVERSAL_SCHEMA.ITEM_PRICE_HISTORY
    ADD CONSTRAINT R_38 FOREIGN KEY (PRICE_CHANGE_REASON_CD) REFERENCES UNIVERSAL_SCHEMA.PRICE_CHANGE_REASON (PRICE_CHANGE_REASON_CD); 

ALTER TABLE UNIVERSAL_SCHEMA.ITEM_PRICE_HISTORY
    ADD CONSTRAINT R_39 FOREIGN KEY (ITEM_ID) REFERENCES UNIVERSAL_SCHEMA.ITEM (ITEM_ID); 

ALTER TABLE UNIVERSAL_SCHEMA.ITEM_TRAIT
    ADD CONSTRAINT R_1 FOREIGN KEY (ITEM_ID) REFERENCES UNIVERSAL_SCHEMA.ITEM (ITEM_ID); 

ALTER TABLE UNIVERSAL_SCHEMA.ITEM_TRAIT
    ADD CONSTRAINT R_55 FOREIGN KEY (TRAIT_CD) REFERENCES UNIVERSAL_SCHEMA.TRAIT (TRAIT_CD); 

ALTER TABLE UNIVERSAL_SCHEMA.TRAIT
    ADD CONSTRAINT R_40 FOREIGN KEY (TRAIT_GROUP_CD) REFERENCES UNIVERSAL_SCHEMA.TRAIT_GROUP (TRAIT_GROUP_CD); 

ALTER TABLE UNIVERSAL_SCHEMA.TRAIT_VALUE
    ADD CONSTRAINT R_54 FOREIGN KEY (TRAIT_CD) REFERENCES UNIVERSAL_SCHEMA.TRAIT (TRAIT_CD); 

ALTER TABLE UNIVERSAL_SCHEMA.SALES_TRANSACTION
    ADD CONSTRAINT XPKSALES_TRANSACTION PRIMARY KEY (SALES_TRAN_ID); 

ALTER TABLE UNIVERSAL_SCHEMA.RETURN_TRANSACTION_LINE
    ADD CONSTRAINT R_12 FOREIGN KEY (RETURNED_ITEM_ID) REFERENCES UNIVERSAL_SCHEMA.ITEM (ITEM_ID); 

ALTER TABLE UNIVERSAL_SCHEMA.RETURN_TRANSACTION_LINE
    ADD CONSTRAINT R_13 FOREIGN KEY (RETURN_REASON_CD) REFERENCES UNIVERSAL_SCHEMA.RETURN_REASON (RETURN_REASON_CD); 

ALTER TABLE UNIVERSAL_SCHEMA.RETURN_TRANSACTION_LINE
    ADD CONSTRAINT R_14 FOREIGN KEY (SALES_TRAN_ID) REFERENCES UNIVERSAL_SCHEMA.SALES_TRANSACTION (SALES_TRAN_ID); 

ALTER TABLE UNIVERSAL_SCHEMA.SALES_TRANSACTION_LINE
    ADD CONSTRAINT XPKSALES_TRANSACTION_LINE PRIMARY KEY (SALES_TRAN_ID,SALES_TRAN_LINE_NUM); 

ALTER TABLE UNIVERSAL_SCHEMA.SALES_TRANSACTION_LINE
    ADD CONSTRAINT R_26 FOREIGN KEY (ITEM_ID) REFERENCES UNIVERSAL_SCHEMA.ITEM (ITEM_ID); 

ALTER TABLE UNIVERSAL_SCHEMA.SALES_TRANSACTION_LINE
    ADD CONSTRAINT R_51 FOREIGN KEY (SALES_TRAN_ID) REFERENCES UNIVERSAL_SCHEMA.SALES_TRANSACTION (SALES_TRAN_ID); 

ALTER TABLE UNIVERSAL_SCHEMA.DIVISION
    ADD CONSTRAINT R_41 FOREIGN KEY (ALL_DIVISIONS_CD) REFERENCES UNIVERSAL_SCHEMA.ALL_DIVISIONS (ALL_DIVISIONS_CD); 

ALTER TABLE UNIVERSAL_SCHEMA.REGION
    ADD CONSTRAINT R_48 FOREIGN KEY (DIVISION_CD) REFERENCES UNIVERSAL_SCHEMA.DIVISION (DIVISION_CD); 

ALTER TABLE UNIVERSAL_SCHEMA.DISTRICT
    ADD CONSTRAINT R_28 FOREIGN KEY (REGION_CD) REFERENCES UNIVERSAL_SCHEMA.REGION (REGION_CD); 

ALTER TABLE UNIVERSAL_SCHEMA.COST
    ADD CONSTRAINT R_29 FOREIGN KEY (COST_TYPE_CD) REFERENCES UNIVERSAL_SCHEMA.COST_TYPE (COST_TYPE_CD); 

ALTER TABLE UNIVERSAL_SCHEMA.OFFERS_20050701
    ADD CONSTRAINT R_34 FOREIGN KEY (PROMO_ID) REFERENCES UNIVERSAL_SCHEMA.CURRENT_PROMO (PROMO_ID); 

ALTER TABLE UNIVERSAL_SCHEMA.OFFERS_20050701
    ADD CONSTRAINT R_33 FOREIGN KEY (LOCATION_ID) REFERENCES UNIVERSAL_SCHEMA.LOCATION (LOCATION_ID); 

ALTER TABLE UNIVERSAL_SCHEMA.LOCATION
    ADD CONSTRAINT R_6 FOREIGN KEY (LOCATION_TYPE_CD) REFERENCES UNIVERSAL_SCHEMA.LOCATION_TYPE (LOCATION_TYPE_CD); 

ALTER TABLE UNIVERSAL_SCHEMA.LOCATION
    ADD CONSTRAINT R_7 FOREIGN KEY (CHANNEL_CD) REFERENCES UNIVERSAL_SCHEMA.CHANNEL (CHANNEL_CD); 

ALTER TABLE UNIVERSAL_SCHEMA.LOCATION
    ADD CONSTRAINT R_8 FOREIGN KEY (DISTRICT_CD) REFERENCES UNIVERSAL_SCHEMA.DISTRICT (DISTRICT_CD); 

ALTER TABLE UNIVERSAL_SCHEMA.LOCATION_PLAN
    ADD CONSTRAINT R_17 FOREIGN KEY (COST_CD) REFERENCES UNIVERSAL_SCHEMA.COST (COST_CD); 

ALTER TABLE UNIVERSAL_SCHEMA.LOCATION_PLAN
    ADD CONSTRAINT R_18 FOREIGN KEY (LOCATION_ID) REFERENCES UNIVERSAL_SCHEMA.LOCATION (LOCATION_ID); 

ALTER TABLE UNIVERSAL_SCHEMA.ALERT_EMAILS
    ADD CONSTRAINT R_49 FOREIGN KEY (LOCATION_ID) REFERENCES UNIVERSAL_SCHEMA.LOCATION (LOCATION_ID); 

ALTER TABLE UNIVERSAL_SCHEMA.LABOR_PLAN
    ADD CONSTRAINT R_45 FOREIGN KEY (WORK_SHIFT_CD) REFERENCES UNIVERSAL_SCHEMA.WORK_SHIFT (WORK_SHIFT_CD); 

ALTER TABLE UNIVERSAL_SCHEMA.LABOR_PLAN
    ADD CONSTRAINT R_46 FOREIGN KEY (JOB_CLASSIFICATION_CD) REFERENCES UNIVERSAL_SCHEMA.JOB_CLASSIFICATION (JOB_CLASSIFICATION_CD); 

ALTER TABLE UNIVERSAL_SCHEMA.LABOR_PLAN
    ADD CONSTRAINT R_44 FOREIGN KEY (LOCATION_ID) REFERENCES UNIVERSAL_SCHEMA.LOCATION (LOCATION_ID); 

ALTER TABLE UNIVERSAL_SCHEMA.ITEM_STORE_SOLD
    ADD CONSTRAINT R_19 FOREIGN KEY (LOCATION_ID) REFERENCES UNIVERSAL_SCHEMA.LOCATION (LOCATION_ID); 

ALTER TABLE UNIVERSAL_SCHEMA.ITEM_INVENTORY_PLAN
    ADD CONSTRAINT R_3 FOREIGN KEY (LOCATION_ID) REFERENCES UNIVERSAL_SCHEMA.LOCATION (LOCATION_ID); 

ALTER TABLE UNIVERSAL_SCHEMA.ITEM_INVENTORY
    ADD CONSTRAINT R_5 FOREIGN KEY (LOCATION_ID) REFERENCES UNIVERSAL_SCHEMA.LOCATION (LOCATION_ID); 

ALTER TABLE UNIVERSAL_SCHEMA.ASSOCIATE_POSITION
    ADD CONSTRAINT R_35 FOREIGN KEY (POSITION_GRADE_CD) REFERENCES UNIVERSAL_SCHEMA.POSITION_GRADE (POSITION_GRADE_CD); 

ALTER TABLE UNIVERSAL_SCHEMA.ASSOCIATE_POSITION
    ADD CONSTRAINT R_36 FOREIGN KEY (POSITION_TYPE_CD) REFERENCES UNIVERSAL_SCHEMA.POSITION_TYPE (POSITION_TYPE_CD); 

ALTER TABLE UNIVERSAL_SCHEMA.ASSOCIATE
    ADD CONSTRAINT R_23 FOREIGN KEY (LOCATION_ID) REFERENCES UNIVERSAL_SCHEMA.LOCATION (LOCATION_ID); 

ALTER TABLE UNIVERSAL_SCHEMA.ASSOCIATE
    ADD CONSTRAINT R_24 FOREIGN KEY (POSITION_ID) REFERENCES UNIVERSAL_SCHEMA.ASSOCIATE_POSITION (POSITION_ID); 

ALTER TABLE UNIVERSAL_SCHEMA.ASSOCIATE_BENEFIT_EXPENSE
    ADD CONSTRAINT R_43 FOREIGN KEY (ASSOCIATE_EXPNS_TYPE_CD) REFERENCES UNIVERSAL_SCHEMA.ASSOCIATE_EXPENSE_TYPE (ASSOCIATE_EXPNS_TYPE_CD); 

ALTER TABLE UNIVERSAL_SCHEMA.ASSOCIATE_BENEFIT_EXPENSE
    ADD CONSTRAINT R_42 FOREIGN KEY (ASSOCIATE_PARTY_ID) REFERENCES UNIVERSAL_SCHEMA.ASSOCIATE (ASSOCIATE_PARTY_ID); 

ALTER TABLE UNIVERSAL_SCHEMA.ASSOCIATE_LABOR_EXPENSE
    ADD CONSTRAINT R_10 FOREIGN KEY (ASSOCIATE_EXPNS_TYPE_CD) REFERENCES UNIVERSAL_SCHEMA.ASSOCIATE_EXPENSE_TYPE (ASSOCIATE_EXPNS_TYPE_CD); 

ALTER TABLE UNIVERSAL_SCHEMA.ASSOCIATE_LABOR_EXPENSE
    ADD CONSTRAINT R_9 FOREIGN KEY (ASSOCIATE_PARTY_ID) REFERENCES UNIVERSAL_SCHEMA.ASSOCIATE (ASSOCIATE_PARTY_ID); 

/*JI*/
CREATE JOIN INDEX UNIVERSAL_SCHEMA.usji01 AS
    SELECT  L.LOCATION_ID                       AS JIXC1,
            I.ITEM_ID                           AS JIXC2,
            L.LOCATION_NAME                     AS JIXC3,
            I.ITEM_NAME                         AS JIXC4,
            STL.TRAN_LINE_DATE                  AS JIXC5,
            STL.ITEM_QTY                        AS JIXC6,
            STL.UNIT_SELLING_PRICE_AMT          AS JIXC7,
            STL.UNIT_COST_AMT                   AS JIXC8
    FROM    UNIVERSAL_SCHEMA.SALES_TRANSACTION_LINE   AS STL,
            UNIVERSAL_SCHEMA.ITEM                     AS I,
            UNIVERSAL_SCHEMA.LOCATION                 AS L--@END
    WHERE STL.ITEM_ID = I.ITEM_ID    AND
          STL.LOCATION = L.LOCATION_ID
    ORDER BY JIXC5
PRIMARY INDEX(JIXC1, JIXC2);

CREATE JOIN INDEX UNIVERSAL_SCHEMA.usji02 AS
    SELECT  I.ITEM_ID                           AS JIXC1,
            I.ITEM_NAME                         AS JIXC2,
            STL.TRAN_LINE_DATE                  AS JIXC3,
            STL.ITEM_QTY                        AS JIXC4,
            STL.UNIT_SELLING_PRICE_AMT          AS JIXC5,
            STL.UNIT_COST_AMT                   AS JIXC6,
            STL.SALES_TRAN_ID                   AS JIXC7
    FROM    UNIVERSAL_SCHEMA.SALES_TRANSACTION_LINE   AS STL,
            UNIVERSAL_SCHEMA.ITEM                     AS I--@END
    WHERE STL.ITEM_ID = I.ITEM_ID
    ORDER BY JIXC3
PRIMARY INDEX(JIXC1);

CREATE JOIN INDEX UNIVERSAL_SCHEMA.usji03 AS
    SELECT  L.LOCATION_ID                       AS JIXC1,
            L.LOCATION_NAME                     AS JIXC2,
            STL.TRAN_LINE_DATE                  AS JIXC3,
            STL.ITEM_QTY                        AS JIXC4,
            STL.UNIT_SELLING_PRICE_AMT          AS JIXC5,
            STL.UNIT_COST_AMT                   AS JIXC6,
            STL.SALES_TRAN_ID                   AS JIXC7
    FROM    UNIVERSAL_SCHEMA.SALES_TRANSACTION_LINE   AS STL,
            UNIVERSAL_SCHEMA.LOCATION                 AS L--@END
    WHERE   STL.LOCATION = L.LOCATION_ID
    ORDER BY JIXC3
PRIMARY INDEX(JIXC1);

CREATE JOIN INDEX UNIVERSAL_SCHEMA.usji04 AS
    SELECT  STL.LOCATION                        AS JIXC1,
            STL.ITEM_ID                         AS JIXC2,
            STL.TRAN_LINE_DATE                  AS JIXC3,
            STL.ITEM_QTY                        AS JIXC4,
            STL.UNIT_SELLING_PRICE_AMT          AS JIXC5,
            STL.UNIT_COST_AMT                   AS JIXC6
    FROM    UNIVERSAL_SCHEMA.SALES_TRANSACTION_LINE   AS STL--@END
    ORDER BY JIXC5
PRIMARY INDEX(JIXC1, JIXC2);

CREATE JOIN INDEX UNIVERSAL_SCHEMA.usji05 AS
    SELECT  L.LOCATION_ID                       AS JIXC1,
            I.ITEM_ID                           AS JIXC2,
            L.LOCATION_NAME                     AS JIXC3,
            I.ITEM_NAME                         AS JIXC4,
            RETURN_TRAN_LINE_START_DTTM         AS JIXC5,
            RTL.RETURN_ITEM_QTY                 AS JIXC6,
            RTL.UNIT_REFUND_AMT                 AS JIXC7
    FROM    UNIVERSAL_SCHEMA.RETURN_TRANSACTION_LINE   AS RTL,
            UNIVERSAL_SCHEMA.ITEM                      AS I,
            UNIVERSAL_SCHEMA.LOCATION                  AS L--@END
    WHERE RTL.RETURNED_ITEM_ID = I.ITEM_ID    AND
          RTL.LOCATION_ID = L.LOCATION_ID
--    ORDER BY JIXC5
PRIMARY INDEX(JIXC1, JIXC2);

CREATE JOIN INDEX UNIVERSAL_SCHEMA.usji06 AS
    SELECT  I.ITEM_ID                           AS JIXC1,
            I.ITEM_NAME                         AS JIXC2,
            RETURN_TRAN_LINE_START_DTTM         AS JIXC3,
            RTL.RETURN_ITEM_QTY                 AS JIXC4,
            RTL.UNIT_REFUND_AMT                 AS JIXC5
    FROM    UNIVERSAL_SCHEMA.RETURN_TRANSACTION_LINE   AS RTL,
            UNIVERSAL_SCHEMA.ITEM                      AS I--@END
    WHERE RTL.RETURNED_ITEM_ID = I.ITEM_ID
--    ORDER BY JIXC5
PRIMARY INDEX(JIXC1, JIXC2);

CREATE JOIN INDEX UNIVERSAL_SCHEMA.usji07 AS
    SELECT  L.LOCATION_ID                       AS JIXC1,
            L.LOCATION_NAME                     AS JIXC2,
            RETURN_TRAN_LINE_START_DTTM         AS JIXC3,
            RTL.RETURN_ITEM_QTY                 AS JIXC4,
            RTL.UNIT_REFUND_AMT                 AS JIXC5
    FROM    UNIVERSAL_SCHEMA.RETURN_TRANSACTION_LINE   AS RTL,
            UNIVERSAL_SCHEMA.LOCATION                  AS L
    WHERE   RTL.LOCATION_ID = L.LOCATION_ID--@END
--    ORDER BY JIXC5
PRIMARY INDEX(JIXC1, JIXC2);

CREATE JOIN INDEX UNIVERSAL_SCHEMA.usji08 AS
    SELECT  RTL.LOCATION_ID                       AS JIXC1,
            RTL.RETURNED_ITEM_ID                  AS JIXC2,
            RETURN_TRAN_LINE_START_DTTM           AS JIXC3,
            RTL.RETURN_ITEM_QTY                   AS JIXC4,
            RTL.UNIT_REFUND_AMT                   AS JIXC5
    FROM    UNIVERSAL_SCHEMA.RETURN_TRANSACTION_LINE   AS RTL--@END
--    ORDER BY JIXC5
PRIMARY INDEX(JIXC1, JIXC2);

CREATE JOIN INDEX UNIVERSAL_SCHEMA.usji09 AS
    SELECT  P.PARTY_ID                          AS JIXC1,
            STL.ITEM_ID                         AS JIXC2,
            ST.TRAN_DATE                        AS JIXC3,
            STL.ITEM_QTY                        AS JIXC4,
            STL.UNIT_SELLING_PRICE_AMT          AS JIXC5,
            STL.UNIT_COST_AMT                   AS JIXC6
    FROM    UNIVERSAL_SCHEMA.SALES_TRANSACTION_LINE   AS STL,
            UNIVERSAL_SCHEMA.SALES_TRANSACTION        AS ST,
            UNIVERSAL_SCHEMA.PARTY                    AS P--@END
    WHERE   ST.SALES_TRAN_ID = STL.SALES_TRAN_ID  AND
            ST.REWARD_CD = P.PARTY_ID
    ORDER BY JIXC3
PRIMARY INDEX(JIXC1);

CREATE JOIN INDEX UNIVERSAL_SCHEMA.usji10 AS
    SELECT  STL.ITEM_ID                         AS JIXC1,
            ST.REWARD_CD                        AS JIXC2,
            ST.TRAN_DATE                        AS JIXC3,
            STL.ITEM_QTY                        AS JIXC4,
            STL.UNIT_SELLING_PRICE_AMT          AS JIXC5,
            STL.UNIT_COST_AMT                   AS JIXC6
    FROM    UNIVERSAL_SCHEMA.SALES_TRANSACTION_LINE   AS STL,
            UNIVERSAL_SCHEMA.SALES_TRANSACTION        AS ST--@END
    WHERE   ST.SALES_TRAN_ID = STL.SALES_TRAN_ID
    ORDER BY JIXC3
PRIMARY INDEX(JIXC1, JIXC2);

CREATE JOIN INDEX UNIVERSAL_SCHEMA.usji11 AS
    SELECT  P.PARTY_ID                          AS JIXC1,
            RTL.RETURNED_ITEM_ID                AS JIXC2,
            ST.TRAN_DATE                        AS JIXC3,
            RTL.RETURN_ITEM_QTY                 AS JIXC4,
            RTL.UNIT_REFUND_AMT                 AS JIXC5
    FROM    UNIVERSAL_SCHEMA.RETURN_TRANSACTION_LINE   AS RTL,
            UNIVERSAL_SCHEMA.SALES_TRANSACTION         AS ST,
            UNIVERSAL_SCHEMA.PARTY                     AS P--@END
    WHERE   ST.SALES_TRAN_ID = RTL.ORIGINAL_SALES_TRAN_ID  AND
            ST.REWARD_CD = P.PARTY_ID
    ORDER BY JIXC3
PRIMARY INDEX(JIXC1,JIXC2);

CREATE JOIN INDEX UNIVERSAL_SCHEMA.usji12 AS
    SELECT  RTL.RETURNED_ITEM_ID                AS JIXC1,
            ST.REWARD_CD                        AS JIXC2,
            RTL.RETURN_TRAN_LINE_START_DTTM     AS JIXC3,
            RTL.RETURN_ITEM_QTY                 AS JIXC4,
            RTL.UNIT_REFUND_AMT                 AS JIXC5
    FROM    UNIVERSAL_SCHEMA.RETURN_TRANSACTION_LINE   AS RTL,
            UNIVERSAL_SCHEMA.SALES_TRANSACTION         AS ST--@END
    WHERE   ST.SALES_TRAN_ID = RTL.ORIGINAL_SALES_TRAN_ID
--    ORDER BY JIXC3
PRIMARY INDEX(JIXC1,JIXC2);

CREATE JOIN INDEX UNIVERSAL_SCHEMA.usji13 AS
    SELECT  ST.SALES_TRAN_ID                    AS JIXC1,
            P.PARTY_ID                          AS JIXC2,
            ST.TRAN_DATE                        AS JIXC3,
            ST.MKB_COST_AMT                     AS JIXC4,
            ST.MKB_ITEM_QTY                     AS JIXC5,
            ST.MKB_NUMBER_UNIQUE_ITEMS_QTY      AS JIXC6,
            ST.MKB_REV_AMT                      AS JIXC7
    FROM    UNIVERSAL_SCHEMA.SALES_TRANSACTION         AS ST,
            UNIVERSAL_SCHEMA.PARTY                     AS P--@END
    WHERE   ST.REWARD_CD = P.PARTY_ID
    ORDER BY JIXC3
PRIMARY INDEX(JIXC1,JIXC2);

CREATE JOIN INDEX UNIVERSAL_SCHEMA.usji14 AS
    SELECT  ST.REWARD_CD                        AS JIXC1,
            ST.ASSOCIATE_PARTY_ID               AS JIXC2,
            ST.TRAN_DATE                        AS JIXC3,
            SUM(ST.MKB_COST_AMT)                AS JIXC4,
            SUM(ST.MKB_ITEM_QTY)                AS JIXC5,
            SUM(ST.MKB_NUMBER_UNIQUE_ITEMS_QTY) AS JIXC6,
            SUM(ST.MKB_REV_AMT)                 AS JIXC7
    FROM   UNIVERSAL_SCHEMA.SALES_TRANSACTION         AS ST--@END
    GROUP BY JIXC1, JIXC2, JIXC3
    ORDER BY JIXC3
PRIMARY INDEX(JIXC1,JIXC2);

CREATE JOIN INDEX UNIVERSAL_SCHEMA.usji15 AS
    SELECT  L.LOCATION_ID                               AS JIXC1,
            L.LOCATION_NAME                             AS JIXC2,
            A.ASSOCIATE_PARTY_ID                        AS JIXC3,
            ST.TRAN_DATE                                AS JIXC4,
            ST.MKB_COST_AMT                             AS JIXC5,
            ST.MKB_ITEM_QTY                             AS JIXC6,
            ST.MKB_NUMBER_UNIQUE_ITEMS_QTY              AS JIXC7,
            ST.MKB_REV_AMT                              AS JIXC8
    FROM    UNIVERSAL_SCHEMA.SALES_TRANSACTION         AS ST,
            UNIVERSAL_SCHEMA.ASSOCIATE                 AS A,
            UNIVERSAL_SCHEMA.LOCATION                  AS L--@END
    WHERE   ST.ASSOCIATE_PARTY_ID = A.ASSOCIATE_PARTY_ID  AND
            A.LOCATION_ID = L.LOCATION_ID
    ORDER BY JIXC4
PRIMARY INDEX(JIXC1, JIXC3);

CREATE JOIN INDEX UNIVERSAL_SCHEMA.usji16 AS
    SELECT  P.PARTY_ZIP                     AS JIXC1,
            D.INCOMEPERHOUSEHOLD            AS JIXC2
    FROM    UNIVERSAL_SCHEMA.PARTY               AS P,
            UNIVERSAL_SCHEMA.DEMOGRAPHICS        AS D--@END    
    WHERE   P.PARTY_ZIP = D.ZIPCODE
PRIMARY INDEX(JIXC1);

CREATE JOIN INDEX UNIVERSAL_SCHEMA.usji17 AS
    SELECT  AD.ALL_DIVISIONS_NAME             AS JIXC1,
            D.DISTRICT_NAME                   AS JIXC2,
            R.REGION_NAME                     AS JIXC3,
            DIV.DIVISION_NAME                 AS JIXC4,
            L.LOCATION_NAME                   AS JIXC5
    FROM    UNIVERSAL_SCHEMA.LOCATION               AS L,
            UNIVERSAL_SCHEMA.DISTRICT               AS D,
            UNIVERSAL_SCHEMA.REGION                 AS R,
            UNIVERSAL_SCHEMA.DIVISION               AS DIV,
            UNIVERSAL_SCHEMA.ALL_DIVISIONS          AS AD--@END
    WHERE   L.DISTRICT_CD = D.DISTRICT_CD   AND
            R.REGION_CD = D.REGION_CD       AND
            R.DIVISION_CD = DIV.DIVISION_CD AND
            DIV.ALL_DIVISIONS_CD = AD.ALL_DIVISIONS_CD
PRIMARY INDEX(JIXC5);

CREATE JOIN INDEX UNIVERSAL_SCHEMA.usji18 AS
    SELECT  L.LOCATION_ID                         AS JIXC1,
            L.LOCATION_NAME                       AS JIXC2,
            I.ITEM_ID                             AS JIXC3,
            I.ITEM_NAME                           AS JIXC4,
            II.ITEM_INV_DT                        AS JIXC5,
            II.ON_HAND_UNIT_QTY                   AS JIXC6,
            II.ON_HAND_AT_RETAIL_AMT              AS JIXC7,
            II.ON_HAND_COST_AMT                   AS JIXC8,
            II.ON_ORDER_QTY                       AS JIXC9 
    FROM    UNIVERSAL_SCHEMA.ITEM_INVENTORY     AS II,
            UNIVERSAL_SCHEMA.ITEM               AS I,
            UNIVERSAL_SCHEMA.LOCATION           AS L--@END
    WHERE   II.ITEM_ID = I.ITEM_ID   AND
            II.LOCATION_ID = L.LOCATION_ID
    ORDER BY JIXC5
PRIMARY INDEX(JIXC1, JIXC3);

CREATE JOIN INDEX UNIVERSAL_SCHEMA.usji19 AS
    SELECT  IIP.LOCATION_ID                                   AS JIXC1,
            IIP.ITEM_ID                                       AS JIXC2,
            IIP.ITEM_INVENTORY_PLAN_DT                        AS JIXC3,
            SUM(IIP.PLAN_ON_HAND_QTY)                         AS JIXC4,
            SUM(IIP.PLAN_ON_HAND_RETAIL_AMT)                  AS JIXC5
    FROM    UNIVERSAL_SCHEMA.ITEM_INVENTORY_PLAN  AS IIP--@END
    WHERE   IIP.ITEM_INVENTORY_PLAN_DT > '2000-04-25'
    ORDER BY JIXC3
    GROUP BY 1,2,3
PRIMARY INDEX(JIXC1, JIXC2);

CREATE JOIN INDEX UNIVERSAL_SCHEMA.usji20 AS
    SELECT  IPH.LOCATION_ID                                  AS JIXC1,
            IPH.ITEM_ID                                      AS JIXC2,
            IPH.ITEM_PRICE_START_DT                          AS JIXC3,
            SUM(IPH.ITEM_PRICE_AMT)                          AS JIXC4
    FROM    UNIVERSAL_SCHEMA.ITEM_PRICE_HISTORY  AS IPH--@END
    ORDER BY JIXC3
    GROUP BY 1,2,3
PRIMARY INDEX(JIXC1, JIXC2);

CREATE JOIN INDEX UNIVERSAL_SCHEMA.usji21 AS
    SELECT  ABE.ASSOCIATE_PARTY_ID                     AS JIXC1,
            ABE.ASSOCIATE_EXPNS_TYPE_CD                AS JIXC2,
            ABE.PERIOD_END_DT                          AS JIXC3,
            SUM(ABE.BENEFIT_HOURS_QTY)                 AS JIXC4,
            SUM(ABE.BENEFIT_COST_AMT)                  AS JIXC5
    FROM    UNIVERSAL_SCHEMA.ASSOCIATE_BENEFIT_EXPENSE  AS ABE--@END
    ORDER BY JIXC3
    GROUP BY 1,2,3
PRIMARY INDEX(JIXC1, JIXC3);

CREATE JOIN INDEX UNIVERSAL_SCHEMA.usji22 AS
    SELECT  ALE.ASSOCIATE_PARTY_ID                     AS JIXC1,
            ALE.ASSOCIATE_EXPNS_TYPE_CD                AS JIXC2,
            ALE.PERIOD_END_DT                          AS JIXC3,
            SUM(ALE.LABOR_HOURS_QTY)                   AS JIXC4,
            SUM(ALE.LABOR_COST_AMT)                    AS JIXC5
    FROM    UNIVERSAL_SCHEMA.ASSOCIATE_LABOR_EXPENSE  AS ALE--@END
    ORDER BY JIXC3
    GROUP BY 1,2,3
PRIMARY INDEX(JIXC1, JIXC2);

/*HI*/
CREATE HASH INDEX UNIVERSAL_SCHEMA.dem_hi_1
(
    INCOMEPERHOUSEHOLD,
    ZIPCODE
)
ON  UNIVERSAL_SCHEMA.DEMOGRAPHICS
by (zipcode)
order by hash (zipcode); 

CREATE HASH INDEX UNIVERSAL_SCHEMA.par_hi_1
(
    PARTY_ZIP,
    PARTY_ID
)
ON  UNIVERSAL_SCHEMA.PARTY
by (PARTY_ID)
order by hash (PARTY_ID); 

CREATE HASH INDEX UNIVERSAL_SCHEMA.ite_hi_1
(
    ITEM_ID,
    ITEM_NAME
)
ON  UNIVERSAL_SCHEMA.ITEM
by (ITEM_ID)
order by hash (ITEM_ID); 

CREATE HASH INDEX UNIVERSAL_SCHEMA.iph_hi_1
(
    ITEM_ID,
    ITEM_PRICE_START_DT,
    ITEM_PRICE_AMT
)
ON  UNIVERSAL_SCHEMA.ITEM_PRICE_HISTORY
BY  (ITEM_ID)
ORDER BY VALUES (ITEM_PRICE_START_DT); 

CREATE HASH INDEX UNIVERSAL_SCHEMA.sat_hi_1
(
    ASSOCIATE_PARTY_ID,
    MKB_COST_AMT,
    MKB_ITEM_QTY,
    MKB_NUMBER_UNIQUE_ITEMS_QTY,
    MKB_REV_AMT,
    TRAN_DATE
)
ON  UNIVERSAL_SCHEMA.SALES_TRANSACTION
BY  (ASSOCIATE_PARTY_ID)
ORDER BY VALUES (TRAN_DATE); 

CREATE HASH INDEX UNIVERSAL_SCHEMA.rtl_hi_1
(
    RETURNED_ITEM_ID,
    LOCATION_ID,
    RETURN_TRAN_LINE_NUM,
    RETURN_ITEM_QTY,
    UNIT_REFUND_AMT,
    RETURN_TRAN_LINE_END_DTTM
)
ON  UNIVERSAL_SCHEMA.RETURN_TRANSACTION_LINE
BY  (LOCATION_ID, RETURNED_ITEM_ID)
ORDER BY VALUES (LOCATION_ID); 

CREATE HASH INDEX UNIVERSAL_SCHEMA.stl_hi_1
(
    ITEM_ID,
    LOCATION,
    SALES_TRAN_LINE_NUM,
    ITEM_QTY,
    UNIT_SELLING_PRICE_AMT,
    UNIT_COST_AMT,
    TRAN_LINE_DATE
)
ON  UNIVERSAL_SCHEMA.SALES_TRANSACTION_LINE
BY  (LOCATION, ITEM_ID)
ORDER BY VALUES (TRAN_LINE_DATE); 

CREATE HASH INDEX UNIVERSAL_SCHEMA.loc_hi_1
(
    LOCATION_ID,
    LOCATION_NAME        
)
ON  UNIVERSAL_SCHEMA.LOCATION
BY  (LOCATION_ID)
ORDER BY HASH (LOCATION_ID); 

CREATE HASH INDEX UNIVERSAL_SCHEMA.iip_hi_1
(
    LOCATION_ID,
    ITEM_ID,
    ITEM_INVENTORY_PLAN_DT,
    PLAN_ON_HAND_QTY,
    PLAN_ON_HAND_RETAIL_AMT
)
ON  UNIVERSAL_SCHEMA.ITEM_INVENTORY_PLAN
BY  (LOCATION_ID)
ORDER BY VALUES (ITEM_INVENTORY_PLAN_DT); 

CREATE HASH INDEX UNIVERSAL_SCHEMA.iti_hi_1
(
    LOCATION_ID,
    ITEM_ID,
    ITEM_INV_DT,
    ON_HAND_UNIT_QTY,
    ON_HAND_AT_RETAIL_AMT,
    ON_HAND_COST_AMT,
    ON_ORDER_QTY
)
ON  UNIVERSAL_SCHEMA.ITEM_INVENTORY
BY  (LOCATION_ID)
ORDER BY VALUES (ITEM_INV_DT); 

CREATE HASH INDEX UNIVERSAL_SCHEMA.ass_hi_1
(
    LOCATION_ID, 
    ASSOCIATE_PARTY_ID,
    ASSOC_HIRE_DT
)
ON  UNIVERSAL_SCHEMA.ASSOCIATE
BY  (LOCATION_ID, ASSOCIATE_PARTY_ID)
ORDER BY VALUES (ASSOC_HIRE_DT); 

CREATE HASH INDEX UNIVERSAL_SCHEMA.abe_hi_1
(
    ASSOCIATE_PARTY_ID,
    PERIOD_END_DT,
    BENEFIT_HOURS_QTY,
    BENEFIT_COST_AMT
)
ON  UNIVERSAL_SCHEMA.ASSOCIATE_BENEFIT_EXPENSE
BY  (ASSOCIATE_PARTY_ID)
ORDER BY VALUES (PERIOD_END_DT); 

CREATE HASH INDEX UNIVERSAL_SCHEMA.ale_hi_1
(
    ASSOCIATE_PARTY_ID,
    PERIOD_END_DT,
    LABOR_HOURS_QTY,
    LABOR_COST_AMT
)
ON  UNIVERSAL_SCHEMA.ASSOCIATE_LABOR_EXPENSE
BY  (ASSOCIATE_PARTY_ID)
ORDER BY VALUES (PERIOD_END_DT); 

/*SI*/
create index aem_vosi_1(ready_date) order by values (ready_date) on universal_schema.alert_emails;
create index aem_vosi_2(location_id) order by values (location_id) on universal_schema.alert_emails;
create index ass_vosi_1(assoc_hire_dt) order by values (assoc_hire_dt) on universal_schema.associate;
create index ass_vosi_2(assoc_termination_dt) order by values (assoc_termination_dt) on universal_schema.associate;
create index ass_vosi_3(location_id) order by values (location_id) on universal_schema.associate;
create index ass_vosi_4(position_id) order by values (position_id) on universal_schema.associate;
create index ass_vosi_5(manager_associate_id) order by values (manager_associate_id) on universal_schema.associate;
create index ass_hosi_1(location_id) order by hash (location_id) on universal_schema.associate;
create index ass_hosi_2(position_id) order by hash (position_id) on universal_schema.associate;
create index ass_hosi_3(manager_associate_id) order by hash (manager_associate_id) on universal_schema.associate;
create index abe_vosi_1(period_end_dt) order by values (period_end_dt) on universal_schema.associate_benefit_expense;
create index abe_vosi_2(associate_party_id) order by values (associate_party_id) on universal_schema.associate_benefit_expense;
create index abe_hosi_1(associate_expns_type_cd) order by hash (associate_expns_type_cd) on universal_schema.associate_benefit_expense;
create index abe_hosi_2(benefit_cost_amt) order by hash (benefit_cost_amt) on universal_schema.associate_benefit_expense;
create index ale_vosi_1(period_end_dt) order by values (period_end_dt) on universal_schema.associate_labor_expense;
create index ale_vosi_2(associate_party_id) order by values (associate_party_id) on universal_schema.associate_labor_expense;
create index ale_hosi_1(associate_expns_type_cd) order by hash (associate_expns_type_cd) on universal_schema.associate_labor_expense;
create index asp_vosi_1(position_id) order by values (position_id) on universal_schema.associate_position;
create index asp_hosi_2(position_type_cd) order by hash (position_type_cd) on universal_schema.associate_position;
create index asp_hosi_3(job_classification_cd) order by hash (job_classification_cd) on universal_schema.associate_position;
create index cos_hosi_2(cost_type_cd) order by hash (cost_type_cd) on universal_schema.cost;
create index cup_hosi_2(promo_type) order by hash (promo_type) on universal_schema.current_promo;
create index dem_hosi_2(citytype) order by hash (citytype) on universal_schema.demographics;
create index dem_hosi_3(state) order by hash (state) on universal_schema.demographics;
create index dem_hosi_4(timezone) order by hash (timezone) on universal_schema.demographics;
create index dis_hosi_1(region_cd) order by hash (region_cd) on universal_schema.district;
create index dis_vosi_1(district_mgr_associate_id) order by values (district_mgr_associate_id) on universal_schema.district;
create index div_vosi_1(division_mgr_associate_id) order by values (division_mgr_associate_id) on universal_schema.division;
create index ite_hosi_2(commodity_cd) order by hash (commodity_cd) on universal_schema.item;
create index ite_hosi_3(brand_cd) order by hash (brand_cd) on universal_schema.item;
create index ite_hosi_4(item_type_cd) order by hash (item_type_cd) on universal_schema.item;
create index ite_vosi_1(vendor_party_id) order by values (vendor_party_id) on universal_schema.item;
create index ite_vosi_2(vendor_party_id, inventory_ind) order by values (vendor_party_id) on universal_schema.item;
create index itd_hosi_1(all_item_divisions_cd) order by hash (all_item_divisions_cd) on universal_schema.item_division;
create index itd_vosi_1(item_division_mgr_associate_id) order by values (item_division_mgr_associate_id) on universal_schema.item_division;
create index iti_hosi_1(item_id) order by hash (item_id) on universal_schema.item_inventory;
create index iti_vosi_1(location_id, on_hand_unit_qty) order by values (location_id) on universal_schema.item_inventory;
create index iti_vosi_2(item_inv_dt, on_hand_unit_qty) order by values (item_inv_dt) on universal_schema.item_inventory;
create index iti_vosi_3(item_inv_dt, on_hand_at_retail_amt) order by values (item_inv_dt) on universal_schema.item_inventory;
create index iip_hosi_1(item_id) order by hash (item_id) on universal_schema.item_inventory_plan;
create index iip_vosi_1(location_id, plan_on_hand_qty) order by values (location_id) on universal_schema.item_inventory_plan;
create index iip_vosi_2(item_inventory_plan_dt, plan_on_hand_retail_amt) order by values (item_inventory_plan_dt) on universal_schema.item_inventory_plan;
create index iip_vosi_3(item_inventory_plan_dt, plan_on_hand_qty) order by values (item_inventory_plan_dt) on universal_schema.item_inventory_plan;
create index iph_hosi_1(item_id) order by hash (item_id) on universal_schema.item_price_history;
create index iph_hosi_2(price_change_reason_cd) order by hash (price_change_reason_cd) on universal_schema.item_price_history;
create index iph_vosi_1(item_price_start_dt, item_price_amt) order by values (item_price_start_dt) on universal_schema.item_price_history;
create index iph_vosi_2(location_id) order by values (location_id) on universal_schema.item_price_history;
create index iss_hosi_1(product_id) order by hash (product_id) on universal_schema.item_store_sold;
create index iss_vosi_1(week_of_year) order by values (week_of_year) on universal_schema.item_store_sold;
create index iss_vosi_2(plan_qty, plan_retail_amt) order by values (plan_qty) on universal_schema.item_store_sold;
create index iss_vosi_3(location_id, plan_retail_amt) order by values (location_id) on universal_schema.item_store_sold;
create index itt_hosi_2(trait_cd) order by hash (trait_cd) on universal_schema.item_trait;
create index itt_hosi_3(trait_value_cd) order by hash (trait_value_cd) on universal_schema.item_trait;
create index lap_hosi_1(job_classification_cd) order by hash (job_classification_cd) on universal_schema.labor_plan;
create index lap_hosi_2(work_shift_cd) order by hash (work_shift_cd) on universal_schema.labor_plan;
create index lap_vosi_1(location_id, plan_cost_amt) order by values (location_id) on universal_schema.labor_plan;
create index lap_vosi_2(plan_period_end_dt, plan_cost_amt) order by values (plan_period_end_dt) on universal_schema.labor_plan;
create index lap_vosi_3(plan_period_start_dt, plan_overtime_hours_qty) order by values (plan_period_start_dt) on universal_schema.labor_plan;
create index loc_hosi_1(location_id, location_name) order by hash (location_id) on universal_schema.location;
create index loc_hosi_2(chain_cd, location_name) order by hash (chain_cd) on universal_schema.location;
create index loc_hosi_3(channel_cd, location_total_area_meas) order by hash (channel_cd) on universal_schema.location;
create index loc_hosi_4(district_cd, location_name) order by hash (district_cd) on universal_schema.location;
create index loc_hosi_5(location_type_cd, location_total_area_meas) order by hash (location_type_cd) on universal_schema.location;
create index loc_vosi_1(location_id, location_name) order by values (location_id) on universal_schema.location;
create index loc_vosi_2(location_open_dt, location_total_area_meas) order by values (location_open_dt) on universal_schema.location;
create index loc_vosi_3(location_close_dt, location_name) order by values (location_close_dt) on universal_schema.location;
create index loc_vosi_4(parent_location_id, location_total_area_meas) order by values (parent_location_id) on universal_schema.location;
create index loc_vosi_5(location_mgr_associate_id, location_total_area_meas) order by values (location_mgr_associate_id) on universal_schema.location;
create index lop_hosi_1(location_id, actual_cost_amt) order by hash (location_id) on universal_schema.location_plan;
create index lop_hosi_2(cost_cd, actual_cost_amt) order by hash (cost_cd) on universal_schema.location_plan;
create index lop_vosi_1(period_end_dt, actual_cost_amt) order by values (period_end_dt) on universal_schema.location_plan;
create index lop_vosi_2(period_start_dt, actual_cost_amt) order by values (period_start_dt) on universal_schema.location_plan;
create index lop_vosi_3(location_id, actual_cost_amt) order by values (location_id) on universal_schema.location_plan;
create index lot_hosi_1(location_type_cd, location_type_desc) order by hash (location_type_cd) on universal_schema.location_type;
create index off_hosi_1(promo_id, party_firstname, party_lastname) order by hash (promo_id) on universal_schema.offers_20050701;
create index off_vosi_1(visits, party_firstname, party_lastname) order by values (visits) on universal_schema.offers_20050701;
create index off_vosi_2(location_id, party_firstname, party_lastname) order by values (location_id) on universal_schema.offers_20050701;
create index par_hosi_2(party_type_cd, party_firstname) order by hash (party_type_cd) on universal_schema.party;
create index par_vosi_1(party_start_dt, party_firstname) order by values (party_start_dt) on universal_schema.party;
create index par_vosi_2(party_first_purchase_dt, party_firstname) order by values (party_first_purchase_dt) on universal_schema.party;
create index pog_hosi_1(position_grade_cd, position_grade_desc) order by hash (position_grade_cd) on universal_schema.position_grade;
create index pot_hosi_1(position_type_cd, position_type_desc) order by hash (position_type_cd) on universal_schema.position_type;
create index pcr_hosi_1(price_change_reason_cd, price_change_reason_desc) order by hash (price_change_reason_cd) on universal_schema.price_change_reason;
create index prt_hosi_1(promo_type_id, promo_type_name) order by hash (promo_type_id) on universal_schema.promo_type;
create index prt_hosi_1(region_cd, region_name) order by hash (region_cd) on universal_schema.region;
create index prt_hosi_2(division_cd, region_name) order by hash (division_cd) on universal_schema.region;
create index prt_vosi_1(region_mgr_associate_id, region_name) order by values (region_mgr_associate_id) on universal_schema.region;
create index rer_hosi_1(return_reason_cd, return_reason_desc) order by hash (return_reason_cd) on universal_schema.return_reason;
create index rtl_hosi_1(sales_tran_id, return_item_qty) order by hash (sales_tran_id) on universal_schema.return_transaction_line;
create index rtl_hosi_2(return_reason_cd, return_item_qty) order by hash (return_reason_cd) on universal_schema.return_transaction_line;
create index rtl_hosi_3(original_sales_tran_id, return_item_qty) order by hash (original_sales_tran_id) on universal_schema.return_transaction_line;
create index rtl_vosi_1(original_sales_tran_id, unit_refund_amt) order by values (original_sales_tran_id) on universal_schema.return_transaction_line;
create index rtl_vosi_2(location_id, return_item_qty) order by values (location_id) on universal_schema.return_transaction_line;
create index sat_hosi_1(tran_type_cd, MKB_ITEM_QTY) order by hash (tran_type_cd) on universal_schema.sales_transaction;
create index sat_hosi_2(tran_status_cd, mkb_number_unique_items_qty) order by hash (tran_status_cd) on universal_schema.sales_transaction;
create index sat_hosi_3(reward_cd, mkb_number_unique_items_qty) order by hash (reward_cd) on universal_schema.sales_transaction;
create index sat_vosi_1(visit_id, mkb_rev_amt) order by values (visit_id) on universal_schema.sales_transaction;
create index sat_vosi_2(associate_party_id, mkb_number_unique_items_qty) order by values (associate_party_id) on universal_schema.sales_transaction;
create index sat_vosi_3(tran_date, mkb_number_unique_items_qty) order by values (tran_date) on universal_schema.sales_transaction;
create index sat_vosi_4(tran_end_hour, mkb_number_unique_items_qty) order by values (tran_end_hour) on universal_schema.sales_transaction;
create index sat_vosi_5(tran_end_minute, mkb_number_unique_items_qty) order by values (tran_end_minute) on universal_schema.sales_transaction;
create index stl_hosi_1(sales_tran_id) order by values (sales_tran_id) on universal_schema.sales_transaction_line;
create index stl_hosi_3(location) order by hash on universal_schema.sales_transaction_line;
create index stl_hosi_4(item_id) on universal_schema.sales_transaction_line;
create index stl_vosi_1(tx_time, unit_cost_amt, item_qty, tran_line_status_cd, tran_line_sales_type_cd) order by values(tx_time) on universal_schema.sales_transaction_line;
create index stl_vosi_2(tran_line_date, unit_cost_amt, item_qty, tran_line_status_cd, tran_line_sales_type_cd) order by values(tran_line_date) on universal_schema.sales_transaction_line;
create index stl_vosi_3(sales_tran_id, item_qty, tran_line_status_cd) order by values (sales_tran_id) on universal_schema.sales_transaction_line;
create index stl_vosi_4(sales_tran_id, sales_tran_line_num, item_qty, tran_line_status_cd) order by values (sales_tran_id) on universal_schema.sales_transaction_line;
create index stl_vosi_5(location, unit_cost_amt, item_qty) order by values (location) on universal_schema.sales_transaction_line;
create index tra_hosi_1(trait_cd, trait_desc) order by hash (trait_cd) on universal_schema.trait;
create index tra_hosi_2(trait_group_cd, trait_desc) order by hash (trait_group_cd) on universal_schema.trait;
create index trg_hosi_1(trait_group_cd, trait_group_desc) order by hash (trait_group_cd) on universal_schema.trait_group;
create index trv_hosi_1(trait_value_cd, trait_val) order by hash (trait_value_cd) on universal_schema.trait_value;
create index trv_hosi_2(trait_cd, trait_val) order by hash (trait_cd) on universal_schema.trait_value;
create index wos_hosi_1(work_shift_cd, work_shift_desc) order by hash (work_shift_cd) on universal_schema.work_shift;
