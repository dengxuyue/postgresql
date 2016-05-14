/*
 ZONENAME     : UNIVERSAL_SCHEMA.ADW44
 GENERATED BY : Quantum China Beijing R&D
 DATE         : Mon Mar  8 18:26:04 2010
 COPYRIGHT (C) 2010 BY TERADATA CORP.
*/
/*Base Statistics*/
COLLECT STATISTICS ON DEMOGRAPHICS COLUMN(ZIPCODE);

COLLECT STATISTICS ON PARTY COLUMN(PARTY_ID);

COLLECT STATISTICS ON PARTY COLUMN(PARTY_ZIP);

COLLECT STATISTICS ON BRAND_OWNER_ORG COLUMN(BRAND_PARTY_ID);

COLLECT STATISTICS ON BRAND COLUMN(BRAND_CD);

COLLECT STATISTICS ON BRAND COLUMN(BRAND_PARTY_ID);

COLLECT STATISTICS ON ITEM COLUMN(ITEM_ID);

COLLECT STATISTICS ON ITEM COLUMN(BRAND_CD);

COLLECT STATISTICS ON ITEM_PRICE_HISTORY COLUMN(ITEM_ID);

COLLECT STATISTICS ON ITEM_PRICE_HISTORY COLUMN(ITEM_PRICE_START_DT);

COLLECT STATISTICS ON PRICE_CHANGE_REASON COLUMN(PRICE_CHANGE_REASON_CD);

COLLECT STATISTICS ON ITEM_TRAIT COLUMN(ITEM_ID);

COLLECT STATISTICS ON TRAIT COLUMN(TRAIT_CD);

COLLECT STATISTICS ON TRAIT COLUMN(TRAIT_GROUP_CD);

COLLECT STATISTICS ON TRAIT_GROUP COLUMN(TRAIT_GROUP_CD);

COLLECT STATISTICS ON TRAIT_VALUE COLUMN(TRAIT_VALUE_CD);

COLLECT STATISTICS ON TRAIT_VALUE COLUMN(TRAIT_CD);

COLLECT STATISTICS ON RETURN_REASON COLUMN(RETURN_REASON_CD);

COLLECT STATISTICS ON SALES_TRANSACTION COLUMN(SALES_TRAN_ID);

COLLECT STATISTICS ON SALES_TRANSACTION COLUMN(TRAN_DATE);

COLLECT STATISTICS ON SALES_TRANSACTION COLUMN(REPORTED_AS_DTTM);

COLLECT STATISTICS ON SALES_TRANSACTION COLUMN(TRAN_START_DTTM_DD);

COLLECT STATISTICS ON SALES_TRANSACTION COLUMN(TRAN_END_DTTM_DD);

COLLECT STATISTICS ON RETURN_TRANSACTION_LINE COLUMN(SALES_TRAN_ID);

COLLECT STATISTICS ON RETURN_TRANSACTION_LINE COLUMN(LOCATION_ID);

COLLECT STATISTICS ON RETURN_TRANSACTION_LINE COLUMN(RETURNED_ITEM_ID);

COLLECT STATISTICS ON RETURN_TRANSACTION_LINE COLUMN(RETURN_TRAN_LINE_START_DTTM);

COLLECT STATISTICS ON RETURN_TRANSACTION_LINE COLUMN(RETURN_TRAN_LINE_END_DTTM);

COLLECT STATISTICS ON SALES_TRANSACTION_LINE COLUMN(SALES_TRAN_ID);

COLLECT STATISTICS ON SALES_TRANSACTION_LINE COLUMN(TRAN_LINE_DATE);

COLLECT STATISTICS ON SALES_TRANSACTION_LINE COLUMN(SALES_TRAN_LINE_START_DTTM);

COLLECT STATISTICS ON SALES_TRANSACTION_LINE COLUMN(SALES_TRAN_LINE_END_DTTM);

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



/*Spacific*/COLLECT STATISTICS ON DEMOGRAPHICS COLUMN(PARTITION);

COLLECT STATISTICS ON DEMOGRAPHICS COLUMN(ZIPCODE);

COLLECT STATISTICS ON DEMOGRAPHICS COLUMN(PARTITION);

COLLECT STATISTICS ON DEMOGRAPHICS COLUMN(ZIPCODE);

