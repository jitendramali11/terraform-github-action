
resource "azurerm_storage_account" "stg" {
  location = var.resource_group_location
  name = var.storage_account
  resource_group_name = var.resource_group_name_prefix
  account_kind = "StorageV2"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource azurerm_storage_container "myblobs" {
  name                  = "myblobs"
  storage_account_name  = azurerm_storage_account.stg.name
  container_access_type = "private"
}
