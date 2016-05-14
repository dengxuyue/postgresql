--
-- PostgreSQL database dump
--

SET search_path = universal_schema, pg_catalog;

COPY current_promo(promo_name, promo_id, promo_type, promo_desc) FROM stdin with delimiter as '|';
5% off next purchase|101|12|Customer gets 5% off of pretax basket total for a single purchase over $100
10% off next purchase|100|12|Customer gets 10% off of pretax basket total for a single purchase over $100
2 Free AMC Movies Tickets|102|12|Customer gets a pair of amc movie vouchers to be redeemed at AMC website on next purchase
Free In Store Movie Rental|103|12|Customer gets a single free movie rental on next pretax purchase that is greater than $75
\.
