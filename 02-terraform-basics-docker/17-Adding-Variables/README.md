# Dont' ask for variable input
$ terraform plan -input=false

# Pass variable as cmd arg
$ terraform plan -var ext_port=1880

# Environment variables
> https://developer.hashicorp.com/terraform/language/values/variables
$ export TF_VAR_ext_port=1880
$ terraform plan