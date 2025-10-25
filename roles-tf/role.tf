# Assign the User Assigned Identity the AcrPull role on the ACR
resource "azurerm_role_assignment" "main" {
  scope                = data.azurerm_container_registry.main.id
  role_definition_name = "AcrPull"
  principal_id         = data.azurerm_user_assigned_identity.main.principal_id
}