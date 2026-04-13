output "debian_public_ip" {
  value = scaleway_instance_ip.debian-13.address
}
