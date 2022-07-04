terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "= 2.91.0"
    }
  }
  required_version = "~> 1.2.2"
}

provider "azurerm" {
  features {}
  skip_provider_registration = true
}
locals {
  max_byte_length = 8
  prefix          = substr(var.name_prefix, -1, 1) == "-" ? substr(var.name_prefix, 0, length(var.name_prefix) - 1) : format("%s-", var.name_prefix)

  prefix_length                 = length(local.prefix)
  resource_max_character_length = lookup(local.max_character_length, var.resource_type, 0)

  random_max_byte_length = floor((local.resource_max_character_length - length(local.prefix)) / 2)
  random_byte_length     = min(local.max_byte_length, local.random_max_byte_length)
}
resource "random_id" "this" {
  prefix      = local.prefix
  byte_length = local.random_byte_length
  keepers     = var.keepers
}


