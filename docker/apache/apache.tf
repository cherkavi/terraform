provider "docker" {
  host = "tcp://127.0.0.1:5555"
}

resource "docker_image" "apache" {
  name         = "bitnami/apache:latest"
  keep_locally = false
}

resource "docker_container" "apache" {
  image = docker_image.apache.latest
  name  = "apache"
  ports {
    internal = 8080
    external = 9090
  }
  volumes {
    host_path = "/home/projects/temp"
    container_path = "/app"
  }
}