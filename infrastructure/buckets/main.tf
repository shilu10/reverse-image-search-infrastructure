data "azurerm_resource_group" "rg" {
  name = "reverse_image_search"
}


resource "azurerm_storage_account" "terraform_sa" {
  name                     = var.storage_account_name
  resource_group_name      = data.azurerm_resource_group.rg.name
  location                 = data.azurerm_resource_group.rg.location
  account_tier             = var.account_tier
  account_replication_type = var.replication_type

  tags = {
    environment = "reverse_image_search"
  }
}

resource "azurerm_storage_container" "terraform_container_training_data" {
  name                  = "reverse_image_search_training_data_container"
  storage_account_name  = azurerm_storage_account.example.name
  container_access_type = var.container_access_type
}

resource "azurerm_storage_container" "terraform_container_extractec_features" {
  name                  = "reverse_image_search_extracted_feature_container"
  storage_account_name  = azurerm_storage_account.example.name
  container_access_type = var.container_access_type
}

