resource "aws_instance" "frontend" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"

  tags = {
    Name = "frontend"
  }
}

resource "aws_instance" "mongodb" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"

  tags = {
    Name = "mongodb"
  }
}
resource "aws_instance" "catalogue"{
 ami            ="ami-03265a0778a880afb"
 instance_type  ="t3.micro"

  tags   = {
    Name ="catalogue"
  }

}