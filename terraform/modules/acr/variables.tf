variable "name" {
  type        = string
  description = "The name of the ACR"
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group deploying the ACR"
}

variable "location" {
  type        = string
  description = "Location of the ACR"
}

variable "sku" {
  type        = string
  description = "The ACR SKU"
}

variable "admin_enabled" {
  type        = bool
  description = "Is admin user enabled for ACR"
  default     = false
}

variable "public_network_access_enabled" {
  type        = bool
  description = "Is public network access enabled for the ACR"
  default     = false
}

variable "georeplicated_locations" {
  type = map(object({
    location                = string
    zone_redundancy_enabled = optional(bool)
    tags                    = optional(string)
  }))
  description = "Locations where the ACR is GeoReplicated"
  default     = {}
}