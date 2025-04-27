provider "azurerm" {
  features {}
}

resource "azurerm_kubernetes_cluster" "aks_cluster" {
  name                = "aks-cluster"
  location            = "East US"
  resource_group_name = azurerm_resource_group.aks_rg.name
  dns_prefix          = "aks-cluster"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_DS2_v2"
  }

  identity {
    type = "SystemAssigned"
  }
}

resource "azurerm_resource_group" "aks_rg" {
  name     = "aks-resource-group"
  location = "East US"
}
