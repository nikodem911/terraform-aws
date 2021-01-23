variable "region" {
  default = "us-east-2"
}

variable "amis" {
  type = map(string)
  default = {
    "us-east-2" = "ami-0663c8300ef945e88"
  }
}

variable "inst_type" {
  default = "t2.micro"
}
