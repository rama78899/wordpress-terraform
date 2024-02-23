#creating virtual private cloud VPC
resource "aws_vpc" "vpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"
  tags = {
    Name    = "VPC"
    Project = "Terraform"
  }
}
