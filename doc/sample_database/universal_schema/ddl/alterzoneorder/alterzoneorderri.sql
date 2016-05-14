/*
 ZONENAME     : UNIVERSAL_SCHEMA.ORDER
 GENERATED BY : Quantum China Beijing R&D
 DATE         : Mon Mar  8 18:26:04 2010
 COPYRIGHT (C) 2010 BY TERADATA CORP.
*/
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


