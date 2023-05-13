terraform {
  required_providers {
    # Docker alias that states that any reasource that starts with "docker" is going to utialize
    # this provider
    docker = {
      source = "kreuzwerker/docker"
    }
  }
}

# Inistianate/configure the docker provider
provider "docker" {}