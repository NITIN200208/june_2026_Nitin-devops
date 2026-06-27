data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-*"]
  }
}

resource "aws_instance" "server" {
  ami                    = data.aws_ami.amazon_linux.id

  instance_type         = var.instance_type

  subnet_id              = aws_subnet.public1.id

  vpc_security_group_ids = [
    aws_security_group.ansible_sg.id
  ]

  iam_instance_profile   = aws_iam_instance_profile.ec2_profile.name

  key_name               = "linux-first"

  tags = {
    Name = "server"
  }
}