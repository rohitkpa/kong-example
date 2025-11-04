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

resource "kubernetes_service" "python_service" {
  metadata {
    name      = "python-service"
    labels = {
      app = "python-service"
    }
  }

  spec {
    selector = {
      app = "python-service"
    }

    type = var.python_service_type

    port {
      port        = var.python_service_port
      target_port = var.python_service_port
      protocol    = "TCP"
    }
  }
}
