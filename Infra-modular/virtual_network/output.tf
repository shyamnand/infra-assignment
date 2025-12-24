output "vnet_id" {
  description = "ID of the Virtual Network"
  value       = azurerm_virtual_network.virtual_network.id
}

output "vnet_name" {
  description = "Name of the Virtual Network"
  value       = azurerm_virtual_network.virtual_network.name
}
