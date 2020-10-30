output "jitsi_public_ip" {
  value = scaleway_instance_ip.jitsi.address
}
