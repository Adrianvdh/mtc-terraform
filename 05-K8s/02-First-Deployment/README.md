Update k3s file ip from output

$ export KUBECONFIG=./mtc-64430.yaml
$ kubectl get nodes

$ kubectl create -f main-spec.yml
$ kubectl scale deploy --replicas=0 nginx
$ kubectl get nodes
$ kubectl get pods
$ terraform output -json | jq '."kubeconfig"."value"'
$ terraform output -json | jq '."load_balancer_endpoint"."value"'