terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.96.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "cloud-shell-storage-centralindia"
    storage_account_name = "csg100320032d97e280"
    container_name = "remotetfcon"
    key = "azremotestate"
  }
}

provider "azurerm" {
  features {
  }
}

resource "azurerm_resource_group" "demorg" {
  name = var.rgname
  location = var.location
}