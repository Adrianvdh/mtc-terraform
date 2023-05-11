Terminal 1
`terraform apply --auto-approve -lock=false`

Terminal 2
`terraform apply --auto-approve`


terraform import docker_container.nodered_container2  $(docker inspect --format="{{ .ID }}" nodered-iiBt)