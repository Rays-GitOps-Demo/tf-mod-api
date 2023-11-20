variable "aws_profile" {
  type    = string
  default = "default"
}

variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "vpc_id" {
  type    = string
}

variable "subnet_ids" {
  type    = set(string)
}

variable "domain" {
  type = string
}
