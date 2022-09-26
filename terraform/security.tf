resource "aws_security_group" "acesso_ssh" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"

  ingress {
    description      = "Acesso ao SSH"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["186.210.226.35/32"]
  }

  tags = {
    Name = "ssh"
  }
}

resource "aws_security_group" "acesso_ssh-us-east-2" {
    provider    = aws.us-east-2
    name        = "allow_tls"
    description = "Allow TLS inbound traffic"

    ingress {
        description      = "Acesso ao SSH"
        from_port        = 22
        to_port          = 22
        protocol         = "tcp"
        cidr_blocks      = ["186.210.226.35/32"]
    }

    tags = {
        Name = "ssh"
    }
}
