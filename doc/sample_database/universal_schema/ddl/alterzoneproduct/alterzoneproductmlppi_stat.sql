/*
 ZONENAME     : UNIVERSAL_SCHEMA.PRODUCT
 GENERATED BY : Quantum China Beijing R&D
 DATE         : Mon Mar  8 18:26:04 2010
 COPYRIGHT (C) 2010 BY TERADATA CORP.
*/
/*Base Statistics*/
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



/*Spacific*/COLLECT STATISTICS ON ITEM_PRICE_HISTORY COLUMN(PARTITION);

COLLECT STATISTICS ON ITEM_PRICE_HISTORY COLUMN(LOCATION_ID, ITEM_PRICE_START_DT);


