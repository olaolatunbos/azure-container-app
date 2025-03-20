terraform {
  backend "azurerm" {
    resource_group_name  = "terraform"
    storage_account_name = "reactapptfstate"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.50.0"
    }
  }
}
