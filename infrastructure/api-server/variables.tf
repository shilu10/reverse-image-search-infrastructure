variable "resource_group_location" {
  type        = string
  default     = "centralindia"
  description = "Location of the resource group."
}

variable "username" {
  type        = string
  description = "The username for the local account that will be created on the new VM."
  default     = "azureadmin"
}

variable "hostname" {
	type = string 
	description = "The hostname for new VM."
	default = "apiserver"
}

variable "vm_type" {
	type = string
	description = "type of vm to be used"
	default = "Standard_B1s"
}

variable "public_key" {
  type = string
}

variable "network_nic_name"{
  type = string
  default = "api_server"
}

variable "prefix" {
  type = string 
  default = "api-server"
}

variable "virtual_network_name"{
  type = string 
  default = "ris_api_server"
}

variable "address_space" {
  type = list 
  default = ["10.1.0.0/16"]
}

variable "subnet_name" {
  type = string 
  default = "ris_api_server"
}

variable "address_prefixes" {
  type = list 
  default = ["10.1.1.0/24"] 
}

variable "public_ip_name" {
  type = string 
  default = "rmi_api_server"
}

variable "public_ip_allocation_method" {
  type = string 
  default = "Dynamic"
}

variable "nsg_name" {
  type = string 
  default = "ris_api_server"
}

variable "vm_name" {
  type = string 
  default = "risapiserver"
}

variable "custom_image_name" {
  type = string
  default = "Reverse_image_search_api_server"
}

variable "resource_group_name" {
  type = string
  default = "reverse_image_search"
}