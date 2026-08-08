resource "kubernetes_deployment_v1" "nginx_dev" {
  metadata {
    name      = "nginx"
    namespace = kubernetes_namespace_v1.dev.metadata[0].name
  }

  spec {
    replicas = 1

    selector {
      match_labels = {
        app = "nginx"
      }
    }

    template {
      metadata {
        labels = {
          app = "nginx"
        }
      }

      spec {
        container {
          name  = "nginx"
          image = "nginx:latest"
        }
      }
    }
  }
}