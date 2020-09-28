locals {
    common_tags = {
        owner = "DevOps Team"
        service = "backend"
    }
}

resource "aws_instance" "app-dev" {
    ami = "ami-0a07be880014c7b8e"
    instance_type = "t2.micro"
    tags = local.common_tags
}

resource "aws_instance" "db-dev" {
    ami = "ami-0a07be880014c7b8e"
    instance_type = "t2.small"
    tags = local.common_tags
}

resource "aws_ebs_volume" "db-ebs" {
    availability_zone = "us-west-2a"
    size = 8     
    tags = local.common_tags
}