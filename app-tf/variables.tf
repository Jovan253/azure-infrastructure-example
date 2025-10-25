variable "environment" {
  type        = string
  description = "The environment name"
}

variable "location" {
  type        = string
  description = "Location of our resources"
}

variable "tenant_id" {
  type = string
  description = "The Subscription ID of our environment"
}

variable "subscription_id" {
  type = string
  description = "The Subscription ID of our environment"
}

variable "client_id" {
  type = string
  description = "The Client ID of SP"
}

variable "client_secret" {
  type = string
  description = "the client secret of the SP"
  sensitive = true
}

variable "vnet_address_space" {
  type = list(string)
  description = "Address space of the VNet"  
}

variable "app_subnet_address_prefix" {
  type = list(string)
  description = "Address prefix of the subnet"  
}

variable "integration_subnet_address_prefix" {
  type = list(string)
  description = "Address prefix of the subnet"  
}

variable "asp_os_type" {
  type = string
  description = "The OS type of the ASP"
}

variable "asp_sku" {
  type = string
  description = "The SKU of the ASP"
}
