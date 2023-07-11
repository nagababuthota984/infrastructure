resource "azurerm_virtual_network" "terrashop-virtual-network"{
    name = var.vnetConfig.name
    address_space =  var.vnetConfig.address_space
    location = var.vnetConfig.location
    resource_group_name = var.vnetConfig.resource_group_name
}