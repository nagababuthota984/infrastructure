resource "azurerm_resource_group" "rg" {
  location = var.resource-group-location
  name = var.resource-group-name
}
