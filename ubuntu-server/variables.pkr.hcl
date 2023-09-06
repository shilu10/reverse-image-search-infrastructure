variable "az_region" {
  description = "The Azure region where the Resource Group exists."
  type        = string
}

variable "az_resource_group" {
  description = "An existing Azure Resource Group where the build will take place and images will be stored."
  type        = string
}

variable "az_subscription_id" {
  description = "Your Azure Subscription ID (required for the shared_image_gallery_destination block)."
  type        = string
  sensitive   = true
}

variable 'az_client_id' {
  type = string 
}

variable 'az_client_secret' {
  type = string 
}

variable 'az_tenant_id' {
  type = string
}

variable 'location' {
  type = string 
}

variable 'packer_image_name' { 
  type = string 
}

variable 'vm_size' {
   type = string 
   default = "Standard_Bs_1"
}