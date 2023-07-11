module "providers" {
  source = "./Providers"
}

module "resource-groups" {
  source                  = "./Modules/Management"
  resource-group-location = var.terrashopDefaultLocation
  resource-group-name     = var.terrashopDefaultRgName
}

module "network" {
  source = "./Modules/Network"
  vnetConfig = {
    name                = var.terrashopDefaultVnetName
    resource_group_name = var.terrashopDefaultRgName
    address_space       = ["10.0.0.0/16"]
    location            = var.terrashopDefaultLocation
    resource_group_name = var.terrashopDefaultRgName
  }
  subnetConfig = {
    name                 = var.terrashopDefaultSubnetName
    resource_group_name  = var.terrashopDefaultRgName
    address_prefixes     = ["10.0.0.0/24"]
    virtual_network_name = var.terrashopDefaultVnetName
  }
  publicIpConfig = {
    name                = var.terrashopDefaultPublicIpName
    resource_group_name = var.terrashopDefaultRgName
    location            = var.terrashopDefaultLocation
    allocation_method   = "Dynamic"
  }
  networkInterfaceConfig = {
    name                = var.terrashopDefaultNetworkInterfaceName
    location            = var.terrashopDefaultLocation
    resource_group_name = var.terrashopDefaultRgName
    ip_configuration = {
      name                          = var.terrashopDefaultIpConfigName
      subnet_id                     = module.network.subnet_id
      private_ip_address_allocation = "Dynamic"
      public_ip_address_id          = module.network.public_ip_address_id
  } }
}
