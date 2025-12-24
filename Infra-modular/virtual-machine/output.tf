output "vm_id" {
  description = "ID of the Virtual Machine"
  value       = azurerm_linux_virtual_machine.this.id
}

output "vm_name" {
  description = "Name of the Virtual Machine"
  value       = azurerm_linux_virtual_machine.this.name
}
