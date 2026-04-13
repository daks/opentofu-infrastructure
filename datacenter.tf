# Scaleway datacenter definition

provider "scaleway" {
  organization_id = var.scaleway_organization
  access_key      = var.scaleway_token
  secret_key      = var.scaleway_secret_key
  zone            = var.scaleway_zone
}
