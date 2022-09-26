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
}