#################
# Rule
#################
variable "resource_types_scope" {
  description = "Resource types to be evaluated."
  type        = list(string)
  default     = ["ACS::ECS::Instance"]
}

variable "rule_description" {
  description = "The description of the Config Rule."
  type        = string
  default     = "tf_test_config_rule"
}

variable "input_parameters" {
  description = "Threshold value for managed rule triggering."
  type        = map(string)
  default     = { "vpcIds" : "vpc-uf6gksw4ctjd******" }
}

variable "rule_risk_level" {
  description = "(Required) The risk level of the Config Rule. Valid values: 1: Critical ,2: Warning , 3: Info."
  type        = number
  default     = 3
}

variable "config_rule_trigger_types" {
  description = "(Required) The trigger type of the rule. Valid values: ConfigurationItemChangeNotification: The rule is triggered upon configuration changes. ScheduledNotification: The rule is triggered as scheduled."
  type        = string
  default     = "ConfigurationItemChangeNotification"
}

variable "maximum_execution_frequency" {
  description = "The frequency of the compliance evaluations, it is required if the ConfigRuleTriggerTypes value is ScheduledNotification. Valid values: One_Hour, Three_Hours, Six_Hours, Twelve_Hours, TwentyFour_Hours."
  type        = string
  default     = "One_Hour"
}

variable "exclude_resource_ids_scope" {
  description = "The rule monitors excluded resource IDs, multiple of which are separated by commas, only applies to rules created based on managed rules, custom rule this field is empty."
  type        = string
  default     = "i-test"
}

variable "region_ids_scope" {
  description = "The rule monitors region IDs, separated by commas, only applies to rules created based on managed rules."
  type        = string
  default     = "cn-shanghai"
}

variable "resource_group_ids_scope" {
  description = "The rule monitors resource group IDs, separated by commas, only applies to rules created based on managed rules."
  type        = string
  default     = "rg-test"
}

variable "tag_key_scope" {
  description = "The rule monitors the tag key, only applies to rules created based on managed rules."
  type        = string
  default     = "tag-key-test"
}

variable "tag_value_scope" {
  description = "The rule monitors the tag value, use with the tag_key_scope options. only applies to rules created based on managed rules."
  type        = string
  default     = "tag-value-test"
}

#################
# Compliance Pack
#################
variable "compliance_pack_name" {
  description = "(Required) The Compliance Package Name."
  type        = string
  default     = "tf_test_config_compliance_pack"
}

variable "compliance_pack_description" {
  description = "(Required) The Description of compliance pack."
  type        = string
  default     = "tf_test_config_compliance_pack"
}

variable "compliance_pack_risk_level" {
  description = "(Required) The Risk Level. Valid values: 1: critical, 2: warning, 3: info."
  type        = number
  default     = 3
}
