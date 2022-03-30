locals {
  # Get ID of cloud config resources
  this_config_rule_ids = var.create_rule ? alicloud_config_rule.rule.*.id : var.config_rule_ids
}