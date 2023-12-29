resource "aws_security_group" "allow_22_8080" {
  name        = "allow_22_8080"
  description = "allow_22_8080"
  vpc_id      = aws_default_vpc.default.id

  ingress {
    description      = "ssh"
    from_port        = var.ssh
    to_port          = var.ssh
    protocol         = "tcp"
    cidr_blocks      =  ["0.0.0.0/0"]
  
  }

  ingress {
    description      = "jenkins"
    from_port        = var.jenkins
    to_port          = var.jenkins
    protocol         = "tcp"
    cidr_blocks      =  ["0.0.0.0/0"]
  }

  #   ingress {
  #   description      = "for connection"
  #   from_port        = var.connection
  #   to_port          = var.connection
  #   protocol         = "tcp"
  #   cidr_blocks      =  ["0.0.0.0/0"]
  # }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_22_8080"
  }
}