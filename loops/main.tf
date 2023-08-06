variable "components"{
    default= {
    frontend ={
            name="frontend_sg"
        }
    mongodb ={
            name="mongodb_sg"
        }

    }
}
resource "aws_instance" "instance" {
 // count = length(var.components)
 for_each = var.components
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"

  tags = {
    //Name = var.components[count.index]
    Name = lookup(var.components,each.value["name"],null)
  }
}