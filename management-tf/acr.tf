module "acr" {
  source = "./modules/acr"

  name                          = local.acr_name
  resource_group_name           = azurerm_resource_group.main.name
  location                      = var.location
  sku                           = var.acr_sku
  admin_enabled                 = var.acr_admin_enabled
  public_network_access_enabled = var.acr_public_network_access_enabled
}
