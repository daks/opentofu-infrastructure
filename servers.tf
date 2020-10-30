# Scaleway server definitions

resource "scaleway_instance_server" "jitsi" {
  name              = "jitsi"
  image             = data.scaleway_instance_image.buster.id
  type              = "GP1-XS"
  security_group_id = scaleway_instance_security_group.jitsi.id
  ip_id             = scaleway_instance_ip.jitsi.id
}

resource "scaleway_instance_server" "test-salt" {
  name              = "test-salt"
  image             = data.scaleway_instance_image.buster.id
  type              = "GP1-XS"
  security_group_id = scaleway_instance_security_group.test-salt.id
  ip_id             = scaleway_instance_ip.test-salt.id
}
