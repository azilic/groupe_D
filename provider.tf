# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}

  subscription_id = "a177ac1b-f0e1-45e5-a6c4-80266ff85e1d"
  tenant_id       = "76a2ae5a-9f00-4f6b-95ed-5d33d77c4d61"
}
