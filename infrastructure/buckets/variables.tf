variable "location" {
	type = string
	description = "location, where the resource group, will be created"
}

variable "storage_account_name" {
	type = string
	description = "name for the storage account"
	default = "reverse_image_search_storage_account"
}

variable "account_tier" {
	type = string 
}

variable "replication_type" {
	type = string
}

variable "container_name" {
	type = string
}

variable "container_access_type" {
	type = string
}