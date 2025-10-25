locals {
  resource_group_name = "${var.environment}-${var.location}-rg"
  acr_name            = "${var.environment}${var.location}acr"
  identity_name       = "${var.environment}-${var.location}-identity"
}