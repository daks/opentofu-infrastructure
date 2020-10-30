output "jitsi_public_ip" {
  value = scaleway_instance_ip.jitsi.address
}

output "test-salt_public_ip" {
  value = scaleway_instance_ip.test-salt.address
}
