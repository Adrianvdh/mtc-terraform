$ terraform graph | dot -Tpdf > graph-plan.pdf
$ terraform graph -type=plan-destroy | dot -Tpdf > graph-plan-destroy.pdf