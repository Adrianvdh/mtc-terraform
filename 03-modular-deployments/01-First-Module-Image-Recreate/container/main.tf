resource "docker_container" "nodered_container" {
  name       = var.name_in
  image      = var.image_in
  ports {
    internal = var.int_port_in
    external = var.ext_port_in
  }
  volumes {
    container_path = var.container_path_in
    volume_name = docker_volume.container_volume.name
    # volume_name = "${var.name_in}-volume"
    # host_path      = var.host_path_in
  }
}

resource "docker_volume" "container_volume" {
  # name = "${docker_container.nodered_container.name}-volume"
  name = "${var.name_in}-volume"
  lifecycle {
    # prevent_destroy = true
  }
}