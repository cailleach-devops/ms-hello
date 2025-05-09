variable "role" {}

variable "region" {}

provider "aws" {
  region = var.region

  assume_role {
    role_arn = var.role
  }
}
