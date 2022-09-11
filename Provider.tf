terraform {
  # Use a recent version of Terraform
  required_version = ">= 0.13"

  # Map providers to thier sources, required in Terraform 13+
  required_providers {
    # Azure Resource Manager 2.x
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.0"
    }
  }  
  backend "azurerm" {
    #resource_group_name      = "HelloSignApps"
    storage_account_name     = "storageaccounthelloaa26"
    container_name           = "tfstate"
    key                      = "terraform.tfstate"
    access_key = "zSJ697IP1GtXvMshqcCjsOQ31sGViNh9EiUGB6qoQSiNNuvyc5fuxN0C3Mpd0omSyi35tMn4q0gth0tiuItqhg=="
  }

}

provider "azurerm" {
  subscription_id = var.subscription_id
  client_id       = "6t515d7e-7f1b-99u7-op73-b569557466e6"
  client_secret   = var.client_secret
  tenant_id       = "3e13639c-b4ca-460c-8e48-e7ece6c66c7a"
   features {}
  // use_msi = true
  // subscription_id = "95f2f5024"
  //tenant_id       = "30f5ebbed8"
}