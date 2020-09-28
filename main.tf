terraform {
        backend "s3" {
        bucket = "rajesh-terraform-backend"
        key    = "terraform.tfstate"
        region = "us-west-2"
        }
}