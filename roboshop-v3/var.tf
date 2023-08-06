
variable "security_group"{
    default = [ "sg-0ae5a9e3d447a06e1" ]
}

variable "zone_id" {
    default = "Z0893432XKXNV5K4OIQB"
}
variable "components" {
    default = {
        frontend = { name="frontend" }
        mongodb = { name="mongodb" }
        catalogue = { name="catalogue" }
        reddis = { name ="reddis" }
        cart = { name="cart" }
        user = { name="user" }
        mysql = { name="mysql" }
        shippment = { name="shippment" }
        payment = { name="payment" }
        dispatch = { name="dispatch" }


    }
}
