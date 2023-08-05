//Palin variable
variable "fruit_name"{
    default = "apple"
}

output "fruit_name"{
    //value = var.fruit_name.value

     value = var.fruit_name
}
// list variable
variable "fruitList"{
    default = [ "apple" ,"orange"]

}
output "fruitList_first"{
       value = var.fruitList[0]
}

output "fruitList_second"{
       value = var.fruitList[1]
}
// Map variable plain
variable "fruitMap"{
    default = {
     apple=100
     banana=200  }
}
output "fruitMap_apple"{
       value = var.fruitMap["apple"]
}

output "fruitMap_banana"{
       value = var.fruitMap["banana"]
}

// Map variable map of map
variable "fruitMap_Maps"{
    default = {
    apple ={
     stock=100
     price =1
    }
    banana ={
     stock=200
     price=2}
}
}
