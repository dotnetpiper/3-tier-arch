# Create a Resource Group
resource "azurerm_resource_group" "appservice-rg" {
  name = "dotnetpiper-app-service-rg"
  location = var.rg_location
  tags = {
    environment = "dev" #var.environment
  }
}

#we will deploy a Windows Service Plan, in a Premium V2 tier (recommended for Production environments):

resource "azurerm_app_service_plan" "service-plan" {
  name = "dotnetpiper-service-plan"
  location = azurerm_resource_group.appservice-rg.location
  resource_group_name = azurerm_resource_group.appservice-rg.name
  kind = "Linux"
  reserved = true
  sku {
    tier = "PremiumV2"
    size = "P1v2"
  }
  tags = {
    environment = "dev"#var.environment
  }
}


locals {
 env_variables = {
   DOCKER_REGISTRY_SERVER_URL            = "https://dotnetpiperacr.azurecr.io"
   DOCKER_REGISTRY_SERVER_USERNAME       = "gfggf-7f1b-44c3-bc73-b569557466e6"
   DOCKER_REGISTRY_SERVER_PASSWORD       = "iuyyiiy9877~j5YRzs3OrtH-3YP5T"
   WEBSITES_ENABLE_APP_SERVICE_STORAGE = "false"

   /* Below these properties valus can be used
   //APPINSIGHTS_INSTRUMENTATIONKEY        =  azurerm_application_insights.ai.instrumentation_key
    # EVENT_CONTAINER                     = azurerm_storage_container.storage_container.name
    # RANDOM_KEY                          = "329129"//${random_id.server.hex}
    # NESTED__VARIABLE                    = ""
    # WEBSITE_RUN_FROM_PACKAGE            = 1
    //APPINSIGHTS_JAVASCRIPT_ENABLED = true    
    //APPLICATIONINSIGHTS_CONNECTION_STRING = azurerm_application_insights.ai.connection_string
    */
    
 }
}


resource "azurerm_application_insights" "ai" {
  name                = "app-service-ai-updated"
  location            = azurerm_resource_group.appservice-rg.location
  resource_group_name = azurerm_resource_group.appservice-rg.name
  application_type    = "web"

  # tags = {
  #   
  # }
}
#Create the App Service


resource "azurerm_app_service" "app-service" {
  name = "dotnetpiper-app-service"  
  location = azurerm_resource_group.appservice-rg.location
  resource_group_name = azurerm_resource_group.appservice-rg.name
  app_service_plan_id = azurerm_app_service_plan.service-plan.id
  site_config {
    # scm_type  = "VSTSRM"
    # always_on = "true"
    linux_fx_version  = "DOCKER|dotnetpiperacr.azurecr.io/ses_cloud_api:latest" #define the images to usecfor you application
    #linux_fx_version  = "COMPOSE|${base64encode("version: '3'\nservices:\n")}"
    acr_use_managed_identity_credentials = false
    health_check_path = "/health"
    
  }
#   identity {
#         type = "SystemAssigned"
#     }  
  app_settings = local.env_variables
  depends_on = [
    azurerm_app_service_plan.service-plan,
    azurerm_application_insights.ai
   ]

  # tags = {
  #   environment = "dev"  #var.environment
  # }
}

