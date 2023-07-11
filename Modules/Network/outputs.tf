output "public_ip_address_id" {
    value = azurerm_public_ip.terrashop_public_ip.id
}

output "subnet_id"{
    value = azurerm_subnet.terrashop_subnet.id
}