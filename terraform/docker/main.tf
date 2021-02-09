provider "aws" {
  access_key  = "AKIARKB35ZMGTWDMM3RQ"
  secret_key  = "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"
  region      = "ap-south-1"
}

variable "name" {
    description="Name of the web box at apply"
}

resource "aws_instance" "doc_try" {
  ami = "ami-073c8c0760395aab8"
  instance_type = "t2.micro"
  key_name = "aaru_terraform"
 
 
  tags = {
      Name = "${var.name}"
    }
}