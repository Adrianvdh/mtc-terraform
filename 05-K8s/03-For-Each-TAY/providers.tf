terraform {
  required_providers {
    kubernetes = {
      source = "kubernetes"
    }
  }
}

provider "kubernetes" {
  config_path = "mtc-64430.yaml"
}