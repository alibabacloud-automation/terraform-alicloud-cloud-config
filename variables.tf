#################
# Rule
#################
variable "create_rule" {
  description = "Controls if rule should be created"
  type        = bool
  default     = false
}

variable "rule_name" {
  description = "(Required, ForceNew) The name of the Config Rule."
  type        = string
  default     = ""
}

variable "source_identifier" {
  description = "(Required, ForceNew) The identifier of the rule. For a managed rule, the value is the identifier of the managed rule. For a custom rule, the value is the ARN of the custom rule. "
  type        = string
  default     = ""
}

variable "source_owner" {
  description = "(Required, ForceNew) Specifies whether you or Alibaba Cloud owns and manages the rule. Valid values: CUSTOM_FC: The rule is a custom rule and you own the rule. ALIYUN: The rule is a managed rule and Alibaba Cloud owns the rule."
  type        = string
  default     = ""
}

variable "resource_types_scope" {
  description = "Resource types to be evaluated."
  type        = list(string)
  default     = null
}

variable "rule_description" {
  description = "The description of the Config Rule."
  type        = string
  default     = ""
}

variable "input_parameters" {
  description = "Threshold value for managed rule triggering."
  type        = map(string)
  default     = null
}

variable "rule_risk_level" {
  description = "(Required) The risk level of the Config Rule. Valid values: 1: Critical ,2: Warning , 3: Info."
  type        = number
  default     = null
}

variable "config_rule_trigger_types" {
  description = "(Required) The trigger type of the rule. Valid values: ConfigurationItemChangeNotification: The rule is triggered upon configuration changes. ScheduledNotification: The rule is triggered as scheduled."
  type        = string
  default     = "ConfigurationItemChangeNotification"

  validation {
    condition     = contains(["ConfigurationItemChangeNotification", "ScheduledNotification"], var.config_rule_trigger_types)
    error_message = "Allowed values are ConfigurationItemChangeNotification or ScheduledNotification."
  }
}

variable "maximum_execution_frequency" {
  description = "The frequency of the compliance evaluations, it is required if the ConfigRuleTriggerTypes value is ScheduledNotification. Valid values: One_Hour, Three_Hours, Six_Hours, Twelve_Hours, TwentyFour_Hours."
  type        = string
  default     = "One_Hour"

  validation {
    condition     = contains(["One_Hour", "Three_Hours", "Six_Hours", "Twelve_Hours", "TwentyFour_Hours"], var.maximum_execution_frequency)
    error_message = "Allowed values are One_Hour, Three_Hours, Six_Hours, Twelve_Hours or TwentyFour_Hours."
  }
}

variable "exclude_resource_ids_scope" {
  description = "The rule monitors excluded resource IDs, multiple of which are separated by commas, only applies to rules created based on managed rules, custom rule this field is empty."
  type        = string
  default     = ""
}

variable "region_ids_scope" {
  description = "The rule monitors region IDs, separated by commas, only applies to rules created based on managed rules."
  type        = string
  default     = ""
}

variable "resource_group_ids_scope" {
  description = "The rule monitors resource group IDs, separated by commas, only applies to rules created based on managed rules."
  type        = string
  default     = ""
}

variable "tag_key_scope" {
  description = "The rule monitors the tag key, only applies to rules created based on managed rules."
  type        = string
  default     = ""
}

variable "tag_value_scope" {
  description = "The rule monitors the tag value, use with the tag_key_scope options. only applies to rules created based on managed rules."
  type        = string
  default     = ""
}


#################
# Compliance Pack
#################
variable "create_compliance_pack" {
  description = "Controls if compliance pack should be created"
  type        = bool
  default     = false
}

variable "compliance_pack_name" {
  description = "(Required) The Compliance Package Name."
  type        = string
  default     = ""
}

variable "compliance_pack_description" {
  description = "(Required) The Description of compliance pack."
  type        = string
  default     = ""
}

variable "compliance_pack_risk_level" {
  description = "(Required) The Risk Level. Valid values: 1: critical, 2: warning, 3: info."
  type        = number
  default     = null
}

variable "config_rule_ids" {
  description = "A list of Config Rule IDs"
  type        = list(map(string))
  default     = []
}
