/*
 ZONENAME     : UNIVERSAL_SCHEMA.OTHERS
 GENERATED BY : Quantum China Beijing R&D
 DATE         : Mon Mar  8 18:26:04 2010
 COPYRIGHT (C) 2010 BY TERADATA CORP.
*/
ALTER TABLE UNIVERSAL_SCHEMA.LOCATION_PLAN
    MODIFY PRIMARY INDEX
    PARTITION BY(
        /* PATITION EXPRESSIONS <TEMPLETED>*/
        RANGE_N(PERIOD_START_DT BETWEEN '2005-01-01' AND '2010-01-01' EACH INTERVAL '1' MONTH),
        CASE_N(
            0   <= LOCATION_ID AND LOCATION_ID < 50,
            50  <= LOCATION_ID AND LOCATION_ID < 100,
            100 <= LOCATION_ID AND LOCATION_ID < 150,
            150 <= LOCATION_ID AND LOCATION_ID < 200,
            NO CASE OR UNKNOWN
        )    
);

ALTER TABLE UNIVERSAL_SCHEMA.LABOR_PLAN
    MODIFY PRIMARY INDEX
    PARTITION BY(
        /* PATITION EXPRESSIONS <TEMPLETED>*/
        RANGE_N(PLAN_PERIOD_START_DT BETWEEN '2005-01-01' AND '2010-01-01' EACH INTERVAL '1' MONTH),
        CASE_N(
            0   <= LOCATION_ID AND LOCATION_ID < 50,
            50  <= LOCATION_ID AND LOCATION_ID < 100,
            100 <= LOCATION_ID AND LOCATION_ID < 150,
            150 <= LOCATION_ID AND LOCATION_ID < 200,
            NO CASE OR UNKNOWN
        )    
);

ALTER TABLE UNIVERSAL_SCHEMA.ITEM_INVENTORY_PLAN 
    MODIFY PRIMARY INDEX
    PARTITION BY(
        /* PATITION EXPRESSIONS <TEMPLETED>*/
        CASE_N(
            0   <= LOCATION_ID AND LOCATION_ID < 50,
            50  <= LOCATION_ID AND LOCATION_ID < 100,
            100 <= LOCATION_ID AND LOCATION_ID < 150,
            150 <= LOCATION_ID AND LOCATION_ID < 200,
            NO CASE, UNKNOWN
        ),
        RANGE_N(ITEM_INVENTORY_PLAN_DT BETWEEN '2005-01-01' AND '2010-01-01' EACH INTERVAL '1' MONTH)
);

ALTER TABLE UNIVERSAL_SCHEMA.ITEM_INVENTORY 
    MODIFY PRIMARY INDEX
    PARTITION BY(
        /* PATITION EXPRESSIONS <TEMPLETED>*/
        RANGE_N(
            LOCATION_ID BETWEEN 0 AND 210 EACH 5,
            NO RANGE, UNKNOWN
        ),
        RANGE_N(ITEM_INV_DT BETWEEN '2005-01-01' AND '2010-01-01' EACH INTERVAL '1' MONTH)
);

ALTER TABLE UNIVERSAL_SCHEMA.ASSOCIATE_BENEFIT_EXPENSE 
    MODIFY PRIMARY INDEX
    PARTITION BY(
        /* PATITION EXPRESSIONS <TEMPLETED>*/
        CASE_N(
            CAST(ASSOCIATE_EXPNS_TYPE_CD AS INTEGER) = 1,
            CAST(ASSOCIATE_EXPNS_TYPE_CD AS INTEGER) = 2,
            CAST(ASSOCIATE_EXPNS_TYPE_CD AS INTEGER) = 3,
            CAST(ASSOCIATE_EXPNS_TYPE_CD AS INTEGER) = 4,
            CAST(ASSOCIATE_EXPNS_TYPE_CD AS INTEGER) = 5,
            CAST(ASSOCIATE_EXPNS_TYPE_CD AS INTEGER) = 6,
            CAST(ASSOCIATE_EXPNS_TYPE_CD AS INTEGER) = 7,
            CAST(ASSOCIATE_EXPNS_TYPE_CD AS INTEGER) = 8,
            CAST(ASSOCIATE_EXPNS_TYPE_CD AS INTEGER) = 9,
            CAST(ASSOCIATE_EXPNS_TYPE_CD AS INTEGER) = 10,
            NO CASE, UNKNOWN
        ),
        RANGE_N(PERIOD_END_DT BETWEEN '2005-01-01' AND '2010-01-01' EACH INTERVAL '1' MONTH)  --MONTH        
);

ALTER TABLE UNIVERSAL_SCHEMA.ASSOCIATE_LABOR_EXPENSE 
    MODIFY PRIMARY INDEX
    PARTITION BY(
        /* PATITION EXPRESSIONS <TEMPLETED>*/
        CASE_N(
            CAST(ASSOCIATE_EXPNS_TYPE_CD AS INTEGER) = 1,
            CAST(ASSOCIATE_EXPNS_TYPE_CD AS INTEGER) = 2,
            CAST(ASSOCIATE_EXPNS_TYPE_CD AS INTEGER) = 3,
            CAST(ASSOCIATE_EXPNS_TYPE_CD AS INTEGER) = 4,
            CAST(ASSOCIATE_EXPNS_TYPE_CD AS INTEGER) = 5,
            CAST(ASSOCIATE_EXPNS_TYPE_CD AS INTEGER) = 6,
            CAST(ASSOCIATE_EXPNS_TYPE_CD AS INTEGER) = 7,
            CAST(ASSOCIATE_EXPNS_TYPE_CD AS INTEGER) = 8,
            CAST(ASSOCIATE_EXPNS_TYPE_CD AS INTEGER) = 9,
            CAST(ASSOCIATE_EXPNS_TYPE_CD AS INTEGER) = 10,
            NO CASE, UNKNOWN
        ),
        RANGE_N(PERIOD_END_DT BETWEEN '2005-01-01' AND '2010-01-01' EACH INTERVAL '1' MONTH)  --MONTH        
);


