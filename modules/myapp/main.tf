variable "location" {}

variable "name" {}

resource "random_string" "random" {
  length = 8
  special = false
  upper = false
  numeric = false
  keepers = {
    myseed = "seventeen"
  }
}

resource "azurerm_resource_group" "resource_group" {
  name     = "${var.name}-${random_string.random.result}"
  location = var.location
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
