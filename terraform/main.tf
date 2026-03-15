resource "azurerm_resource_group" "devops_rg" {
  name     = "devops-project-rg"
  location = "westeurope"
}

resource "azurerm_kubernetes_cluster" "devops_aks" {
  name                = "devops-aks-cluster"
  location            = azurerm_resource_group.devops_rg.location
  resource_group_name = azurerm_resource_group.devops_rg.name
  dns_prefix          = "devopsaks"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "standard_b2s_v2"
  }

  identity {
    type = "SystemAssigned"
  }
}