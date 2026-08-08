output "namespaces" {
  description = "Namespaces created in the cluster"
  value = [
    kubernetes_namespace_v1.dev.metadata[0].name,
    kubernetes_namespace_v1.staging.metadata[0].name,
    kubernetes_namespace_v1.prod.metadata[0].name,
  ]
}