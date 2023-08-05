resource "aws_instance" "frontend" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0ae5a9e3d447a06e1" ]
  tags = {
    Name = "frontend"
  }
}
resource "aws_route53_record" "frontend" {
  zone_id = "Z0893432XKXNV5K4OIQB"
  name    = "frontend-dev.dljrobo.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "mongodb" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
 vpc_security_group_ids = [ "sg-0ae5a9e3d447a06e1" ]
  tags = {
    Name = "mongodb"
  }
}
resource "aws_instance" "catalogue"{
 ami            ="ami-03265a0778a880afb"
 instance_type  ="t3.micro"
 vpc_security_group_ids = [ "sg-0ae5a9e3d447a06e1" ]
  tags   = {
    Name ="catalogue"
  }

}