provider "aws" {
  profile    = "default"
  region     = var.region
}

resource "aws_eip" "ip" {
    vpc = true
    instance = aws_instance.example.id
}

#resource "aws_s3_bucket" "example" {
#  bucket = "terraform-getting-started-guide-848192394"
#  acl    = "private"
#}

resource "aws_instance" "example" {
  ami           = "ami-00513ac407df1a26b"
  instance_type = "t2.micro"
  #depends_on = [aws_s3_bucket.example]
  provisioner "local-exec" {
    command = "echo ${aws_instance.example.public_ip} > ip_address.txt"
  }
}
