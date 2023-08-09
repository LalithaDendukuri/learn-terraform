terraform {
  backend "s3" {
    bucket = "mytest-b74"
    key    = "stateFolder/terraform.tfstate"
    region = "us-east-1"
  }
}

variable "test"{

  default= "hello"
}

output "test" {
  value = var.test
}