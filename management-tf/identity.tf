resource "azurerm_user_assigned_identity" "main" {
  name                = local.identity_name
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
}