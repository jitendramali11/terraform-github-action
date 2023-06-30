resource "azurerm_resource_group" "rgname" {
  name = var.resource_group_name
  location = var.resource_group_location
}

module "azurerm_storage_account" {
  source = "./storage-account"
  storage_account = "pihustr"
  resource_group_name_prefix = azurerm_resource_group.rgname.name
  resource_group_location = "North Europe"
}

module "azurerm_key_vault" {
  source = "./keyvault"
  keyvaultname =  "kvpihu"
  resource_group_name_prefix = azurerm_resource_group.rgname.name
  resource_group_location = "North Europe"
}

module "azurerm_mssql_server" {
  source = "./sql-server"
   resource_group_name_prefix= azurerm_resource_group.rgname.name
  resource_group_location = "North Europe"
}
