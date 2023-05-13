# Terraform console
$ terraform console

> lookup({dev = "image1", prod = "image2"}, "dev")
"image1"

> lookup({dev = "image1", prod = "image2"}, "prod")
"image2"

> lookup(var.image, "dev")
"nodered/node-red:latest"

> lookup(var.image, "prod")
"nodered/node-red:latest-minimal"


# Usage
$ terraform plan -var="env=prod" | grep name
$ terraform plan -var="env=dev" | grep name