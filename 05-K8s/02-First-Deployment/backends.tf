terraform {
  cloud {
    organization = "Adrianvdh"

    workspaces {
      name = "mtc-k8s"
    }
  }
}