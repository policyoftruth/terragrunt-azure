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
