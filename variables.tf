variable "name" {}

variable "environment" {}

variable "vpc_id" {}

variable "type" {
  default = "application"
}

variable "log_retention_days" {
    default = "7"
}

variable "certificate_arn" {}

variable "subnets" {
  type = list
}

variable "internal" {
  default = false
}

variable "additional_security_groups" {
  type = list
  default = []
}

variable "idle_timeout" {
  default = 60
}

variable "access_logs" {
  type = list
  default = []
}
