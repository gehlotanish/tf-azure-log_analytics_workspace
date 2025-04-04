# template-terraform
Template repository for all terraform module repositories

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.5 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 4.25.0 |
| <a name="requirement_time"></a> [time](#requirement\_time) | ~> 0.13.0 |
## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 4.25.0 |
| <a name="provider_time"></a> [time](#provider\_time) | 0.13.0 |
## Modules

No modules.
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cmk_for_query_forced"></a> [cmk\_for\_query\_forced](#input\_cmk\_for\_query\_forced) | Specifies whether customer-managed key (CMK) is required for query operations. | `bool` | `false` | no |
| <a name="input_daily_quota_gb"></a> [daily\_quota\_gb](#input\_daily\_quota\_gb) | The daily quota for ingestion in GB. | `number` | `-1` | no |
| <a name="input_internet_ingestion"></a> [internet\_ingestion](#input\_internet\_ingestion) | Specifies whether ingestion over the public internet is enabled. | `bool` | `false` | no |
| <a name="input_internet_query"></a> [internet\_query](#input\_internet\_query) | Specifies whether queries over the public internet are enabled. | `bool` | `false` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group. | `string` | n/a | yes |
| <a name="input_sku"></a> [sku](#input\_sku) | The SKU of the Log Analytics workspace. | `string` | `"PerGB2018"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to apply to the Log Analytics workspace. | `map(string)` | n/a | yes |
| <a name="input_workspace_name"></a> [workspace\_name](#input\_workspace\_name) | The name of the Log Analytics workspace. | `string` | n/a | yes |
| <a name="input_workspace_retention"></a> [workspace\_retention](#input\_workspace\_retention) | Retention period in days for logs. | `number` | n/a | yes |  
## Outputs

| Name | Description |
|------|-------------|
| <a name="output_workspace_id"></a> [workspace\_id](#output\_workspace\_id) | The ID of the Log Analytics workspace. |
<!-- END_TF_DOCS -->

## Usage

```yaml

module "log_analytics" {
  source =  <>

  workspace_name      = var.workspace_name
  workspace_retention = var.workspace_retention
  sku                 = var.sku
  tags                = var.tags
}

```
