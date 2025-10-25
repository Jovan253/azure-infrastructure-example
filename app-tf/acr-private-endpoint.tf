resource "azurerm_private_endpoint" "acr" {
  name = "myacrpe"
  location = var.location
  resource_group_name = azurerm_resource_group.main.name
  subnet_id = azurerm_subnet.main.id

  private_service_connection {
    name = "acr-pe"
    private_connection_resource_id = data.azurerm_container_registry.main.id
    subresource_names = [ "registry" ]
    is_manual_connection = false
  }

  private_dns_zone_group {
    name = "acr-dns"
    private_dns_zone_ids = [ azurerm_private_dns_zone.acr.id ]
  }
}

resource "azurerm_private_dns_zone" "acr" {
  name = "privatelink.azurecr.io"
  resource_group_name = azurerm_resource_group.main.name
}

resource "azurerm_private_dns_zone_virtual_network_link" "acr" {
  name = "acr-vnet-link"
  resource_group_name = azurerm_resource_group.main.name
  private_dns_zone_name = azurerm_private_dns_zone.acr.name
  virtual_network_id = azurerm_virtual_network.main.id
}