# Scaleway server definitions

resource "scaleway_instance_server" "debian" {
  name              = "debian-13"
  image             = data.scaleway_instance_image.debian-13.id
  type              = "DEV1-S"
  security_group_id = scaleway_instance_security_group.ssh.id
  ip_id             = scaleway_instance_ip.debian-13.id
}
