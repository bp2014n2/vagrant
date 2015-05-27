#!/bin/bash
ecl run --target=thor /vagrant/insert_data/modifier_dimension.ecl
ecl run --target=thor /vagrant/insert_data/atc_concept_dimension.ecl
ecl run --target=thor /vagrant/insert_data/icd_concept_dimension.ecl
ecl run --target=thor /vagrant/insert_data/ops_concept_dimension_1.ecl
ecl run --target=thor /vagrant/insert_data/ops_concept_dimension_2.ecl
ecl run --target=thor /vagrant/insert_data/ops_concept_dimension_3.ecl
ecl run --target=thor /vagrant/insert_data/concept_dimension.ecl
ecl run --target=thor /vagrant/insert_data/fill_encounter_mapping.ecl
ecl run --target=thor /vagrant/insert_data/fill_qt_breakdown_path.ecl
ecl run --target=thor /vagrant/insert_data/fill_qt_query_result_type.ecl
ecl run --target=thor /vagrant/insert_data/fill_qt_query_status_type.ecl
ecl run --target=thor /vagrant/insert_data/fill_set_type.ecl
ecl run --target=thor /vagrant/insert_data/fill_qt_privilege.ecl
ecl run --target=thor /vagrant/insert_data/create_empty_tables.ecl