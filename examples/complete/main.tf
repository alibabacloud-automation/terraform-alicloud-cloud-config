provider "alicloud" {
  region = "cn-shanghai"
}

module "example" {
  source = "../.."

  #alicloud_config_rule
  create_rule                 = true
  rule_name                   = "tf_test_config_rule"
  source_identifier           = "ecs-instances-in-vpc"
  source_owner                = "ALIYUN"
  resource_types_scope        = var.resource_types_scope
  rule_description            = var.rule_description
  input_parameters            = var.input_parameters
  rule_risk_level             = var.rule_risk_level
  config_rule_trigger_types   = var.config_rule_trigger_types
  maximum_execution_frequency = var.maximum_execution_frequency
  exclude_resource_ids_scope  = var.exclude_resource_ids_scope
  region_ids_scope            = var.region_ids_scope
  resource_group_ids_scope    = var.resource_group_ids_scope
  tag_key_scope               = var.tag_key_scope
  tag_value_scope             = var.tag_value_scope

  #alicloud_config_compliance_pack
  create_compliance_pack      = true
  compliance_pack_name        = var.compliance_pack_name
  compliance_pack_description = var.compliance_pack_description
  compliance_pack_risk_level  = var.compliance_pack_risk_level
  config_rule_ids             = var.config_rule_ids

}