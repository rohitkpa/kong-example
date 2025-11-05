resource "kubernetes_deployment" "python_service" {
  metadata {
    name      = "python-service"
    labels = {
      app = "python-service"
    }
  }

  spec {
    replicas = var.python_service_replicas

    selector {
      match_labels = {
        app = "python-service"
      }
    }

    template {
      metadata {
        labels = {
          app = "python-service"
        }
      }

      spec {
        container {
          name  = "python-service"
          image = var.python_service_image

          port {
            container_port = var.python_service_port
          }
        }
      }
    }
  }
}

data "kubernetes_service" "python_service" {
  metadata {
    name = "python-service"
    namespace = "default"
  }
}
