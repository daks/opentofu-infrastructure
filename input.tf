# Input variables

## Scaleway authentication
variable "scaleway_organization" {
  type        = string
  description = "Scaleway organization ID"
}
variable "scaleway_token" {
  type        = string
  description = "Scaleway authentication token"
}
variable "scaleway_secret_key" {
  type        = string
  description = "Scaleway authentication secret key"
}

## Scaleway datacenter zone
variable "scaleway_zone" {
  type        = string
  description = "Scaleway zone"
}
