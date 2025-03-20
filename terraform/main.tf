provider "azurerm" {
  features {}
  subscription_id = "f3ddceac-9a55-4e9f-ba66-d3e0149cee66"
}

resource "azurerm_resource_group" "rg" {
  name     = "group2"
  location = "ukwest"
}


resource "azurerm_container_registry" "acr" {
  name                = "oladipuporegitstry"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  sku                 = "Standard"
  admin_enabled       = true

}


resource "azurerm_log_analytics_workspace" "analytics_workspace" {
  name                = "workspacegroup2bb99"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  sku                 = "PerGB2018"
  retention_in_days   = 30
}

resource "azurerm_container_app_environment" "container_app_environment" {
  name                       = "managedEnvironment-group2-b8b5"
  location                   = azurerm_resource_group.rg.location
  resource_group_name        = azurerm_resource_group.rg.name
  log_analytics_workspace_id = azurerm_log_analytics_workspace.analytics_workspace.id
}

resource "azurerm_container_app" "container-app" {
  name                         = "react-app"
  container_app_environment_id = azurerm_container_app_environment.container_app_environment.id
  resource_group_name          = azurerm_resource_group.rg.name
  revision_mode                = "Single"

  template {
    container {
      name   = "react-app"
      image  = "oladipuporegitstry.azurecr.io/react-app:latest"
      cpu    = 0.5
      memory = "1Gi"
    }
  }
}



#CREATE MODULES
#VARIABLES
