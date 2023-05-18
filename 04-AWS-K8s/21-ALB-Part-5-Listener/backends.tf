terraform {
  cloud {
    organization = "Adrianvdh"

    workspaces {
      name = "mtc-dev"
    }
  }
}