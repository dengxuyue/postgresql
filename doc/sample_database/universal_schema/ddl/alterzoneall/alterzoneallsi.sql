/*alert_emails*/
create index aem_vosi_1(ready_date) order by values (ready_date) on universal_schema.alert_emails;
create index aem_vosi_2(location_id) order by values (location_id) on universal_schema.alert_emails;
create index aem_hosi_1(item_id) order by hash (item_id) on universal_schema.alert_emails;

/*all_divisions*/
create index ald_hosi_1(all_divisions_cd) order by hash (all_divisions_cd) on universal_schema.all_divisions;

/*all_item_divisions*/
create index aid_hosi_1(all_item_divisions_cd) order by hash (all_item_divisions_cd) on universal_schema.all_item_divisions;

/*associate*/
create index ass_vosi_1(assoc_hire_dt) order by values (assoc_hire_dt) on universal_schema.associate;
create index ass_vosi_2(assoc_termination_dt) order by values (assoc_termination_dt) on universal_schema.associate;
create index ass_vosi_3(location_id) order by values (location_id) on universal_schema.associate;
create index ass_vosi_4(position_id) order by values (position_id) on universal_schema.associate;
create index ass_vosi_5(manager_associate_id) order by values (manager_associate_id) on universal_schema.associate;
create index ass_hosi_1(location_id) order by hash (location_id) on universal_schema.associate;
create index ass_hosi_2(position_id) order by hash (position_id) on universal_schema.associate;
create index ass_hosi_3(manager_associate_id) order by hash (manager_associate_id) on universal_schema.associate;

/*associate_benefit_expense*/
create index abe_vosi_1(period_end_dt) order by values (period_end_dt) on universal_schema.associate_benefit_expense;
create index abe_vosi_2(associate_party_id) order by values (associate_party_id) on universal_schema.associate_benefit_expense;
create index abe_hosi_1(associate_expns_type_cd) order by hash (associate_expns_type_cd) on universal_schema.associate_benefit_expense;
create index abe_hosi_2(benefit_cost_amt) order by hash (benefit_cost_amt) on universal_schema.associate_benefit_expense;

/*associate_expense_type*/
create index aet_hosi_1(associate_expns_type_cd) order by hash (associate_expns_type_cd) on universal_schema.associate_expense_type;

/*associate_labor_expense*/
create index ale_vosi_1(period_end_dt) order by values (period_end_dt) on universal_schema.associate_labor_expense;
create index ale_vosi_2(associate_party_id) order by values (associate_party_id) on universal_schema.associate_labor_expense;
create index ale_hosi_1(associate_expns_type_cd) order by hash (associate_expns_type_cd) on universal_schema.associate_labor_expense;

/*associate_position*/
create index asp_hosi_1(position_id) order by hash (position_id) on universal_schema.associate_position;
create index asp_vosi_1(position_id) order by values (position_id) on universal_schema.associate_position;
create index asp_hosi_2(position_type_cd) order by hash (position_type_cd) on universal_schema.associate_position;
create index asp_hosi_3(job_classification_cd) order by hash (job_classification_cd) on universal_schema.associate_position;

/*brand*/
create index bra_hosi_1(brand_cd) order by hash (brand_cd) on universal_schema.brand;

/*brand_owner_org*/
create index boo_hosi_1(brand_party_id) order by hash (brand_party_id) on universal_schema.brand_owner_org;

/*channel*/
create index cha_hosi_1(channel_cd) order by hash (channel_cd) on universal_schema.channel;

/*cost*/
create index cos_hosi_1(cost_cd) order by hash (cost_cd) on universal_schema.cost;
create index cos_hosi_2(cost_type_cd) order by hash (cost_type_cd) on universal_schema.cost;

/*cost_type*/
create index cot_hosi_2(cost_type_cd) order by hash (cost_type_cd) on universal_schema.cost_type;

/*current_promo*/
create index cup_hosi_1(promo_id) order by hash (promo_id) on universal_schema.current_promo;
create index cup_hosi_2(promo_type) order by hash (promo_type) on universal_schema.current_promo;

/*demographics*/
create index dem_hosi_1(zipcode) order by hash (zipcode) on universal_schema.demographics;
create index dem_hosi_2(citytype) order by hash (citytype) on universal_schema.demographics;
create index dem_hosi_3(state) order by hash (state) on universal_schema.demographics;
create index dem_hosi_4(timezone) order by hash (timezone) on universal_schema.demographics;

