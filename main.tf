resource "time_static" "current" {}

resource "azurerm_log_analytics_workspace" "log" {
  name                       = var.workspace_name
  location                   = data.azurerm_resource_group.rg.location
  resource_group_name        = data.azurerm_resource_group.rg.name
  sku                        = var.sku
  retention_in_days          = var.workspace_retention
  internet_ingestion_enabled = var.internet_ingestion
  internet_query_enabled     = var.internet_query
  daily_quota_gb             = var.daily_quota_gb
  cmk_for_query_forced       = var.cmk_for_query_forced

  tags = merge(
    {
      CreateDate = "${time_static.current.year}/${time_static.current.month}/${time_static.current.day}"
    },
    var.tags
  )
}
