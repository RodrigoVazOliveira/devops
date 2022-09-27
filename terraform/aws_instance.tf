resource "aws_instance" "dev" {
    count = 3
    ami = var.amis["us-east-1"]
    instance_type = "t2.micro"
    key_name = var.key_ssh_file
    tags = { 
        Name = "dev${count.index}"
    }
    vpc_security_group_ids = ["${aws_security_group.acesso_ssh.id}"]
}

#resource "aws_instance" "dev4" {
#    ami = var.amis["us-east-1"]
#    instance_type = "t2.micro"
#    key_name = var.key_ssh_file
#    tags = { 
#        Name = "dev4"
#    }
#    vpc_security_group_ids = ["${aws_security_group.acesso_ssh.id}"]
#    depends_on = [aws_s3_bucket.dev-4]
#}

resource "aws_instance" "dev5" {
    ami = var.amis["us-east-1"]
    instance_type = "t2.micro"
    key_name = var.key_ssh_file
    tags = { 
        Name = "dev5"
    }
    vpc_security_group_ids = ["${aws_security_group.acesso_ssh.id}"]
}

resource "aws_instance" "dev6" {
    provider = aws.us-east-2
    ami = var.amis["us-east-2"]
    instance_type = "t2.micro"
    key_name = var.key_ssh_file
    tags = { 
        Name = "dev5"
    }
    vpc_security_group_ids = ["${aws_security_group.acesso_ssh-us-east-2.id}"]
    depends_on = [aws_dynamodb_table.dynamodb-hml]
}