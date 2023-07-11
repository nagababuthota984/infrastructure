resource "azurerm_network_interface" "terrashop_network_interface" {
  name                = var.networkInterfaceConfig.name
  location            = var.networkInterfaceConfig.location
  resource_group_name = var.networkInterfaceConfig.resource_group_name
  ip_configuration {
    name                          = var.networkInterfaceConfig.ip_configuration.name
    subnet_id                     = var.networkInterfaceConfig.ip_configuration.subnet_id
    private_ip_address_allocation = var.networkInterfaceConfig.ip_configuration.private_ip_address_allocation
    public_ip_address_id          = var.networkInterfaceConfig.ip_configuration.public_ip_address_id
  }
}
