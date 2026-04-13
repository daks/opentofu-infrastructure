# Scaleway networks
# https://www.scaleway.com/en/docs/vpc/

resource "scaleway_vpc_private_network" "privnet01" {
  name = "private network 01"

  ipv4_subnet {
    subnet = "10.0.0.0/24"
  }
}
