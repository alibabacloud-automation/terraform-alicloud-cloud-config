resource "alicloud_config_rule" "rule" {
  count                       = var.create_rule ? 1 : 0
  rule_name                   = var.rule_name
  source_identifier           = var.source_identifier
  source_owner                = var.source_owner
  resource_types_scope        = var.resource_types_scope
  description                 = var.rule_description
  input_parameters            = var.input_parameters
  risk_level                  = var.rule_risk_level
  config_rule_trigger_types   = var.config_rule_trigger_types
  maximum_execution_frequency = var.maximum_execution_frequency
  exclude_resource_ids_scope  = var.exclude_resource_ids_scope
  region_ids_scope            = var.region_ids_scope
  resource_group_ids_scope    = var.resource_group_ids_scope
  tag_key_scope               = var.tag_key_scope
  tag_value_scope             = var.tag_value_scope
}

resource "alicloud_config_compliance_pack" "compliance_pack" {
  count                = var.create_compliance_pack ? 1 : 0
  compliance_pack_name = var.compliance_pack_name
  description          = var.compliance_pack_description
  risk_level           = var.compliance_pack_risk_level
  dynamic "config_rule_ids" {
    for_each = local.this_config_rule_ids
    content {
      config_rule_id = config_rule_ids.value
    }
  }
}

