--Referenced Tables: Associate, Associate_Position
--Referenced Views:
--Source: DR134011
--Query text:

Select *
From universal_schema.Associate a, universal_schema.Associate_Position ap 
Where ap.Position_Id = a.Position_Id
;