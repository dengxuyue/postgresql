/*
 ZONENAME     : UNIVERSAL_SCHEMA.ORDER
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


