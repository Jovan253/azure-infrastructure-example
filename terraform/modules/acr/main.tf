resource "azurerm_container_registry" "main" {
  name                          = var.name
  resource_group_name           = var.resource_group_name
  location                      = var.location
  sku                           = var.sku
  admin_enabled                 = var.admin_enabled
  public_network_access_enabled = var.public_network_access_enabled

  dynamic "georeplications" {
    for_each = var.georeplicated_locations
    content {
      location                = georeplications.location
      zone_redundancy_enabled = georeplications.zone_redundancy_enabled
      tags                    = georeplications.tags
    }
  }
}