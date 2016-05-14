/*
 ZONENAME     : UNIVERSAL_SCHEMA.OTHERS
 GENERATED BY : Quantum China Beijing R&D
 DATE         : Mon Mar  8 18:26:04 2010
 COPYRIGHT (C) 2010 BY TERADATA CORP.
*/
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


