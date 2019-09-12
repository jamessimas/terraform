provider "aws" {
  profile    = "default"
  region     = "us-west-1"
}

resource "aws_instance" "example" {
  ami           = "ami-00513ac407df1a26b"
  instance_type = "t2.micro"
}