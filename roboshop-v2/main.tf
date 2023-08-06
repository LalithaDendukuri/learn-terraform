variable "ami"{
    default= "ami-03265a0778a880afb"
}
variable "security_group"{
    default = [ "sg-0ae5a9e3d447a06e1" ]
}
variable "instance_type" {
    default = "t3.micro"
}
variable "zone_id" {
    default = "Z0893432XKXNV5K4OIQB"
}
variable "components" {
    default = {
        frontend = { name="frontend_dev" }
        mongodb = { name="mongodb_dev" }

    }
}
resource "aws_instance" "instance" {
  for_each = var.components
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids =var.security_group
  tags = {
    Name = lookup(var.components,each.key,null)
  }
}
/*
resource "aws_route53_record" "frontend" {
  zone_id = var.zone_id
  name    = "frontend-dev.dljrobo.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}
 */