COLLECT STATISTICS ON PARTY COLUMN(PARTITION);

COLLECT STATISTICS ON PARTY COLUMN(PARTY_ID);

COLLECT STATISTICS ON BRAND_OWNER_ORG COLUMN(PARTITION);

COLLECT STATISTICS ON BRAND_OWNER_ORG COLUMN(BRAND_PARTY_ID);

COLLECT STATISTICS ON BRAND COLUMN(PARTITION);

COLLECT STATISTICS ON BRAND COLUMN(BRAND_CD);

COLLECT STATISTICS ON ITEM COLUMN(PARTITION);

COLLECT STATISTICS ON ITEM COLUMN(ITEM_ID);

COLLECT STATISTICS ON ITEM_PRICE_HISTORY COLUMN(PARTITION);

COLLECT STATISTICS ON ITEM_PRICE_HISTORY COLUMN(ITEM_PRICE_START_DT);

COLLECT STATISTICS ON PRICE_CHANGE_REASON COLUMN(PARTITION);

COLLECT STATISTICS ON PRICE_CHANGE_REASON COLUMN(PRICE_CHANGE_REASON_CD);

COLLECT STATISTICS ON ITEM_TRAIT COLUMN(PARTITION);

COLLECT STATISTICS ON ITEM_TRAIT COLUMN(ITEM_ID);

COLLECT STATISTICS ON TRAIT COLUMN(PARTITION);

COLLECT STATISTICS ON TRAIT COLUMN(TRAIT_CD);

COLLECT STATISTICS ON TRAIT_GROUP COLUMN(PARTITION);

COLLECT STATISTICS ON TRAIT_GROUP COLUMN(TRAIT_GROUP_CD);

COLLECT STATISTICS ON TRAIT_VALUE COLUMN(PARTITION);

COLLECT STATISTICS ON TRAIT_VALUE COLUMN(TRAIT_VALUE_CD);

COLLECT STATISTICS ON RETURN_REASON COLUMN(PARTITION);

COLLECT STATISTICS ON RETURN_REASON COLUMN(RETURN_REASON_CD);

COLLECT STATISTICS ON SALES_TRANSACTION COLUMN(PARTITION);

COLLECT STATISTICS ON SALES_TRANSACTION COLUMN(TRAN_DATE);

COLLECT STATISTICS ON RETURN_TRANSACTION_LINE COLUMN(PARTITION);

COLLECT STATISTICS ON RETURN_TRANSACTION_LINE COLUMN(RETURN_TRAN_LINE_START_DTTM);

COLLECT STATISTICS ON SALES_TRANSACTION_LINE COLUMN(PARTITION);

COLLECT STATISTICS ON SALES_TRANSACTION_LINE COLUMN(TRAN_LINE_DATE);

COLLECT STATISTICS ON PROMO_TYPE COLUMN(PARTITION);

COLLECT STATISTICS ON PROMO_TYPE COLUMN(PROMO_TYPE_ID);

COLLECT STATISTICS ON CURRENT_PROMO COLUMN(PARTITION);

COLLECT STATISTICS ON CURRENT_PROMO COLUMN(PROMO_ID);

COLLECT STATISTICS ON ALL_DIVISIONS COLUMN(PARTITION);

COLLECT STATISTICS ON ALL_DIVISIONS COLUMN(ALL_DIVISIONS_CD);

COLLECT STATISTICS ON DIVISION COLUMN(PARTITION);

COLLECT STATISTICS ON DIVISION COLUMN(DIVISION_CD);

COLLECT STATISTICS ON REGION COLUMN(PARTITION);

COLLECT STATISTICS ON REGION COLUMN(REGION_CD);

COLLECT STATISTICS ON DISTRICT COLUMN(PARTITION);

COLLECT STATISTICS ON DISTRICT COLUMN(DISTRICT_CD);

COLLECT STATISTICS ON COST_TYPE COLUMN(PARTITION);

COLLECT STATISTICS ON COST_TYPE COLUMN(COST_TYPE_CD);

COLLECT STATISTICS ON COST COLUMN(PARTITION);

COLLECT STATISTICS ON COST COLUMN(COST_CD);

COLLECT STATISTICS ON OFFERS_20050701 COLUMN(PARTITION);

COLLECT STATISTICS ON OFFERS_20050701 COLUMN(PROMO_ID);

