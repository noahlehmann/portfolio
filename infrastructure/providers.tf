terraform {
  required_providers {
    scaleway = {
      source = "scaleway/scaleway"
      version = ">= 2.52.0,< 3.0.0"
    }
  }
  required_version = ">= 1.9.0, < 2.0.0"
}

provider "scaleway" {
  zone   = "fr-par-1"
  region = "fr-par"
  access_key = var.scw_access_key
  secret_key = var.scw_secret_key
}

variable "scw_access_key" {}
variable "scw_secret_key" {}
