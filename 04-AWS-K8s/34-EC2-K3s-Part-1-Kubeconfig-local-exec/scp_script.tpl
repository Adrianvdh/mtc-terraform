sleep 60 && 
scp -i /Users/adrian/.ssh/mtc-terraform_rsa \
-o StrictHostKeyChecking=no \
-o UserKnownHostsFile=/dev/null \
-q ubuntu@${nodeip}:/etc/rancher/k3s/k3s.yaml ${k3s_path}/k3s-${nodename}.yaml && 

