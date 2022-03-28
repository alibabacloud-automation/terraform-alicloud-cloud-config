Terraform module which creates Cloud Config resources on Alibaba Cloud.

terraform-alicloud-cloud-config
=====================================================================

[English](https://github.com/terraform-alicloud-modules/terraform-alicloud-cloud-config/blob/main/README.md) | 简体中文

本 Module 用于自动化创建审计规则和合规包，包含：`Config`。

本 Module 支持创建以下资源:

* [alicloud_config_rule](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/config_rule)
* [alicloud_config_compliance_pack](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/config_compliance_pack)

## 用法

```hcl
module "example" {
  source                      = "terraform-alicloud-modules/cloud-config/alicloud"
  #alicloud_config_rule
  rule_name                   = "tf_test_config_rule"
  source_identifier           = "ecs-instances-in-vpc"
  source_owner                = "ALIYUN"
  resource_types_scope        = ["ACS::ECS::Instance"]
  rule_description            = "tf_test_config_rule"
  input_parameters            = {"vpcIds":"vpc-uf6gksw4ctjd******"}
  rule_risk_level             = 3
  config_rule_trigger_types   = "ConfigurationItemChangeNotification"
  maximum_execution_frequency = "One_Hour"
  exclude_resource_ids_scope  = "i-test"
  region_ids_scope            = "cn-shanghai"
  resource_group_ids_scope    = "rg-test"
  tag_key_scope               = "tag-key-test"
  tag_value_scope             = "tag-value-test"
  #alicloud_config_compliance_pack
  create_compliance_pack      = true
  compliance_pack_name        = "tf_test_config_compliance_pack"
  compliance_pack_description = "tf_test_config_compliance_pack"
  compliance_pack_risk_level  = 3
  config_rule_ids             = [{ config_rule_id : "cr-d52cad75605700f03ae3"},{config_rule_id : "cr-d544ad75605700c3a263"}]
}
```

## 示例

* [DBFS 完整示例](https://github.com/terraform-alicloud-modules/terraform-alicloud-cloud-config/tree/main/examples/complete)

## 注意事项

* 本 Module 使用的 AccessKey 和 SecretKey 可以直接从 `profile` 和 `shared_credentials_file`
  中获取。如果未设置，可通过下载安装 [aliyun-cli](https://github.com/aliyun/aliyun-cli#installation) 后进行配置.

## 要求

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | > = 0.13 |
| <a name="requirement_alicloud"></a> [alicloud](#requirement\_alicloud) | > = 1.146.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_alicloud"></a> [alicloud](#provider\_alicloud) | > = 1.146.0 |

## 提交问题

如果在使用该 Terraform Module
的过程中有任何问题，可以直接创建一个 [Provider Issue](https://github.com/aliyun/terraform-provider-alicloud/issues/new)，我们将根据问题描述提供解决方案。

**注意:** 不建议在该 Module 仓库中直接提交 Issue。

## 作者

Created and maintained by Alibaba Cloud Terraform Team(terraform@alibabacloud.com).

## 许可

MIT Licensed. See LICENSE for full details.

## 参考

* [Terraform-Provider-Alicloud Github](https://github.com/aliyun/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs)
