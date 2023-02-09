terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.40.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-tf-statefiles"
    storage_account_name = "tfstate101training"
    container_name       = "tfstatefiles-container"
    key                  = "terraform.tfstate"
  }
  required_version = ">= 0.12.26"
}

provider "azurerm" {
  features {}
}
