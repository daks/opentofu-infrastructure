# Scaleway networks
# https://www.scaleway.com/en/docs/vpc/

resource "scaleway_vpc_private_network" "private-ssh" {
  name = "private SSH network"

  ipv4_subnet {
    subnet = "10.0.0.0/24"
  }
}
