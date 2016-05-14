--Referenced Tables: PARTY
--Referenced Views:
--Source: DR144335
--Query text:

select 0 from universal_schema.party p
where (p.party_start_dt in ('2003-12-27')
  and ((((p.party_city = 'brooklyn') and (p.party_state = 'NY')))
       or
      (((p.party_city = 'watertown') and (p.party_state = 'CT')))))
;select 0 from universal_schema.party p
where (p.party_start_dt in ('2003-12-03')
  and ((((p.party_city = 'brooklyn') and (p.party_state = 'NY')))
       or
      (((p.party_city = 'watertown') and (p.party_state = 'CT')))));  