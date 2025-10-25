# TO DO - Turn into module
resource "azurerm_virtual_network" "main" {
  name = local.vnet_name
  location = var.location
  resource_group_name = azurerm_resource_group.main.name
  address_space = var.vnet_address_space 
}

resource "azurerm_subnet" "main" {
  name = "${local.vnet_name}-app"
  resource_group_name = azurerm_resource_group.main.name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes = var.app_subnet_address_prefix
}

resource "azurerm_subnet" "integration" {
  name = "${local.vnet_name}-integration"
  resource_group_name = azurerm_resource_group.main.name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes = var.integration_subnet_address_prefix

  delegation {
    name = "delegation"
    service_delegation {
      name = "Microsoft.Web/serverFarms"
    }
  }
}