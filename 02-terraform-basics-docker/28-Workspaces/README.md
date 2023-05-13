# Workspaces

~They are just different terraform state files stored in seperate folders~

$ terraform workspace new dev
$ terraform workspace new prod
$ terraform workspace show
$ terraform workspace list
$ terraform workspace select dev

$ terraform plan | grep external
          + external = 1880
          + external = 1881