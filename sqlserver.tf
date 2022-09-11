resource "azurerm_sql_server" "example" {
  name                         = "mssqlserver"
  resource_group_name          = azurerm_resource_group.pipersql.name
  location                     = azurerm_resource_group.pipersql.location
  version                      = "12.0"
  administrator_login          = "interviewadmin"
  administrator_login_password = "Interview@2022"

  tags = {
    environment = "production"
  }
}

resource "azurerm_resource_group" "pipersql" {
  name     = "interviewsql-rg"
  location = "eastus"
}


