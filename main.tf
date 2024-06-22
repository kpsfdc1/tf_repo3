provider "aws" {
	region = "ap-south-1"
}

terraform {
	backend "s3" {
		bucket = "cis-new-bucket1"
		key = "terraform.tfstate"
		region = "ap-south-1"
	}
}


resource "aws_instance" "ints_name" {
	ami = "ami-0e1d06225679bc1c5"
	instance_type ="t2.micro"
	tags = {
		Name = "tf_inst"
	}
}
