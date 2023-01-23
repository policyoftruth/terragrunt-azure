variable "resource_group_name" {
    type = string
    default = "rg-tf-bootstrap"
}

variable "resource_group_location" {
    type = string
    default = "East US"
}

variable "storage_account_name" {
    type = string
    default = "tfstategoeshere"
}

variable "storage_container_name" {
    type = string
    default = "tfstate"
}
