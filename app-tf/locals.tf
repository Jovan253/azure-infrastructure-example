locals {
  mgmt_resource_group_name = "${var.environment}-${var.location}-rg"
  acr_name            = "${var.environment}${var.location}acr"
  identity_name       = "${var.environment}-${var.location}-identity"

  resource_group_name = "app-${var.environment}-${var.location}-rg"
  vnet_name = "app-${var.environment}-${var.location}-vnet"

  asp_name = "app-${var.environment}-${var.location}-asp"
  as_name = "app-${var.environment}-${var.location}-as"
}