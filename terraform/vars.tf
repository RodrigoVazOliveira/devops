variable "amis" {
    type = map
    default = {
        "us-east-1" = "ami-08c40ec9ead489470"
        "us-east-2" = "ami-097a2df4ac947655f"
    }
}

variable "cdir_remoto_acesso" {
    type = list
    default = [
        "186.210.226.35/32",
        "186.210.226.32/32"
    ]
}

variable "key_ssh_file" {
    type = string
    default = "aws"
}