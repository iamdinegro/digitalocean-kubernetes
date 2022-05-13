resource "digitalocean_vpc" "doksvpc" {
  name     = "doksvpc"
  region   = "sfo3"
  ip_range = "10.10.10.0/24"
}