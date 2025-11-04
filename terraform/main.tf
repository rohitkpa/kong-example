terraform {
  required_version = ">= 1.0"
}

data "azurerm_resource_group" "rg" {
  name = var.resource_group_name
}

data "azurerm_kubernetes_cluster" "aks" {
  name                = var.aks_cluster_name
  resource_group_name = data.azurerm_resource_group.rg.name
}