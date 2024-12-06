resource "azurerm_resource_group" "example" {
  name = "my-resource-group"
}

resource "azurerm_kubernetes_cluster" "example" {
  name = "my-cluster"
  resource_group_name = azurerm_resource_group.example.name
}

resource "azurerm_container_registry" "example" {
  name = "my-registry"
  resource_group_name = azurerm_resource_group.example.name
}

resource "azurerm_container_image" "example" {
  name = "my-function-app"
  resource_group_name = azurerm_resource_group.example.name
  registry_name = azurerm_container_registry.example.name
  image = "my-function-app:latest"
}

resource "azurerm_kubernetes_deployment" "example" {
  name = "my-function-app"
  resource_group_name = azurerm_resource_group.example.name
  kubernetes_cluster_id = azurerm_kubernetes_cluster.example.id
  replicas = 1

  template {
    metadata {
      labels = {
        app = "my-function-app"
      }
    }

    spec {
      containers {
        name = "my-function-app"
        image = azurerm_container_image.example.image
      }
    }
  }
}
