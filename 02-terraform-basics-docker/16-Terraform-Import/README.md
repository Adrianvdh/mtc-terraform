# Terraform import
Terminal 1
`terraform apply --auto-approve -lock=false`

Terminal 2
`terraform apply --auto-approve`

Then
`terraform import docker_container.nodered_container2  $(docker inspect --format="{{ .ID }}" nodered-iiBt)`


# Terraform Refresh and State rm
$ terraform destroy --auto-approve
$ terraform apply --auto-approve

$ terraform state list

~ Change docker > count = 1 ~

$ terraform refresh -target docker_container.nodered_container[0]
$ terraform refresh
$ terraform output
$ terraform state rm random_string.random[1]