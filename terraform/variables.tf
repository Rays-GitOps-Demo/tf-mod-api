variable "name" {
  type = string
}

variable "image" {
  type = string
}

variable "command" {
  type = list(string)
  default = []
}

variable "environment" {
  type = list(object({
    name  = string
    value = string
  }))
  default = []
}

variable "port" {
  type    = number
  default = 80
}

variable "cpu" {
  type    = number
  default = 1024
}

variable "memory" {
  type    = number
  default = 2048
}

variable "desired_count" {
  type    = number
  default = 1
}

variable "health_check_path" {
  type    = string
  default = "/"
}

variable "vpc_id" {
  type = string
}

variable "subnet_ids" {
  type = set(string)
}

variable "security_group_id" {
  type = string
}

variable "ecs_cluster_id" {
  type = string
}

variable "alb_arn" {
  type = string
}

variable "alb_listener_arn" {
  type = string
}

variable "route53_hosted_zone_id" {
  type = string
}

variable "hostname" {
  type = string
}
