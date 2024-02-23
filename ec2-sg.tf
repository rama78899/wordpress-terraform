# Creating Security Group for EC2 Instance
resource "aws_security_group" "ec2-SG" {
  vpc_id = aws_vpc.vpc.id

  # Inbound Rules
  # HTTP access from anywhere
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = [var.anywhere_cidr]
  }

  # SSH access from anywhere
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.anywhere_cidr]
  }

  # Outbound Rules
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.anywhere_cidr]
  }

  tags = {
    Name = "Instance SG"
  }
}
