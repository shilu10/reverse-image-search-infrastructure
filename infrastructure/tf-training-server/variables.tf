variable "resource_group_location" {
  type        = string
  default     = "centralindia"
  description = "Location of the resource group."
}

variable "resource_group_name_prefix" {
  type        = string
  default     = "rg"
  description = "Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
}

variable "username" {
  type        = string
  description = "The username for the local account that will be created on the new VM."
  default     = "azureadmin"
}

variable "hostname" {
  type        = string
  description = "The hostname for new VM."
  default     = "tf_training_server"
}

variable "vm_type" {
  type        = string
  description = "type of vm to be used"
  default     = "Standard_B1s"
}

variable "public_key" {
  type = string
}
