/*
 ZONENAME     : UNIVERSAL_SCHEMA.OTHERS
 GENERATED BY : Quantum China Beijing R&D
 DATE         : Mon Mar  8 18:26:04 2010
 COPYRIGHT (C) 2010 BY TERADATA CORP.
*/
CREATE HASH INDEX L_HIX
(
    LOCATION_ID,
    LOCATION_NAME        
)
ON  LOCATION
BY  (LOCATION_ID)
ORDER BY HASH (LOCATION_ID); 

CREATE HASH INDEX IIP_HIX
(
    LOCATION_ID,
    ITEM_ID,
    ITEM_INVENTORY_PLAN_DT,
    PLAN_ON_HAND_QTY,
    PLAN_ON_HAND_RETAIL_AMT
)
ON  ITEM_INVENTORY_PLAN
BY  (LOCATION_ID)
ORDER BY VALUES (ITEM_INVENTORY_PLAN_DT); 

CREATE HASH INDEX II_HIX
(
    LOCATION_ID,
    ITEM_ID,
    ITEM_INV_DT,
    ON_HAND_UNIT_QTY,
    ON_HAND_AT_RETAIL_AMT,
    ON_HAND_COST_AMT,
    ON_ORDER_QTY
)
ON  ITEM_INVENTORY
BY  (LOCATION_ID)
ORDER BY VALUES (ITEM_INV_DT); 

CREATE HASH INDEX A_HIX
(
    LOCATION_ID, 
    ASSOCIATE_PARTY_ID,
    ASSOC_HIRE_DT
)
ON  ASSOCIATE
BY  (LOCATION_ID, ASSOCIATE_PARTY_ID)
ORDER BY VALUES (ASSOC_HIRE_DT); 

CREATE HASH INDEX ABE_HIX
(
    ASSOCIATE_PARTY_ID,
    PERIOD_END_DT,
    BENEFIT_HOURS_QTY,
    BENEFIT_COST_AMT
)
ON  ASSOCIATE_BENEFIT_EXPENSE
BY  (ASSOCIATE_PARTY_ID)
ORDER BY VALUES (PERIOD_END_DT); 

CREATE HASH INDEX ALE_HIX
(
    ASSOCIATE_PARTY_ID,
    PERIOD_END_DT,
    LABOR_HOURS_QTY,
    LABOR_COST_AMT
)
ON  ASSOCIATE_LABOR_EXPENSE
BY  (ASSOCIATE_PARTY_ID)
ORDER BY VALUES (PERIOD_END_DT); 

