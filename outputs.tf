output "aks_cluster_name" {
  description = "Name of the AKS cluster"
  value       = azurerm_kubernetes_cluster.this.name
}

output "resource_group_name" {
  description = "Name of the Azure resource group holding the AKS cluster"
  value       = azurerm_resource_group.this.name
}

output "get_credentials_command" {
  description = "Run this to point kubectl at the AKS cluster directly"
  value       = "az aks get-credentials --resource-group ${azurerm_resource_group.this.name} --name ${azurerm_kubernetes_cluster.this.name}"
}

output "namespaces" {
  description = "Namespaces created in the cluster"
  value = [
    kubernetes_namespace_v1.dev.metadata[0].name,
    kubernetes_namespace_v1.staging.metadata[0].name,
    kubernetes_namespace_v1.prod.metadata[0].name,
  ]
}