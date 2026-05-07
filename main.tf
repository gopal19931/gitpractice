resource "azurerm_resource_group" "rg"{
  name = "demorg"
  location = "eastus"
}
resource "azurerm_resource_group" "rg1" {
  name = "demorg1"
  location = "westus"
  
}

resource "azurerm_virtual_netowork" "vnet"{
    name="demovnet"
    resource_group_name=azurerm_resource_group.rg.name
    location=azurerm_resource_group.rg.location
    address_space=["10.0.0.0/16"]
}
resource "azurerm_storage_account" "strg"{
  name = "demostrg"
  resource_group_name = azurerm_resource_group.rg.name
  location = azurerm_resource_group.rg.location
}
