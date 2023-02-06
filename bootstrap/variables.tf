variable "resource_group_name" {
    type = string
    default = "rg-tf-statefiles"
}

variable "resource_group_location" {
    type = string
    default = "East US"
}

variable "storage_account_name" {
    type = string
    default = "terraformstate101"
}

variable "storage_container_name" {
    type = string
    default = "tfstatefiles-container"
}
