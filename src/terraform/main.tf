terraform {
  required_providers {
    azurerm = {
    }
  }

}

provider "azurerm" {
features {}
skip_provider_registration = "true"
}

resource "azurerm_resource_group" "rg" {
    name = var.resource_group_name
    location = var.resource_group_location
    tags = {
      "Cost" = "Digital Platform"
    }

}