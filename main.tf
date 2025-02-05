module "vm" {

for_each = var.tool
  source = "./vm-module"

  component = each.key
  username = var.username
  password = var.password
  port     = each.value["port"]
}

variable "tool" {
  default = {

    vault  = {

      port = 8200
    }
  }
}
variable "username" {}
variable "password" {}