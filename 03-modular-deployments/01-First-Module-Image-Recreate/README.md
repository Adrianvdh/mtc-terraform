# Graph
$ terraform graph | dot -Tpdf > graph-plan.pdf
$ terraform graph -type=plan-destroy | dot -Tpdf > graph-plan-destroy.pdf
$ terraform graph -draw-cycles | dot -Tpdf > graph-plan.cycle.pdf

# prevent_destroy
$terraform destroy -target=module.container[0].docker_container.nodered_container