/*district*/
create index dis_hosi_1(region_cd) order by hash (region_cd) on universal_schema.district;
create index dis_hosi_2(district_cd) order by hash (district_cd) on universal_schema.district;
create index dis_vosi_1(district_mgr_associate_id) order by values (district_mgr_associate_id) on universal_schema.district;

/*division*/
create index div_hosi_1(division_cd) order by hash (division_cd) on universal_schema.division;
create index div_vosi_1(division_mgr_associate_id) order by values (division_mgr_associate_id) on universal_schema.division;

/*item*/
create index ite_hosi_1(item_id) order by hash (item_id) on universal_schema.item;
create index ite_hosi_2(commodity_cd) order by hash (commodity_cd) on universal_schema.item;
create index ite_hosi_3(brand_cd) order by hash (brand_cd) on universal_schema.item;
create index ite_hosi_4(item_type_cd) order by hash (item_type_cd) on universal_schema.item;
create index ite_vosi_1(vendor_party_id) order by values (vendor_party_id) on universal_schema.item;
create index ite_vosi_2(vendor_party_id, inventory_ind) order by values (vendor_party_id) on universal_schema.item;

/*item_division*/
create index itd_hosi_1(all_item_divisions_cd) order by hash (all_item_divisions_cd) on universal_schema.item_division;
create index itd_hosi_2(item_division_cd) order by hash (item_division_cd) on universal_schema.item_division;
create index itd_vosi_1(item_division_mgr_associate_id) order by values (item_division_mgr_associate_id) on universal_schema.item_division;

/*item_inventory*/
create index iti_hosi_1(item_id) order by hash (item_id) on universal_schema.item_inventory;
create index iti_vosi_1(location_id, on_hand_unit_qty) order by values (location_id) on universal_schema.item_inventory;
create index iti_vosi_2(item_inv_dt, on_hand_unit_qty) order by values (item_inv_dt) on universal_schema.item_inventory;
create index iti_vosi_3(item_inv_dt, on_hand_at_retail_amt) order by values (item_inv_dt) on universal_schema.item_inventory;


/*item_inventory_plan*/
create index iip_hosi_1(item_id) order by hash (item_id) on universal_schema.item_inventory_plan;
create index iip_vosi_1(location_id, plan_on_hand_qty) order by values (location_id) on universal_schema.item_inventory_plan;
create index iip_vosi_2(item_inventory_plan_dt, plan_on_hand_retail_amt) order by values (item_inventory_plan_dt) on universal_schema.item_inventory_plan;
create index iip_vosi_3(item_inventory_plan_dt, plan_on_hand_qty) order by values (item_inventory_plan_dt) on universal_schema.item_inventory_plan;

/*item_price_history*/
create index iph_hosi_1(item_id) order by hash (item_id) on universal_schema.item_price_history;
create index iph_hosi_2(price_change_reason_cd) order by hash (price_change_reason_cd) on universal_schema.item_price_history;
create index iph_vosi_1(item_price_start_dt, item_price_amt) order by values (item_price_start_dt) on universal_schema.item_price_history;
create index iph_vosi_2(location_id) order by values (location_id) on universal_schema.item_price_history;

/*item_store_sold*/
create index iss_hosi_1(product_id) order by hash (product_id) on universal_schema.item_store_sold;
create index iss_vosi_1(week_of_year) order by values (week_of_year) on universal_schema.item_store_sold;
create index iss_vosi_2(plan_qty, plan_retail_amt) order by values (plan_qty) on universal_schema.item_store_sold;
create index iss_vosi_3(location_id, plan_retail_amt) order by values (location_id) on universal_schema.item_store_sold;

/*item_trait*/
create index itt_hosi_1(item_id) order by hash (item_id) on universal_schema.item_trait;
create index itt_hosi_2(trait_cd) order by hash (trait_cd) on universal_schema.item_trait;
create index itt_hosi_3(trait_value_cd) order by hash (trait_value_cd) on universal_schema.item_trait;

/*job_classification*/
create index joc_hosi_1(job_classification_cd) order by hash (job_classification_cd) on universal_schema.job_classification;

