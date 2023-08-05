variable "components" {
 default = ["frontend","mongodb"]
}

variable "components" {
 default = {
    frontend {
     instance_type="t3.small"
    }
 mongodb {
     instance_type="t3.small"
    }

 }
}