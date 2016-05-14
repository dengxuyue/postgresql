--Referenced Tables: ALERT_EMAILS
--Referenced Views:
--Source: DR142061
--Query text:

Select LOCATION_ID, count(1)
From UNIVERSAL_SCHEMA.ALERT_EMAILS
Where READY_DATE = date'2010-11-11' and
      LOCATION_ID in(20,34)
Group by 1;
