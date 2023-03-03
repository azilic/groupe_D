resource "random_string" "resource_code" {
  length  = 5
  special = false
  upper   = false
}

data "azurerm_resource_group" "groupeD" {
  name     = "groupeD"
}

resource "azurerm_storage_account" "StoragegroupeD" {
  name                     = "storagegroupd"
  resource_group_name      = data.azurerm_resource_group.groupeD.name
  location                 = data.azurerm_resource_group.groupeD.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  
  tags = {
    environment = "staging"
  }
}

resource "azurerm_storage_container" "tfstate" {
  name                  = "tfstate"
  storage_account_name  = azurerm_storage_account.StoragegroupeD.name
  container_access_type = "private"
}