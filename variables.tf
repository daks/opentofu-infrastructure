# variables

variable "allowed_ips" {
  type    = list(string)
  default = ["127.0.0.1/32"]
}
