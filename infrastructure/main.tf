resource "scaleway_container_namespace" "portfolio" {
  project_id = var.project_id
  name        = "portfolio"
  description = "Containers running for the portfolio website."
}

resource "scaleway_container" "ping" {
  name = "ping"
  description = "Container to play ping-pong with."
  namespace_id = scaleway_container_namespace.portfolio.id
  registry_image = "ghcr.io/noahlehmann/portfolio/ping:latest"
  port = 8080
  cpu_limit = 100
  memory_limit = 128
  min_scale = 0
  max_scale = 3
  timeout = 15
  max_concurrency = 50
  privacy = "public"
  protocol = "http1"
  deploy = false
  http_option = "redirected"
  environment_variables = {
    "foo" = "var"
  }
  secret_environment_variables = {
    "key" = "secret"
  }
}

variable "project_id" {}
