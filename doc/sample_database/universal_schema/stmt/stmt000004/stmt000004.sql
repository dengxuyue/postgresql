select l.Location_Name as "STORE", 
       TWS.sales as "Last Week Sales",
       TWS.Rank_Sales as "Last Week Rank", 
       LYS.Sales as "Same Period LQ Sales",
       LYS.Rank_Sales as "Same Period LQ Rank",
       (((TWS.Sales-LYS.Sales)/LYS.Sales)*100) as "% Change in Sales"
from 
    (
        select a.location_id as store_id, sum(MKB_Rev_Amt) as sales,
        RANK() OVER ( ORDER BY sum(MKB_Rev_Amt) DESC) AS Rank_Sales
        from universal_schema.sales_transaction s, universal_schema.associate a
        where a.Associate_Party_Id = s.Associate_party_Id 
            and 
        s.Tran_Date >= date '2005-06-30' - interval '7' day 
            and 
        s.Tran_Date < '2005-06-30'
        group by 1
    ) as TWS,
    (
        select a.location_id as store_id, sum(MKB_Rev_Amt) as sales,
        rank() over ( ORDER BY sum(MKB_Rev_Amt) DESC) AS Rank_Sales
        from universal_schema.sales_transaction s, universal_schema.associate a
        where a.Associate_Party_Id = s.Associate_party_Id 
            and 
        s.Tran_Date >= date '2005-06-30' - interval '37' day 
            and 
        s.Tran_Date < date '2005-06-30' - interval '30' day
        group by 1
    ) as LYS,
    universal_schema.location L
where TWS.store_id = LYS.store_id and TWS.store_id = l.location_id
order by TWS.Rank_Sales 
limit 10; 
