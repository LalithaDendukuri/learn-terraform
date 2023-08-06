data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "Centos-*"
  owners           = ["973714476881"]


}
output "ami"{
    value= data.aws_ami.ami
}
resource "aws_instance" "instance" {
  ami           = data.aws_ami.ami.id
  instance_type = var.instance_type
  vpc_security_group_ids = [ "sg-0ae5a9e3d447a06e1" ]

}

variable "instance_type" {}