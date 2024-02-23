# Creating Public Route Table for Demo VPC
resource "aws_route_table" "pub-rt" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = var.anywhere_cidr
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "Public Route Table"
  }
}

# Associating 1st Public Subnet with Public Route Table
resource "aws_route_table_association" "rt1" {
  subnet_id      = aws_subnet.subnet-1.id
  route_table_id = aws_route_table.pub-rt.id
}
