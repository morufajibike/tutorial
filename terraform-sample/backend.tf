# This is where you store the configuration that determines where the state file for your infrastructure is stored.
# Terraform stores information about your infrastructure in a state file. The state file keeps track of resources created by your configuration and maps them to real-world resources.

# By default, Terraform implicitly uses a backend called local to store state as a local file on disk. Every other backend stores state in a remote service of some kind, which allows multiple people to access it. Accessing state in a remote service generally requires some kind of access credentials, since state data contains extremely sensitive information.
# See [here](https://www.terraform.io/language/settings/backends) for more information.

terraform {
  backend "local" {
    path = "state/terraform.tfstate"
  }
}
