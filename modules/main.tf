module "test"{
  source="./localmodule"
   instance_type = var.instance_type
  }

  output "ami"{
      value= module.test
  }

  variable "instance_type"{
  default= "t3-micro"
  }