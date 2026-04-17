# Scaleway server definitions
data "template_file" "cloud-init-data" {
   template = "${file("${path.module}/cloud-init.tpl")}"

   vars = {
       ssh_username = var.ssh_username
       ssh_auth_key = var.ssh_auth_key
   }
}

resource "scaleway_instance_server" "bastion" {
  name              = "bastion"
  image             = data.scaleway_instance_image.debian-13.id
  type              = "DEV1-S"
  security_group_id = scaleway_instance_security_group.external-ssh-access.id
  ip_id             = scaleway_instance_ip.bastion.id

  private_network {
    pn_id = scaleway_vpc_private_network.private-ssh.id
  }

  user_data = {
    cloud-init = "${data.template_file.cloud-init-data.rendered}"
  }
}

resource "scaleway_instance_server" "web" {
  name              = "web"
  image             = data.scaleway_instance_image.debian-13.id
  type              = "DEV1-S"

  private_network {
    pn_id = scaleway_vpc_private_network.private-ssh.id
  }
}
