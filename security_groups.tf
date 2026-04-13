# Security groups

locals {
  standard_ports = {
    22 = "TCP"
  }
}

resource "scaleway_instance_security_group" "bastion" {
  name                    = "bastion"
  inbound_default_policy  = "drop"
  outbound_default_policy = "accept"

  dynamic "inbound_rule" {
    for_each = var.allowed_ips
    content {
      action    = "accept"
      ip_range  = inbound_rule.value
      port      = "22"
      protocol  = "TCP"
    }
  }
}

resource "scaleway_instance_ip" "bastion" {}
