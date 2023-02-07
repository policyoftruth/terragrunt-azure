# Generated by Terragrunt. Sig: nIlQXj57tbuaRZEa
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.40.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-tf-pihole"
    storage_account_name = "tfstatevoid"
    container_name       = "tfstate"
    key                  = "./terraform.tfstate"
  }
  required_version = ">= 0.12.26"
}

provider "azurerm" {
  features {}
}
