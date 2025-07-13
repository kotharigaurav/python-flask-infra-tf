terraform {
  backend "s3" {
    bucket = "gaurav-terraform-state-bucket"
    key    = "terraform-state/python-flask-infra-tf/terraform.tfstate"
    region = "us-east-2"
  }
}