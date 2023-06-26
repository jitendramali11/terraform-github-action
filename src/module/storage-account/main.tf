
resource "azurerm_storage_account" "stg" {
  location = var.resource_group_location
  name = var.storage_account
  resource_group_name = var.resource_group_name_prefix
  account_tier = "Standard"
  account_replication_type="GRS"
}

