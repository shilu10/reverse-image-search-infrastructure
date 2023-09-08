resource "azurerm_resource_group" "terraform_tg" {
  name     = "example-resources"
  location = var.location
}


resource "azurerm_storage_account" "terraform_sa" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = var.account_tier
  account_replication_type = var.replication_type

  tags = {
    environment = "reverse_image_search"
  }
}

resource "azurerm_storage_container" "terraform_container" {
  name                  = var.container_name
  storage_account_name  = azurerm_storage_account.example.name
  container_access_type = var.container_access_type
}