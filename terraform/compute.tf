data "aws_ami" "amazon_linux" {
  most_recent = true
  owners = ["amazon"]
  filter {
    name = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}
resource "aws_instance" "bastion_instance" {
  ami = data.aws_ami.amazon_linux.id
  instance_type = var.instance_type
  subnet_id = aws_subnet.public_subnet.id
  key_name="sruthiai"
  vpc_security_group_ids = [aws_security_group.bastion_sg.id]
  tags = {
    name = "bastion_instance"
  }
}
resource "aws_instance" "private_instance" {
  ami = data.aws_ami.amazon_linux.id
  instance_type = var.instance_type
  subnet_id = aws_subnet.private_subnet.id
  key_name="sruthiai"
  vpc_security_group_ids = [aws_security_group.private_sg.id]
  tags = {
    name = "private_instance"
  }
}