/*
 ZONENAME     : UNIVERSAL_SCHEMA.OTHERS
 GENERATED BY : Quantum China Beijing R&D
 DATE         : Mon Mar  8 18:26:04 2010
 COPYRIGHT (C) 2010 BY TERADATA CORP.
*/
/*Base Statistics*/
COLLECT STATISTICS ON PROMO_TYPE COLUMN(PROMO_TYPE_ID);

COLLECT STATISTICS ON CURRENT_PROMO COLUMN(PROMO_ID);

COLLECT STATISTICS ON CURRENT_PROMO COLUMN(PROMO_TYPE);

COLLECT STATISTICS ON ALL_DIVISIONS COLUMN(ALL_DIVISIONS_CD);

COLLECT STATISTICS ON DIVISION COLUMN(DIVISION_CD);

COLLECT STATISTICS ON DIVISION COLUMN(ALL_DIVISIONS_CD);

COLLECT STATISTICS ON REGION COLUMN(REGION_CD);

COLLECT STATISTICS ON REGION COLUMN(DIVISION_CD);

COLLECT STATISTICS ON DISTRICT COLUMN(DISTRICT_CD);

COLLECT STATISTICS ON DISTRICT COLUMN(REGION_CD);

COLLECT STATISTICS ON COST_TYPE COLUMN(COST_TYPE_CD);

COLLECT STATISTICS ON COST COLUMN(COST_CD);

COLLECT STATISTICS ON COST COLUMN(COST_TYPE_CD);

COLLECT STATISTICS ON OFFERS_20050701 COLUMN(PROMO_ID);

COLLECT STATISTICS ON LOCATION_TYPE COLUMN(LOCATION_TYPE_CD);

COLLECT STATISTICS ON CHANNEL COLUMN(CHANNEL_CD);

COLLECT STATISTICS ON LOCATION COLUMN(LOCATION_ID);

COLLECT STATISTICS ON LOCATION COLUMN(CHANNEL_CD);

COLLECT STATISTICS ON LOCATION COLUMN(DISTRICT_CD);

COLLECT STATISTICS ON LOCATION COLUMN(LOCATION_TYPE_CD);

COLLECT STATISTICS ON WORK_SHIFT COLUMN(WORK_SHIFT_CD);

COLLECT STATISTICS ON LOCATION_PLAN COLUMN(LOCATION_ID, COST_CD, PERIOD_START_DT);

COLLECT STATISTICS ON LOCATION_PLAN COLUMN(PERIOD_START_DT);

COLLECT STATISTICS ON LOCATION_PLAN COLUMN(COST_CD);

COLLECT STATISTICS ON ALERT_EMAILS COLUMN(ITEM_ID);

COLLECT STATISTICS ON ALERT_EMAILS COLUMN(LOCATION_ID);

COLLECT STATISTICS ON JOB_CLASSIFICATION COLUMN(JOB_CLASSIFICATION_CD);

COLLECT STATISTICS ON LABOR_PLAN COLUMN(LOCATION_ID, JOB_CLASSIFICATION_CD, WORK_SHIFT_CD, PLAN_PERIOD_START_DT);

COLLECT STATISTICS ON LABOR_PLAN COLUMN(PLAN_PERIOD_START_DT);

COLLECT STATISTICS ON ITEM_STORE_SOLD COLUMN(PRODUCT_ID, WEEK_OF_YEAR, LOCATION_ID);

COLLECT STATISTICS ON ITEM_INVENTORY_PLAN COLUMN(ITEM_INVENTORY_PLAN_DT, LOCATION_ID, ITEM_ID);

COLLECT STATISTICS ON ITEM_INVENTORY_PLAN COLUMN(ITEM_INVENTORY_PLAN_DT);

COLLECT STATISTICS ON ITEM_INVENTORY COLUMN(LOCATION_ID, ITEM_INV_DT, ITEM_ID);

COLLECT STATISTICS ON ITEM_INVENTORY COLUMN(ITEM_INV_DT);

COLLECT STATISTICS ON ALL_ITEM_DIVISIONS COLUMN(ALL_ITEM_DIVISIONS_CD);

COLLECT STATISTICS ON ITEM_DIVISION COLUMN(ITEM_DIVISION_CD);

COLLECT STATISTICS ON POSITION_GRADE COLUMN(POSITION_GRADE_CD);

COLLECT STATISTICS ON POSITION_TYPE COLUMN(POSITION_TYPE_CD);

COLLECT STATISTICS ON ASSOCIATE_POSITION COLUMN(POSITION_ID);

COLLECT STATISTICS ON ASSOCIATE_POSITION COLUMN(JOB_CLASSIFICATION_CD);

COLLECT STATISTICS ON ASSOCIATE_POSITION COLUMN(POSITION_TYPE_CD);

COLLECT STATISTICS ON ASSOCIATE_POSITION COLUMN(POSITION_GRADE_CD);

COLLECT STATISTICS ON ASSOCIATE COLUMN(ASSOCIATE_PARTY_ID);

COLLECT STATISTICS ON ASSOCIATE COLUMN(LOCATION_ID);

COLLECT STATISTICS ON ASSOCIATE COLUMN(POSITION_ID);

COLLECT STATISTICS ON ASSOCIATE_EXPENSE_TYPE COLUMN(ASSOCIATE_EXPNS_TYPE_CD);

COLLECT STATISTICS ON ASSOCIATE_BENEFIT_EXPENSE COLUMN(PERIOD_END_DT, ASSOCIATE_EXPNS_TYPE_CD, ASSOCIATE_PARTY_ID);

COLLECT STATISTICS ON ASSOCIATE_BENEFIT_EXPENSE COLUMN(PERIOD_END_DT);

COLLECT STATISTICS ON ASSOCIATE_LABOR_EXPENSE COLUMN(PERIOD_END_DT, ASSOCIATE_EXPNS_TYPE_CD, ASSOCIATE_PARTY_ID);

COLLECT STATISTICS ON ASSOCIATE_LABOR_EXPENSE COLUMN(PERIOD_END_DT);



/*Specific Statistics*/COLLECT STATISTICS ON A_HIX INDEX(LOCATION_ID, ASSOCIATE_PARTY_ID);

COLLECT STATISTICS ON ASSOCIATE COLUMN(ASSOC_HIRE_DT);

COLLECT STATISTICS ON ALE_HIX INDEX(ASSOCIATE_PARTY_ID);

COLLECT STATISTICS ON ASSOCIATE_LABOR_EXPENSE COLUMN(PERIOD_END_DT);

COLLECT STATISTICS ON ABE_HIX INDEX(ASSOCIATE_PARTY_ID);

COLLECT STATISTICS ON ASSOCIATE_BENEFIT_EXPENSE COLUMN(PERIOD_END_DT);

COLLECT STATISTICS ON II_HIX INDEX(LOCATION_ID);

COLLECT STATISTICS ON ITEM_INVENTORY COLUMN(ITEM_INV_DT);

COLLECT STATISTICS ON IIP_HIX INDEX(LOCATION_ID);

COLLECT STATISTICS ON IIP_HIX COLUMN(ITEM_INVENTORY_PLAN_DT);

COLLECT STATISTICS ON L_HIX INDEX(LOCATION_ID);


