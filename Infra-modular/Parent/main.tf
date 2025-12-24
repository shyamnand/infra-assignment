module "resource_group" {
  source                  = "../resource-group"
  resource_group_name     = var.resource_group_name
  resource_group_location = var.resource_group_location
}
module "virtual_network" {
  source               = "../virtual_network"
  virtual_network_name = var.virtual_network_name
  location             = var.location
  resource_group_name  = module.resource_group.resource_group_name
  address_space        = var.address_space
}
module "subnet_module" {
  source               = "../subnet_module"
  subnet_name          = var.subnet_name
  resource_group_name  = module.resource_group.resource_group_name
  virtual_network_name = module.virtual_network.vnet_name
  address_prefixes     = var.address_prefixes
}
module "network_interface" {
  source              = "../network-interface"
  nic_name            = var.nic_name
  location            = var.location
  resource_group_name = module.resource_group.resource_group_name
  subnet_id           = module.subnet_module.subnet_id
  public_ip_id        = module.public_ip.public_ip_id
}
module "public_ip" {
  source              = "../public-ip"
  public_ip_name      = var.public_ip_name
  location            = var.location
  resource_group_name = module.resource_group.resource_group_name
}
module "virtual_machine" {
  source = "../virtual-machine"

  vm_name             = var.vm_name
  location            = var.location
  resource_group_name = module.resource_group.resource_group_name
  nic_id              = module.network_interface.nic_id
 #size                = var.vm_size
  admin_username = var.admin_username
  admin_password = var.admin_password
}