COLLECT STATISTICS ON LOCATION_TYPE COLUMN(PARTITION);

COLLECT STATISTICS ON LOCATION_TYPE COLUMN(LOCATION_TYPE_CD);

COLLECT STATISTICS ON CHANNEL COLUMN(PARTITION);

COLLECT STATISTICS ON CHANNEL COLUMN(CHANNEL_CD);

COLLECT STATISTICS ON LOCATION COLUMN(PARTITION);

COLLECT STATISTICS ON LOCATION COLUMN(LOCATION_ID);

COLLECT STATISTICS ON WORK_SHIFT COLUMN(PARTITION);

COLLECT STATISTICS ON WORK_SHIFT COLUMN(WORK_SHIFT_CD);

COLLECT STATISTICS ON LOCATION_PLAN COLUMN(PARTITION);

COLLECT STATISTICS ON LOCATION_PLAN COLUMN(LOCATION_ID);

COLLECT STATISTICS ON ALERT_EMAILS COLUMN(PARTITION);

COLLECT STATISTICS ON ALERT_EMAILS COLUMN(ITEM_ID);

COLLECT STATISTICS ON JOB_CLASSIFICATION COLUMN(PARTITION);

COLLECT STATISTICS ON JOB_CLASSIFICATION COLUMN(JOB_CLASSIFICATION_CD);

COLLECT STATISTICS ON LABOR_PLAN COLUMN(PARTITION);

COLLECT STATISTICS ON LABOR_PLAN COLUMN(LOCATION_ID);

COLLECT STATISTICS ON ITEM_STORE_SOLD COLUMN(PARTITION);

COLLECT STATISTICS ON ITEM_STORE_SOLD COLUMN(PRODUCT_ID, WEEK_OF_YEAR, LOCATION_ID);

COLLECT STATISTICS ON ITEM_INVENTORY_PLAN COLUMN(PARTITION);

COLLECT STATISTICS ON ITEM_INVENTORY_PLAN COLUMN(ITEM_INVENTORY_PLAN_DT);

COLLECT STATISTICS ON ITEM_INVENTORY COLUMN(PARTITION);

COLLECT STATISTICS ON ITEM_INVENTORY COLUMN(ITEM_INV_DT);

COLLECT STATISTICS ON ALL_ITEM_DIVISIONS COLUMN(PARTITION);

COLLECT STATISTICS ON ALL_ITEM_DIVISIONS COLUMN(ALL_ITEM_DIVISIONS_CD);

COLLECT STATISTICS ON ITEM_DIVISION COLUMN(PARTITION);

COLLECT STATISTICS ON ITEM_DIVISION COLUMN(ITEM_DIVISION_CD);

COLLECT STATISTICS ON POSITION_GRADE COLUMN(PARTITION);

COLLECT STATISTICS ON POSITION_GRADE COLUMN(POSITION_GRADE_CD);

COLLECT STATISTICS ON POSITION_TYPE COLUMN(PARTITION);

COLLECT STATISTICS ON POSITION_TYPE COLUMN(POSITION_TYPE_CD);

COLLECT STATISTICS ON ASSOCIATE_POSITION COLUMN(PARTITION);

COLLECT STATISTICS ON ASSOCIATE_POSITION COLUMN(POSITION_ID);

COLLECT STATISTICS ON ASSOCIATE COLUMN(PARTITION);

COLLECT STATISTICS ON ASSOCIATE COLUMN(ASSOCIATE_PARTY_ID);

COLLECT STATISTICS ON ASSOCIATE_EXPENSE_TYPE COLUMN(PARTITION);

COLLECT STATISTICS ON ASSOCIATE_EXPENSE_TYPE COLUMN(ASSOCIATE_EXPNS_TYPE_CD);

COLLECT STATISTICS ON ASSOCIATE_BENEFIT_EXPENSE COLUMN(PARTITION);

COLLECT STATISTICS ON ASSOCIATE_BENEFIT_EXPENSE COLUMN(ASSOCIATE_EXPNS_TYPE_CD);

COLLECT STATISTICS ON ASSOCIATE_LABOR_EXPENSE COLUMN(PARTITION);

COLLECT STATISTICS ON ASSOCIATE_LABOR_EXPENSE COLUMN(ASSOCIATE_EXPNS_TYPE_CD);


