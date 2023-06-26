resource "azurerm_resource_group" "rgname" {
  name = var.resource_group_name_prefix
  location = var.resource_group_location
}

module "stg" {
  source = "../module/Storage Account"
  storage_account = "demoterraformstr"
  resource_group_name_prefix = "terraform-rg"
  resource_group_location = "North Europe"
}

module "keyva" {
  source = "../module/KeyVault"
  keyvaultname =  "demoterraformkv"
  resource_group_name_prefix = "terraform-rg"
  resource_group_location = "North Europe"
}

module "example" {
  source = "../module/sql-sqlserver"
   resource_group_name_prefix= "terraform-rg"
  resource_group_location = "North Europe"
}
