# This is where you specify all the providers/plugins for your terrafom code.
# A provider is a terraform plugin that allows users to manage an external API. Provider plugins like the AWS or Azure provider act as an a transition layer that allows terraform to communicate with many different cloud providers, database, and services.
# See [here](https://www.terraform.io/language/providers) for more information.

provider "aws" {
  region = var.region
}