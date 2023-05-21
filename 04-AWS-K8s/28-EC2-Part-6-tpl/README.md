1. ssh into the instance
> terraform output -json | jq '."instances"."value"'
> ssh ubuntu@ip-address

2. touch a new deployment.yaml file
> touch deployment.yaml
> `vim deployment.yaml` and past `dep.yaml`
> cat /etc/rancher/k3s/k3s.yaml
> Save this locally ^^

$ export KUBECONFIG=./k3s-mtc_node-38118.yaml
$ kubectl get nodes

$ kubectl create -f nginx-dep.yaml 
$ kubectl scale deploy --replicas=0 nginx
$ kubectl get nodes
$ kubectl get pods
$ terraform output -json | jq '."kubeconfig"."value"'
$ terraform output -json | jq '."load_balancer_endpoint"."value"'

3. Apply the deployment to kubernetes
> kubectl apply -f deployment.yaml