variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "eastus"
}

variable "aks_cluster_name" {
  description = "AKS cluster name"
  type        = string
}

variable "acr_name" {
  description = "Azure Container Registry name"
  type        = string
  default     = "rohitlabacr"
}

variable "python_service_image" {
  description = "Container image for python-service (e.g., myregistry.azurecr.io/python-service:tag)"
  type        = string
}

variable "python_service_port" {
  description = "Container port exposed by python-service"
  type        = number
  default     = 5000
}

variable "python_service_replicas" {
  description = "Number of replicas for python-service Deployment"
  type        = number
  default     = 1
}

variable "python_service_type" {
  description = "Kubernetes Service type for python-service"
  type        = string
  default     = "ClusterIP"
}