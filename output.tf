output "bastion_public_ip" {
  value = scaleway_instance_ip.bastion.address
}
