variable "environment" {
  type        = string
  description = "The environment name"
}

variable "location" {
  type        = string
  description = "Location of our resources"
}

variable "tenant_id" {
  type        = string
  description = "The Tenant ID of our environment"
}

variable "subscription_id" {
  type        = string
  description = "The Subscription ID of our environment"
}

variable "client_id" {
  type        = string
  description = "The Client ID of SP"
}

variable "client_secret" {
  type        = string
  description = "the client secret of the SP"
  sensitive   = true
}

variable "acr_sku" {
  type        = string
  description = "The ACR SKU"
}

variable "acr_admin_enabled" {
  type        = bool
  description = "Is admin user enabled for ACR"
  default     = false
}

variable "acr_public_network_access_enabled" {
  type        = bool
  description = "Is public network access enabled for the ACR"
  default     = false
}
