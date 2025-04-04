variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "workspace_name" {
  description = "The name of the Log Analytics workspace."
  type        = string
}

variable "workspace_retention" {
  description = "Retention period in days for logs."
  type        = number
}

variable "sku" {
  description = "The SKU of the Log Analytics workspace."
  type        = string
  default     = "PerGB2018"
}

variable "internet_ingestion" {
  description = "Specifies whether ingestion over the public internet is enabled."
  type        = bool
  default     = false
}

variable "internet_query" {
  description = "Specifies whether queries over the public internet are enabled."
  type        = bool
  default     = false
}

variable "daily_quota_gb" {
  description = "The daily quota for ingestion in GB."
  type        = number
  default     = -1
}

variable "cmk_for_query_forced" {
  description = "Specifies whether customer-managed key (CMK) is required for query operations."
  type        = bool
  default     = false
}

variable "tags" {
  description = "Tags to apply to the Log Analytics workspace."
  type        = map(string)
}


