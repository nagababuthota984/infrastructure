resource "azurerm_public_ip" "terrashop_public_ip"{
   name = var.publicIpConfig.name
   location = var.publicIpConfig.location
   allocation_method = var.publicIpConfig.allocation_method
   resource_group_name = var.publicIpConfig.resource_group_name
}