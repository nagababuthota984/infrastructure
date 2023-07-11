resource "azurerm_subnet" "terrashop_subnet"{
    name = var.subnetConfig.name
    resource_group_name = var.subnetConfig.resource_group_name
    virtual_network_name = var.subnetConfig.virtual_network_name
    address_prefixes = var.subnetConfig.address_prefixes
}