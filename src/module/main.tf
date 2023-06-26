resource "azurerm_resource_group" "rgname" {
  name = var.resource_group_name_prefix
  location = var.resource_group_location
}

module "azurerm_storage_account" {
  source = "./Modules/Storage Account"
  storage_account = "demoterraformstr"
  resource_group_name_prefix = "terraform-rg"
  resource_group_location = "North Europe"
}

module "azurerm_key_vault" {
  source = "./Modules/KeyVault"
  keyvaultname =  "demoterraformkv"
  resource_group_name_prefix = "terraform-rg"
  resource_group_location = "North Europe"
}
