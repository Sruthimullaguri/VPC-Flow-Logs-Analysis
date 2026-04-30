resource "aws_security_group" "bastion_sg" {
  name = "bastion_sg"
  vpc_id = aws_vpc.main_vpc.id
  ingress {
    description = "Allow SSH access"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "Allow ICMP inside VPC"
    from_port = -1
    to_port = -1
    protocol = "icmp"
    cidr_blocks = [var.vpc_cidr]
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
resource "aws_security_group" "private_sg" {
  name = "private_sg"
  vpc_id = aws_vpc.main_vpc.id
  ingress {
    description = "Allow SSH from bastion instance"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    security_groups = [aws_security_group.bastion_sg.id]
  }
  ingress {
    description = "Allow ICMP inside VPC"
    from_port = -1
    to_port = -1
    protocol = "icmp"
    cidr_blocks = [var.vpc_cidr]
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}