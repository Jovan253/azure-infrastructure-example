resource "azurerm_service_plan" "main" {
  name = local.asp_name
  location = var.location
  os_type = var.asp_os_type
  resource_group_name = azurerm_resource_group.main.name
  sku_name = var.asp_sku

  # TODO - Add Scaling Rules
}

resource "azurerm_linux_web_app" "main" {
  name = local.as_name
  location = var.location
  resource_group_name = azurerm_resource_group.main.name
  service_plan_id = azurerm_service_plan.main.id

  virtual_network_subnet_id = azurerm_subnet.integration.id
  public_network_access_enabled = true

  app_settings = {
    "WEBSITE_PULL_IMAGE_OVER_VNET" = "true",
    "DOCKER_ENABLE_CI" = "true"
  }

  identity {
    type = "UserAssigned"
    identity_ids = [data.azurerm_user_assigned_identity.main.id]
  }
  # https_only = true
  site_config {
    always_on = true
    ftps_state = "FtpsOnly"
    health_check_path = "/health"
    health_check_eviction_time_in_min = 5
    http2_enabled = true
    minimum_tls_version = "1.3"
    vnet_route_all_enabled = true
    container_registry_managed_identity_client_id = data.azurerm_user_assigned_identity.main.client_id
    container_registry_use_managed_identity = true
    application_stack {
      docker_image_name = "test-image:latest"
      docker_registry_url = "https://${data.azurerm_container_registry.main.login_server}"
    }
  }
}