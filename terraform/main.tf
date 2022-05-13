resource "digitalocean_kubernetes_cluster" "doks-project" {
  name         = "doks-project"
  region       = "sfo3"
  version      = "1.22.8-do.1"
  ha           = true
  auto_upgrade = false
  vpc_uuid     = digitalocean_vpc.doksvpc.id 

  maintenance_policy {
    start_time  = "04:00"
    day         = "monday"
  }

  node_pool {
    name       = "autoscale-worker-pool"
    size       = "s-2vcpu-4gb"
    auto_scale = true
    min_nodes  = 1
    max_nodes  = 3
    tags       = [
        "kubernetes",
        "Prod"
    ]
  }
}
