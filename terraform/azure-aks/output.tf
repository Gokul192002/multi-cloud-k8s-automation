output "aks_cluster_name" {
  description = "AKS Cluster name"
  value       = azurerm_kubernetes_cluster.aks_cluster.name
}

