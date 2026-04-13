# Security groups

locals {
  standard_ports = {
    22 = "TCP"
  }
}

resource "scaleway_instance_security_group" "ssh" {
  name                    = "ssh"
  inbound_default_policy  = "drop"
  outbound_default_policy = "accept"

  inbound_rule {
    action    = "accept"
    port      = "22"
    protocol  = "TCP"
  }
}

resource "scaleway_instance_ip" "debian-13" {}
