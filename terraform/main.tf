provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "dev" {
    count = 3
    ami = "ami-08c40ec9ead489470" # AMD64
    instance_type = "t2.micro"
    key_name = "aws"
    tags = { 
        Name = "dev${count.index}"
    }
    vpc_security_group_ids = ["${aws_security_group.acesso_ssh.id}"]
}

resource "aws_instance" "dev4" {
    ami = "ami-08c40ec9ead489470" # AMD64
    instance_type = "t2.micro"
    key_name = "aws"
    tags = { 
        Name = "dev4"
    }
    vpc_security_group_ids = ["${aws_security_group.acesso_ssh.id}"]
    depends_on = [aws_s3_bucket.dev-4]
}

resource "aws_instance" "dev5" {
    ami = "ami-08c40ec9ead489470" # AMD64
    instance_type = "t2.micro"
    key_name = "aws"
    tags = { 
        Name = "dev5"
    }
    vpc_security_group_ids = ["${aws_security_group.acesso_ssh.id}"]
}

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

# S3
resource "aws_s3_bucket" "dev-4" {
  bucket = "rodrigovaz-dev-alura"
  acl    = "private"

  tags = {
    Name = "rmerceslabs-dev4"
  }
}

