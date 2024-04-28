#alicloud_config_rule
rule_description           = "tf_update_test_config_rule"
input_parameters           = { "vpcIds" : "vpc-updatesw4ctjd******" }
rule_risk_level            = 2
exclude_resource_ids_scope = "i-update-test"
region_ids_scope           = "cn-beijing"
resource_group_ids_scope   = "rg-update-test"
tag_key_scope              = "tag-update-key-test"
tag_value_scope            = "tag-update-value-test"
#alicloud_config_compliance_pack
compliance_pack_name        = "tf_update_test_config_compliance_pack"
compliance_pack_description = "tf_update_test_config_compliance_pack"
compliance_pack_risk_level  = 2