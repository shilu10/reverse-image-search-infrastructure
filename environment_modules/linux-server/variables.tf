variable "resource_group_location" {
  type        = string
  description = "Location of the resource group."
}

variable "username" {
  type        = string
  description = "The username for the local account that will be created on the new VM."
}

variable "hostname" {
  type        = string
  description = "The hostname for new VM."
}

variable "vm_type" {
  type        = string
  description = "type of vm to be used"
}

variable "public_key" {
  type = string
}

variable "network_nic_name"{
  type = string
}

variable "prefix" {
  type = string 
}

variable "virtual_network_name"{
  type = string 
}

variable "address_space" {
  type = list 
}

variable "subnet_name" {
  type = string 
}

variable "address_prefixes" {
  type = list 
}

variable "public_ip_name" {
  type = string 
}

variable "public_ip_allocation_method" {
  type = string 
}

variable "nsg_name" {
  type = string 
}

variable "vm_name" {
  type = string 
}

variable "custom_image_name"{
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "os_disk_name" {
  type = string
}