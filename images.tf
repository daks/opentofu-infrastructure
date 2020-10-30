# Scaleway images definitions

## sys base
data "scaleway_instance_image" "buster" {
  name = "debian_buster"
}
