
variable "security_group"{
    default = [ "sg-0ae5a9e3d447a06e1" ]
}

variable "zone_id" {
    default = "Z0893432XKXNV5K4OIQB"
}
variable "components" {
    default = {
        frontend = {
        name = "frontend"
        instance_type = "t3.micro"
        }
        mongodb = {
        name="mongodb"
        instance_type = "t3.micro"
        }
        catalogue = {
        name="catalogue"
        instance_type = "t3.micro"

         }
        reddis = {
         name ="reddis"
        instance_type = "t3.micro"
         }
        cart = {
        name="cart"
        instance_type = "t3.micro"
         }
        user = {
        name="user"
        instance_type = "t3.micro"
         }
        mysql = {
         name="mysql"
        instance_type = "t3.micro"

        }
        shippment = {
         name="shippment"
        instance_type = "t3.micro"

         }
        payment = {
        name="payment"
        instance_type = "t3.micro"

         }
        dispatch = {
        name="dispatch"
        instance_type = "t3.micro"

        }


    }
}
