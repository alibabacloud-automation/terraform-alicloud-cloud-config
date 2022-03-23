output "rule_id" {
  value = concat(alicloud_config_rule.rule.*.id, [""])[0]
}

output "rule_status" {
  value = concat(alicloud_config_rule.rule.*.status, [""])[0]
}

output "compliance_pack_id" {
  value = concat(alicloud_config_compliance_pack.compliance_pack.*.id, [""])[0]
}

output "compliance_pack_status" {
  value = concat(alicloud_config_compliance_pack.compliance_pack.*.status, [""])[0]
}
