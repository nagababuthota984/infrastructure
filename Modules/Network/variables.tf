variable "vnetConfig" {
  type = object({
    name                = string
    address_space       = list(string)
    location            = string
    resource_group_name = string
  })
}

variable "subnetConfig" {
  type = object({
    name                 = string
    address_prefixes     = list(string)
    virtual_network_name = string
    resource_group_name  = string
  })
}

variable "publicIpConfig" {
  type = object({
    name                = string
    location            = string
    allocation_method   = string
    resource_group_name = string
  })
}

variable "networkInterfaceConfig" {
  type = object({
    name                = string
    location            = string
    resource_group_name = string
    ip_configuration = object({
      name                          = string
      subnet_id                     = string
      private_ip_address_allocation = string
      public_ip_address_id          = string
    })
  })
}
