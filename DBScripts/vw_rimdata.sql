Drop VIEW vw_rimdata;
CREATE VIEW vw_rimdata

AS

select
r.rim_data::json->>'group_ws5ux48/date_of_survey' as date_of_survey,
r.rim_data::json->>'group_ws5ux48/name_of_surveyor_s_who_checke' as checked_map_surveyor,
r.rim_data::json->>'group_ws5ux48/name_of_surveyor_s_who_collec' as data_collection_surveyor,
r.rim_data::json->>'group_ws5ux48/name_of_surveyor_s_who_took_t' as photo_surveyor,
r.rim_data::json->>'group_zl6oo94/group_uj8eg07/city' as city,
r.rim_data::json->>'group_zl6oo94/group_uj8eg07/admin_ward' as admin_ward,
r.rim_data::json->>'group_zl6oo94/group_uj8eg07/slum_name' as slum_name,
r.rim_data::json->>'group_zl6oo94/group_uj8eg07/survey_sector_number' as survey_sector_number,
r.rim_data::json->>'group_wb1hp47/year_established_according_to' as year_established_according_to_community,
r.rim_data::json->>'group_wb1hp47/legal_status' as legal_status,
r.rim_data::json->>'group_wb1hp47/Date_of_declaration' as Date_of_declaration,
r.rim_data::json->>'group_wb1hp47/land_owner' as land_owner,
r.rim_data::json->>'group_wb1hp47/development_plan_reservation_t' as development_plan_reservation_type,
r.rim_data::json->>'group_wb1hp47/development_plan_reservation' as development_plan_reservation,
r.rim_data::json->>'group_wb1hp47/approximate_area_of_the_settle' as approximate_area_of_the_settlement,
r.rim_data::json->>'group_wb1hp47/number_of_huts_in_settlement' as number_of_huts_in_settlement,
r.rim_data::json->>'group_wb1hp47/location' as location,
r.rim_data::json->>'group_wb1hp47/topography' as topography,
r.rim_data::json->>'group_wb1hp47/describe_the_slum' as describe_the_slum,
r.rim_data::json->>'group_te3dx03/group_ul75r92/status_of_defecation' as status_of_defecation,
r.rim_data::json->>'group_te3dx03/group_ul75r92/number_of_community_toilet_blo' as no_of_ctbs,
r.rim_data::json->>'group_tb3th42/is_the_CTB_in_use' as is_the_CTB_in_use,
r.rim_data::json->>'group_tb3th42/fee_for_use_of_ctb_per_family' as fee_for_use_of_ctb_per_family,
r.rim_data::json->>'group_tb3th42/cost_of_pay_and_use_toilet_pe' as cost_of_pay_and_use_toilet_per_person,
r.rim_data::json->>'group_tb3th42/ctb_gender_usage' as ctb_gender_usage,
r.rim_data::json->>'group_tb3th42/total_number_of_mixed_seats_al' as total_number_of_mixed_seats_alloted,
r.rim_data::json->>'group_tb3th42/number_of_mixed_seats_allotted' as no_of_mixed_seats_alloted_not_in_use,
r.rim_data::json->>'group_tb3th42/the_reason_for_the_mixed_seats' as mixed_seats_not_in_use_reason,
r.rim_data::json->>'group_tb3th42/number_of_seats_allotted_to_me' as no_of_seats_alloted_men,
r.rim_data::json->>'group_tb3th42/number_of_seats_allotted_to_me_001' as no_of_seats_alloted_men_not_in_use,
r.rim_data::json->>'group_tb3th42/the_reason_for_men_not_using_t' as men_not_using_reason,
r.rim_data::json->>'group_tb3th42/number_of_seats_allotted_to_wo' as no_of_seats_allotted_to_women,
r.rim_data::json->>'group_tb3th42/number_of_seats_allotted_to_wo_001' as no_of_seats_allotted_to_women_not_in_use,
r.rim_data::json->>'group_tb3th42/the_reason_for_women_not_using' as women_not_using_reason,
r.rim_data::json->>'group_tb3th42/is_the_ctb_available_at_night' as ctb_available_at_night,
r.rim_data::json->>'group_tb3th42/ctb_maintenance_provided_by' as ctb_maintenance_provided_by,
r.rim_data::json->>'group_tb3th42/condition_of_ctb_structure' as condition_of_ctb_structure,
r.rim_data::json->>'group_tb3th42/out_of_total_seats_no_of_pans_in_good_condition' as out_of_total_seats_no_of_pans_in_good_condition,
r.rim_data::json->>'group_tb3th42/out_of_total_seats_no_of_doors_in_good_condition' as out_of_total_seats_no_of_doors_in_good_condition,
r.rim_data::json->>'group_tb3th42/out_of_total_seats_no_of_seats_where_electricity_is_available' as out_of_total_seats_no_of_seats_where_electricity_is_available,
r.rim_data::json->>'group_tb3th42/out_of_total_seats_no_of_seats_where_tiles_on_wall_are_in_good_condition' as out_of_total_seats_no_of_seats_where_tiles_on_wall_are_in_good_condition,
r.rim_data::json->>'group_tb3th42/out_of_total_seats_no_of_seats_where_tiles_on_floor_are_in_good_condition' as out_of_total_seats_no_of_seats_where_tiles_on_floor_are_in_good_condition,
r.rim_data::json->>'group_tb3th42/frequency_of_ctb_cleaning_by_U' as frequency_of_ctb_cleaning,
r.rim_data::json->>'group_tb3th42/does_the_ulb_ngo_communty_use' as cleaning_agents_used,
r.rim_data::json->>'group_tb3th42/cleanliness_of_the_ctb' as cleanliness_of_the_ctb,
r.rim_data::json->>'group_tb3th42/is_there_a_caretaker_for_the_C' as ctb_caretaker_present,
r.rim_data::json->>'group_tb3th42/type_of_water_supply_in_ctb' as water_supply_in_ctb,
r.rim_data::json->>'group_tb3th42/capacity_of_ctb_water_tank_in' as capacity_of_ctb_water_tank,
r.rim_data::json->>'group_tb3th42/litres_of_water_used_by_commun' as litres_of_water_used_by_community_per_flush,
r.rim_data::json->>'group_tb3th42/availability_of_water_in_the_t' as availability_of_water_in_the_ctb,
r.rim_data::json->>'group_tb3th42/availability_of_electricity_in' as availability_of_electricity_in_ctb,
r.rim_data::json->>'group_tb3th42/availability_of_electricity_in_001' as availability_of_electricity_after_dark,
r.rim_data::json->>'group_tb3th42/facility_in_the_toilet_block_f' as under5_facility_in_ctb,
r.rim_data::json->>'group_tb3th42/condition_of_facility_for_chil' as under5_facility_condition,
r.rim_data::json->>'group_tb3th42/sewage_disposal_system' as sewage_disposal_system,
r.rim_data::json->>'group_tb3th42/availability_of_water_in_the_t' as availability_of_water_in_the_ctb,
r.rim_data::json->>'group_tb3th42/distance_to_nearest_ulb_sewer' as distance_to_nearest_ulb_sewer,
r.rim_data::json->>'group_tb3th42/toilet_comment' as toilet_comment,
r.rim_data::json->>'group_zj8tc43/Total_number_of_standposts_in_' as no_of_standposts_in_use,
r.rim_data::json->>'group_zj8tc43/Total_number_of_standposts_NOT' as no_of_standposts_not_in_use,
r.rim_data::json->>'group_zj8tc43/total_number_of_taps_in_use_n' as no_of_taps_in_use,
r.rim_data::json->>'group_zj8tc43/total_number_of_taps_in_use_n_001' as no_of_taps_not_in_use,
r.rim_data::json->>'group_zj8tc43/total_number_of_handpumps_in_u' as no_of_handpumps_in_use,
r.rim_data::json->>'group_zj8tc43/total_number_of_handpumps_in_u_001' as no_of_handpumps_not_in_use,
r.rim_data::json->>'group_zj8tc43/alternative_source_of_water' as alternative_source_of_water,
r.rim_data::json->>'group_zj8tc43/availability_of_water' as availability_of_water,
r.rim_data::json->>'group_zj8tc43/pressure_of_water_in_the_syste' as pressure_of_water_in_the_system,
r.rim_data::json->>'group_zj8tc43/coverage_of_wateracross_settle' as coverage_of_wateracross_settlement,
r.rim_data::json->>'group_zj8tc43/quality_of_water_in_the_system' as quality_of_water_in_the_system,
r.rim_data::json->>'group_zj8tc43/water_supply_comment' as no_of_handpumps_not_in_use,
r.rim_data::json->>'group_ks0wh10/total_number_of_waste_containe' as no_of_waste_containers,
r.rim_data::json->>'group_ks0wh10/facility_of_waste_collection' as facility_of_waste_collection,
r.rim_data::json->>'group_ks0wh10/frequency_of_waste_collection' as frequency_of_waste_collection_mla_tempo,
r.rim_data::json->>'group_ks0wh10/frequency_of_waste_collection__002' as frequency_of_waste_collection_door2door,
r.rim_data::json->>'group_ks0wh10/frequency_of_waste_collection_001' as frequency_of_waste_collection_ghantagadi,
r.rim_data::json->>'group_ks0wh10/frequency_of_waste_collection_' as frequency_of_waste_collection_van,
r.rim_data::json->>'group_ks0wh10/frequency_of_waste_collection__001' as frequency_of_waste_collection_cleaning_garbage_bin,
r.rim_data::json->>'group_ks0wh10/coverage_of_waste_collection_a' as coverage_of_waste_collection_mla_tempo,
r.rim_data::json->>'group_ks0wh10/coverage_of_waste_collection_a_001' as coverage_of_waste_collection_door2door,
r.rim_data::json->>'group_ks0wh10/coverage_of_waste_collection_a_002' as coverage_of_waste_collection_ghantagadi,
r.rim_data::json->>'group_ks0wh10/coverage_of_waste_collection_a_003' as coverage_of_waste_collection_van,
r.rim_data::json->>'group_ks0wh10/where_are_the_communty_open_du' as where_are_the_communty_open_dumpsites,
r.rim_data::json->>'group_ks0wh10/do_the_member_of_community_dep' as do_the_member_of_community_deposit_waste_in_drains,
r.rim_data::json->>'group_ks0wh10/Waste_management_comments' as Waste_management_comments,
r.rim_data::json->>'group_kk5gz02/presence_of_drains_within_the' as presence_of_drains_within_settlement,
r.rim_data::json->>'group_kk5gz02/coverage_of_drains_across_the' as coverage_of_drains_across_settlement,
r.rim_data::json->>'group_kk5gz02/do_the_drains_get_blocked' as do_the_drains_get_blocked,
r.rim_data::json->>'group_kk5gz02/is_the_drainage_gradient_adequ' as is_the_drainage_gradient_adequate,
r.rim_data::json->>'group_kk5gz02/diameter_of_ulb_sewer_line_acr' as diameter_of_ulb_sewer_line_across_settlement,
r.rim_data::json->>'group_kk5gz02/drainage_comment' as drainage_comment,
r.rim_data::json->>'group_bv7hf31/Presence_of_gutter' as Presence_of_gutter,
r.rim_data::json->>'group_bv7hf31/type_of_gutter_within_the_sett' as type_of_gutter_within_the_settlement,
r.rim_data::json->>'group_bv7hf31/coverage_of_gutter' as coverage_of_gutter,
r.rim_data::json->>'group_bv7hf31/are_gutter_covered' as are_gutter_covered,
r.rim_data::json->>'group_bv7hf31/do_gutters_flood' as do_gutters_flood,
r.rim_data::json->>'group_bv7hf31/do_gutter_get_choked' as do_gutter_get_choked,
r.rim_data::json->>'group_bv7hf31/is_gutter_gradient_adequate' as is_gutter_gradient_adequate,
r.rim_data::json->>'group_bv7hf31/comments_on_gutter' as comments_on_gutter,
r.rim_data::json->>'group_xy9hz30/presence_of_roads_within_the_s' as presence_of_roads_within_settlement,
r.rim_data::json->>'group_xy9hz30/type_of_roads_within_the_settl' as type_of_roads_within_the_settlement,
r.rim_data::json->>'group_xy9hz30/coverage_of_pucca_road_across' as coverage_of_pucca_road_across_settlement,
r.rim_data::json->>'group_xy9hz30/finish_of_the_road' as finish_of_the_road,
r.rim_data::json->>'group_xy9hz30/average_width_of_internal_road' as average_width_of_internal_road,
r.rim_data::json->>'group_xy9hz30/average_width_of_arterial_road' as average_width_of_arterial_road,
r.rim_data::json->>'group_xy9hz30/point_of_vehicular_access_to_t' as point_of_vehicular_access_to_slum,
r.rim_data::json->>'group_xy9hz30/is_the_settlement_below_or_abo' as is_the_settlement_below_or_above_mainaccessroad,
r.rim_data::json->>'group_xy9hz30/are_the_huts_below_or_above_th' as are_the_huts_below_or_above_the_internal_access_road,
r.rim_data::json->>'group_xy9hz30/road_and_access_comment' as road_and_access_comment,
r.created_on,
r.submission_date,
r.modified_on,
r.slum_id,
r.city_id,
s.name as Slum,
c.city_name as city_name

FROM graphs_slumdata as r,  master_slum as s, master_city as mcc, master_cityreference as c, master_electoralward as me,
master_administrativeward as ma 

WHERE r.slum_id = s.id AND s.electoral_ward_id= me.id AND me.administrative_ward_id=ma.id AND mcc.id = ma.city_id AND c.id = mcc.name_id 