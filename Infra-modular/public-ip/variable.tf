variable "public_ip_name" {
  description = "The name of the public IP address."
  type        = string
}
variable "location" {
  description = "The location where the public IP address will be created."
  type        = string
}
variable "resource_group_name" {
  description = "The name of the resource group where the public IP address will be created."
  type        = string
}