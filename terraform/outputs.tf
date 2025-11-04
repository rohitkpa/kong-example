output "kube_config" {
  value     = data.azurerm_kubernetes_cluster.aks.kube_config_raw
  sensitive = true
}

output "resource_group_name" {
  value = data.azurerm_resource_group.rg.name
}

output "cluster_name" {
  value = data.azurerm_kubernetes_cluster.aks.name
}

output "acr_name" {
  value = data.azurerm_container_registry.acr.name
}

output "python_service_name" {
  value = kubernetes_deployment.python_service.metadata[0].name
}
