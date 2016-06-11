/*
 ZONENAME     : UNIVERSAL_SCHEMA.PRODUCT
 GENERATED BY : Quantum China Beijing R&D
 DATE         : Mon Mar  8 18:26:04 2010
 COPYRIGHT (C) 2010 BY TERADATA CORP.
*/
ALTER TABLE UNIVERSAL_SCHEMA.BRAND_OWNER_ORG          
    MODIFY PRIMARY INDEX
    PARTITION BY(
        BRAND_PARTY_ID MOD 10 + 1
); 

ALTER TABLE UNIVERSAL_SCHEMA.BRAND                    
    MODIFY PRIMARY INDEX
    PARTITION BY(
        HASHBUCKET(HASHROW(BRAND_CD)) MOD 10 + 1
); 

ALTER TABLE UNIVERSAL_SCHEMA.ITEM                     
    MODIFY PRIMARY INDEX
    PARTITION BY(
        HASHBUCKET(HASHROW(ITEM_ID)) MOD 10 + 1
); 

ALTER TABLE UNIVERSAL_SCHEMA.ITEM_PRICE_HISTORY 
    MODIFY PRIMARY INDEX
    PARTITION BY(
        /* PATITION EXPRESSIONS <TEMPLETED>*/
        RANGE_N(ITEM_PRICE_START_DT BETWEEN '2005-01-01' AND '2010-01-01' EACH INTERVAL '1' MONTH)
); 

ALTER TABLE UNIVERSAL_SCHEMA.PRICE_CHANGE_REASON      
    MODIFY PRIMARY INDEX
    PARTITION BY(
        HASHBUCKET(HASHROW(PRICE_CHANGE_REASON_CD)) MOD 10 + 1
); 

ALTER TABLE UNIVERSAL_SCHEMA.ITEM_TRAIT               
    MODIFY PRIMARY INDEX
    PARTITION BY(
        HASHBUCKET(HASHROW(ITEM_ID)) MOD 10 + 1
); 

ALTER TABLE UNIVERSAL_SCHEMA.TRAIT                    
    MODIFY PRIMARY INDEX
    PARTITION BY(
        HASHBUCKET(HASHROW(TRAIT_CD)) MOD 10 + 1
); 

ALTER TABLE UNIVERSAL_SCHEMA.TRAIT_GROUP              
    MODIFY PRIMARY INDEX
    PARTITION BY(
        HASHBUCKET(HASHROW(TRAIT_GROUP_CD)) MOD 10 + 1
); 

ALTER TABLE UNIVERSAL_SCHEMA.TRAIT_VALUE              
    MODIFY PRIMARY INDEX
    PARTITION BY(
        HASHBUCKET(HASHROW(TRAIT_VALUE_CD)) MOD 10 + 1
); 

