# Scaleway server definitions

resource "scaleway_instance_server" "bastion" {
  name              = "bastion"
  image             = data.scaleway_instance_image.debian-13.id
  type              = "DEV1-S"
  security_group_id = scaleway_instance_security_group.bastion.id
  ip_id             = scaleway_instance_ip.bastion.id
}
