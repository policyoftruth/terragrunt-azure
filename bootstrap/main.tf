terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.40.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "bootstrap-tfstate-resourcegroup" {
  name     = var.resource_group_name
  location = var.resource_group_location
}

resource "azurerm_storage_account" "bootstrap-tfstate-storageaccount" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.bootstrap-tfstate-resourcegroup.name
  location                 = azurerm_resource_group.bootstrap-tfstate-resourcegroup.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "production"
  }
}

resource "azurerm_storage_container" "bootstrap-tfstate-container" {
  name                  = var.storage_container_name
  storage_account_name  = azurerm_storage_account.bootstrap-tfstate-storageaccount.name
  container_access_type = "private"
}