/*labor_plan*/
create index lap_hosi_1(job_classification_cd) order by hash (job_classification_cd) on universal_schema.labor_plan;
create index lap_hosi_2(work_shift_cd) order by hash (work_shift_cd) on universal_schema.labor_plan;
create index lap_vosi_1(location_id, plan_cost_amt) order by values (location_id) on universal_schema.labor_plan;
create index lap_vosi_2(plan_period_end_dt, plan_cost_amt) order by values (plan_period_end_dt) on universal_schema.labor_plan;
create index lap_vosi_3(plan_period_start_dt, plan_overtime_hours_qty) order by values (plan_period_start_dt) on universal_schema.labor_plan;

/*location*/
create index loc_hosi_1(location_id, location_name) order by hash (location_id) on universal_schema.location;
create index loc_hosi_2(chain_cd, location_name) order by hash (chain_cd) on universal_schema.location;
create index loc_hosi_3(channel_cd, location_total_area_meas) order by hash (channel_cd) on universal_schema.location;
create index loc_hosi_4(district_cd, location_name) order by hash (district_cd) on universal_schema.location;
create index loc_hosi_5(location_type_cd, location_total_area_meas) order by hash (location_type_cd) on universal_schema.location;
create index loc_vosi_1(location_id, location_name) order by values (location_id) on universal_schema.location;
create index loc_vosi_2(location_open_dt, location_total_area_meas) order by values (location_open_dt) on universal_schema.location;
create index loc_vosi_3(location_close_dt, location_name) order by values (location_close_dt) on universal_schema.location;
create index loc_vosi_4(parent_location_id, location_total_area_meas) order by values (parent_location_id) on universal_schema.location;
create index loc_vosi_5(location_mgr_associate_id, location_total_area_meas) order by values (location_mgr_associate_id) on universal_schema.location;

/*location_plan*/
create index lop_hosi_1(location_id, actual_cost_amt) order by hash (location_id) on universal_schema.location_plan;
create index lop_hosi_2(cost_cd, actual_cost_amt) order by hash (cost_cd) on universal_schema.location_plan;
create index lop_vosi_1(period_end_dt, actual_cost_amt) order by values (period_end_dt) on universal_schema.location_plan;
create index lop_vosi_2(period_start_dt, actual_cost_amt) order by values (period_start_dt) on universal_schema.location_plan;
create index lop_vosi_3(location_id, actual_cost_amt) order by values (location_id) on universal_schema.location_plan;

/*location_type*/
create index lot_hosi_1(location_type_cd, location_type_desc) order by hash (location_type_cd) on universal_schema.location_type;

/*offers_20050701*/
create index off_hosi_1(promo_id, party_firstname, party_lastname) order by hash (promo_id) on universal_schema.offers_20050701;
create index off_vosi_1(visits, party_firstname, party_lastname) order by values (visits) on universal_schema.offers_20050701;
create index off_vosi_2(location_id, party_firstname, party_lastname) order by values (location_id) on universal_schema.offers_20050701;

/*party*/
create index par_hosi_1(party_id) order by hash (party_id) on universal_schema.party;
create index par_hosi_2(party_type_cd, party_firstname) order by hash (party_type_cd) on universal_schema.party;
create index par_vosi_1(party_start_dt, party_firstname) order by values (party_start_dt) on universal_schema.party;
create index par_vosi_2(party_first_purchase_dt, party_firstname) order by values (party_first_purchase_dt) on universal_schema.party;

/*position_grade*/
create index pog_hosi_1(position_grade_cd, position_grade_desc) order by hash (position_grade_cd) on universal_schema.position_grade;

/*position_type*/
create index pot_hosi_1(position_type_cd, position_type_desc) order by hash (position_type_cd) on universal_schema.position_type;

/*price_change_reason*/
create index pcr_hosi_1(price_change_reason_cd, price_change_reason_desc) order by hash (price_change_reason_cd) on universal_schema.price_change_reason;

/*promo_type*/
create index prt_hosi_1(promo_type_id, promo_type_name) order by hash (promo_type_id) on universal_schema.promo_type;

/*region*/
create index prt_hosi_1(region_cd, region_name) order by hash (region_cd) on universal_schema.region;
create index prt_hosi_2(division_cd, region_name) order by hash (division_cd) on universal_schema.region;
create index prt_vosi_1(region_mgr_associate_id, region_name) order by values (region_mgr_associate_id) on universal_schema.region;

