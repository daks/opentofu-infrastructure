# Scaleway server definitions

locals {
  cloud-init-data = templatefile("${path.module}/cloud-init.tpl", {
    users = var.cloud-init.users
  })
}

resource "scaleway_instance_server" "bastion" {
  name              = "bastion"
  image             = data.scaleway_instance_image.bastion.id
  type              = "DEV1-S"
  security_group_id = scaleway_instance_security_group.external-ssh-access.id
  ip_id             = scaleway_instance_ip.bastion.id

  private_network {
    pn_id = scaleway_vpc_private_network.private-ssh.id
  }

  user_data = {
    cloud-init = local.cloud-init-data
  }
}

resource "scaleway_instance_server" "web" {
  name              = "web"
  image             = data.scaleway_instance_image.web.id
  type              = "DEV1-S"

  private_network {
    pn_id = scaleway_vpc_private_network.private-ssh.id
  }
}
