#!/bin/bash
sudo hostnamectl set-hostname ${nodename} &&
curl -sfL https://get.k3s.io | sh -s - server \
--datastore-endpoint="mysql://${dbuser}:${dbpass}@tcp(${db_endpoint})/${dbname}" \
--write-kubeconfig-mode 644 \
--tls-san=$(curl http://169.254.169.254/latest/meta-data/public-ipv4) \
--token="th1s1sat0k3n!"

# Added the EC2 instance's public address to the certificate within our K3S installation
# so that we can access the kubernetes resources on its public ip address instead of
# its interal ip addresses

# provisioned in: compute/main.tf