provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "anu_RG"
  location = "Australia East"
}

resource "azurerm_storage_account" "example" {
  name                     = "AnuStorageAccount"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "prod"
  }
}
