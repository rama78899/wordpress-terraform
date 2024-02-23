#Defining VPC Variable
variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

#Defining 1st subnet variable
variable "subnet1_cidr" {
  default = "10.0.1.0/24"
}

#Defining Anywhere CIDR block Varibale 
variable "anywhere_cidr" {
  default = "0.0.0.0/0"
}
