terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.46.0"
    }
  }
}

provider "azurerm" {
  features {}
}

module "core_vnet" {
    source = "../"
    resource_name       = "${var.prefix}-${var.postfix}"
    location            = var.location
    resource_group_name = var.resource_group_name
    address_space       = var.address_space
    tags = var.tags
}

output "resource_name" {
  value = module.core_vnet.resource_name
}

output "resource_id" {
  value = module.core_vnet.resource_id
}

output "vnet_address_space" {
  value = module.core_vnet.vnet_address_space
}

output "resource_group_name" {
  value = module.core_vnet.resource_group_name
}
