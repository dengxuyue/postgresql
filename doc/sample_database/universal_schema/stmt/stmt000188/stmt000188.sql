SELECT	"_twmJoin1"."Assoc_Hire_Dt"	,"_twmJoin1"."Assoc_HR_Num"	,"_twmJoin1"."Assoc_Termination_Dt"	,"_twmJoin1"."Manager_Associate_Id"	,"_twmJoin1"."Position_Id"	,"_twmJoin2"."Associate_Expns_Type_Cd"	,"_twmJoin2"."Associate_Party_Id"	,"_twmJoin2"."Benefit_Cost_Amt"	,"_twmJoin2"."Benefit_Hours_Qty"	,"_twmJoin2"."Period_End_Dt"	,"_twmJoin0"."Labor_Cost_Amt"	,"_twmJoin0"."Labor_Hours_Qty"
FROM	"universal_schema"."ASSOCIATE_LABOR_EXPENSE" AS "_twmJoin0"	INNER JOIN "universal_schema"."ASSOCIATE" AS "_twmJoin1"	ON "_twmJoin0"."Associate_Party_Id" = "_twmJoin1"."Associate_Party_Id"	INNER JOIN "universal_schema"."ASSOCIATE_BENEFIT_EXPENSE" AS "_twmJoin2"	ON "_twmJoin0"."Associate_Party_Id" = "_twmJoin2"."Associate_Party_Id"