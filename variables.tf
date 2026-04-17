# variables

variable "allowed_ips" {
  type    = list(string)
  default = ["127.0.0.1/32"]
}

variable "ssh_username" {
  type = string
}

variable "ssh_auth_key" {
  type = string
}
