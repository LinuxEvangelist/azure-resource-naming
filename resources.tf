locals {
  max_character_length = {
    "azurerm_resource_group"    = "64" #
    "azurerm_storage_account"   = "24" #
    "azurerm_storage_container" = "63" #
    "azurerm_virtual_network" = "80" #
    "azurerm_subnet" = "80" #
  }
}