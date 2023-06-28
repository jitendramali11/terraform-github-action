resource "azurerm_mssql_server" "example" {
  name                         = "pihu-sqlserver"
  resource_group_name          = var.resource_group_name_prefix
  location                     = var.resource_group_location
  version                      = "12.0"
  administrator_login          = "4dm1n157r470r"
  administrator_login_password = "4-v3ry-53cr37-p455w0rd"
}

resource "azurerm_mssql_database" "test" {
  name           = "acctest-db-d"
  server_id      = azurerm_mssql_server.example.id

  tags = {
    foo = "bar"
  }
}