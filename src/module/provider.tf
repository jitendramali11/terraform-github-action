terraform {
  required_providers {
    azurerm= {

    }
  }
}

provider "azurerm" {
  features { }
  skip_provider_registration = "true"
}
