resource "aws_instance" "frontend" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0ae5a9e3d447a06e1" ]
  tags = {
    Name = "frontend"
  }
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