
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
        instance_type = "t3.small"       
        }
         mongodb = {
        name="mongodb"
        instance_type = "t3.small"       
        }
        catalogue = {
        name="catalogue"
        instance_type = "t3.small"       

         }
        redis = {
         name ="redis"
        instance_type = "t3.small"       
         }
        cart = {
        name="cart"
        instance_type = "t3.small"       
         }
        user = {
        name="user"
        instance_type = "t3.small"       
         }
        mysql = {
         name="mysql"
        instance_type = "t3.small"       

        }
        shipping = {
         name="shipping"
        instance_type = "t3.small"       

         }
         rabbitmq = {
          name="rabbitmq"
         instance_type = "t3.small"       

         }
        payment = {
        name="payment"
        instance_type = "t3.small"       

         }
        /* dispatch = {
        name="dispatch"
        instance_type = "t3.small"       

        } */


    }
}
