$ terraform show

$ terraform output

container_name = [
  "nodered-uvwx",
]
ip_address = [
  "172.17.0.3:32789",
]

$ terraform state list
docker_container.nodered_container[0]
docker_container.nodered_container2
docker_image.nodered_image
random_string.random[0]

$ terraform console
> docker_container.nodered_container2.name
"nodered-iiBt"