/*return_reason*/
create index rer_hosi_1(return_reason_cd, return_reason_desc) order by hash (return_reason_cd) on universal_schema.return_reason;

/*return_transaction_line*/
create index rtl_hosi_1(sales_tran_id, return_item_qty) order by hash (sales_tran_id) on universal_schema.return_transaction_line;
create index rtl_hosi_2(return_reason_cd, return_item_qty) order by hash (return_reason_cd) on universal_schema.return_transaction_line;
create index rtl_hosi_3(original_sales_tran_id, return_item_qty) order by hash (original_sales_tran_id) on universal_schema.return_transaction_line;
create index rtl_vosi_1(original_sales_tran_id, unit_refund_amt) order by values (original_sales_tran_id) on universal_schema.return_transaction_line;
create index rtl_vosi_2(location_id, return_item_qty) order by values (location_id) on universal_schema.return_transaction_line;


/*sales_transaction*/
create index sat_hosi_1(tran_type_cd, MKB_ITEM_QTY) order by hash (tran_type_cd) on universal_schema.sales_transaction;
create index sat_hosi_2(tran_status_cd, mkb_number_unique_items_qty) order by hash (tran_status_cd) on universal_schema.sales_transaction;
create index sat_hosi_3(reward_cd, mkb_number_unique_items_qty) order by hash (reward_cd) on universal_schema.sales_transaction;
create index sat_vosi_1(visit_id, mkb_rev_amt) order by values (visit_id) on universal_schema.sales_transaction;
create index sat_vosi_2(associate_party_id, mkb_number_unique_items_qty) order by values (associate_party_id) on universal_schema.sales_transaction;
create index sat_vosi_3(tran_date, mkb_number_unique_items_qty) order by values (tran_date) on universal_schema.sales_transaction;
create index sat_vosi_4(tran_end_hour, mkb_number_unique_items_qty) order by values (tran_end_hour) on universal_schema.sales_transaction;
create index sat_vosi_5(tran_end_minute, mkb_number_unique_items_qty) order by values (tran_end_minute) on universal_schema.sales_transaction;

/*sales_transaction_line*/
create index stl_hosi_1(sales_tran_id) order by values (sales_tran_id) on universal_schema.sales_transaction_line;
create index stl_hosi_3(location) order by hash on universal_schema.sales_transaction_line;
create index stl_hosi_4(item_id) on universal_schema.sales_transaction_line;
create index stl_vosi_1(tx_time, unit_cost_amt, item_qty, tran_line_status_cd, tran_line_sales_type_cd) order by values(tx_time) on universal_schema.sales_transaction_line;
create index stl_vosi_2(tran_line_date, unit_cost_amt, item_qty, tran_line_status_cd, tran_line_sales_type_cd) order by values(tran_line_date) on universal_schema.sales_transaction_line;
create index stl_vosi_3(sales_tran_id, item_qty, tran_line_status_cd) order by values (sales_tran_id) on universal_schema.sales_transaction_line;
create index stl_vosi_4(sales_tran_id, sales_tran_line_num, item_qty, tran_line_status_cd) order by values (sales_tran_id) on universal_schema.sales_transaction_line;
create index stl_vosi_5(location, unit_cost_amt, item_qty) order by values (location) on universal_schema.sales_transaction_line;

/*trait*/
create index tra_hosi_1(trait_cd, trait_desc) order by hash (trait_cd) on universal_schema.trait;
create index tra_hosi_2(trait_group_cd, trait_desc) order by hash (trait_group_cd) on universal_schema.trait;

/*trait_group*/
create index trg_hosi_1(trait_group_cd, trait_group_desc) order by hash (trait_group_cd) on universal_schema.trait_group;

/*trait_value*/
create index trv_hosi_1(trait_value_cd, trait_val) order by hash (trait_value_cd) on universal_schema.trait_value;
create index trv_hosi_2(trait_cd, trait_val) order by hash (trait_cd) on universal_schema.trait_value;

/*work_shift*/
create index wos_hosi_1(work_shift_cd, work_shift_desc) order by hash (work_shift_cd) on universal_schema.work_shift;
