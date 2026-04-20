# variables

variable "allowed_ips" {
  type    = list(string)
  default = ["127.0.0.1/32"]
}

variable "cloud-init" {
  type = map(any)
}

variable "bastion-image" {
  type = string
}

variable "web-image" {
  type = string
}
