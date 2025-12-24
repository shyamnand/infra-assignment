resource "azurerm_linux_virtual_machine" "this" {
  name                = var.vm_name
  location            = var.location
  resource_group_name = var.resource_group_name
  size                = "Standard_D2s_v3"

  network_interface_ids = [
    var.nic_id
  ]

  admin_username = var.admin_username
  admin_password = var.admin_password

  disable_password_authentication = false   #IMPORTANT

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}
