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
