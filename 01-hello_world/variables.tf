variable "region" {
  default = "us-west-1"
}

variable "amis" {
  type = "map"
  default = {
    "us-west-1" = "ami-00513ac407df1a26b"
    "us-west-2" = "ami-4b32be2b"
  }
}