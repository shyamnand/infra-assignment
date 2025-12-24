output "public_ip_id" {
  description = "ID of the Public IP"
  value       = azurerm_public_ip.this.id
}

output "public_ip_address" {
  description = "Public IP address"
  value       = azurerm_public_ip.this.ip_address
}
