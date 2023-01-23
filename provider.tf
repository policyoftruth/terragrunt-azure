terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.40.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-tf-bootstrap"
    storage_account_name = "tfstategoeshere"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  # Configuration options
}
