terraform {
  required_providers {
    minikube = {
      source = "scott-the-programmer/minikube"
      version = "0.3.5"
    }
  }
}

provider "minikube" {
  kubernetes_version = "v1.26.3"
}

resource "minikube_cluster" "docker" {
  driver       = "docker"
  cluster_name = "terraform-minikube-docker"
  addons = [
    "dashboard",
    "default-storageclass",
    "storage-provisioner"
  ]
}
