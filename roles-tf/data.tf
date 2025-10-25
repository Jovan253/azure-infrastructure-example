# TO DO - Fetch by tag not by name - better

data "azurerm_container_registry" "main" {
  name                = local.acr_name
  resource_group_name = local.resource_group_name
}

data "azurerm_user_assigned_identity" "main" {
  name                = local.identity_name
  resource_group_name = local.resource_group_name
}