# Security groups

locals {
  jitsi_ports = {
    10000 = "UDP"
    22 = "TCP"
    443 = "TCP"
    4444 = "TCP"
  }

  test-salt_ports = {
    22 = "TCP"
    443 = "TCP"
    80 = "TCP"
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

resource "scaleway_instance_security_group" "jitsi" {
  name                    = "jitsi"
  inbound_default_policy  = "drop"
  outbound_default_policy = "accept"

  dynamic "inbound_rule" {
    for_each = local.jitsi_ports

    content {
      action = "accept"
      port = inbound_rule.key
      protocol = inbound_rule.value
    }
  }
}

resource "scaleway_instance_ip" "jitsi" {}

resource "scaleway_instance_security_group" "test-salt" {
  name                    = "test-salt"
  inbound_default_policy  = "drop"
  outbound_default_policy = "accept"

  dynamic "inbound_rule" {
    for_each = local.test-salt_ports

    content {
      action = "accept"
      port = inbound_rule.key
      protocol = inbound_rule.value
    }
  }
}

resource "scaleway_instance_ip" "test-salt" {}

