locals {
  deployment = {
    nodered = {
      image = var.image["nodered"][terraform.workspace]
    }
    influxdb = {
      image = var.image["influxdb"][terraform.workspace]
    }
  }
}


# resource "null_resource" "dockervol" {
#   provisioner "local-exec" {
#     command = "mkdir noderedvol/ || true && sudo chown -R 1000:1000 noderedvol/"
#     # command = "sleep 60 && mkdir noderedvol/ || true && sudo chown -R 1000:1000 noderedvol/"
#   }
# }

module "image" {
  source   = "./image"
  for_each = local.deployment
  image_in = each.value.image
}

# module "influxdb_image" {
#   source   = "./image"
#   image_in = var.image["influxdb"][terraform.workspace]
# }

resource "random_string" "random" {
  count   = local.container_count
  length  = 4
  special = false
  upper   = false
}

module "container" {
  source     = "./container"
  count      = local.container_count
  # depends_on = [null_resource.dockervol]
  # Uses "null_resource.dockervol.id" as a premature primative to depends on
  name_in = join("-", ["nodered", terraform.workspace, random_string.random[count.index].result])
  # name  = join("-", ["nodered", terraform.workspace, null_resource.dockervol.id, random_string.random[count.index].result])
  # image = var.image[terraform.workspace]
  image_in          = module.image["nodered"].image_out
  int_port_in       = var.int_port
  ext_port_in       = var.ext_port[terraform.workspace][count.index]
  container_path_in = "/data"
  # host_path_in      = "${path.cwd}/noderedvol"
}

