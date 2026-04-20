# Scaleway images definitions

## bastion base
data "scaleway_instance_image" "bastion" {
  name = var.bastion-image
}

## web base
data "scaleway_instance_image" "web" {
  name = var.web-image
}
