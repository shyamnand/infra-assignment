variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}
variable "resource_group_location" {
  description = "The location of the resource group."
  type        = string
}
variable "location" {
  description = "The location where the virtual network will be created."
  type        = string
}
variable "address_space" {}
variable "virtual_network_name" {
  description = "The name of the virtual network."
  type        = string
}
variable "subnet_name" {
  description = "The name of the subnet."
  type        = string
}
variable "address_prefixes" {}
variable "nic_name" {}
variable "public_ip_name" {
  description = "The name of the public IP address."
  type        = string
}



variable "vm_name" {}
variable "admin_username" {}
variable "admin_password" {}
#variable "vm_size" {}
