
resource "azurerm_key_vault" "keyva" {
  location = var.resource_group_location
  name = var.keyvaultname
  tenant_id = "76a2ae5a-9f00-4f6b-95ed-5d33d77c4d61"
  resource_group_name = var.resource_group_name_prefix
  sku_name = "standard"
}