variable "nic_name" {}
variable "location" {}
variable "resource_group_name" {}
variable "subnet_id" {
  description = "Subnet ID where NIC will be attached"
}
variable "public_ip_id" {}