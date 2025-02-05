# Configure the Microsoft Azure Provider
terraform {
  backend "azurerm" {
    resource_group_name  = "project"
    storage_account_name = "harshastorage9"
    container_name       = "container"
    key                  = "terraform.tfstate"


  }
}

provider "azurerm" {


  features {}
  subscription_id = "a92e07d8-3cdd-4fda-bb98-99b2dddb739c"
}


