resource "google_compute_network" "vpc-network-gcp" {
  project                 = "ahmed-magdy-366217"
  name                    = "vpc-network-gcp"
  auto_create_subnetworks = false
  mtu                     = 1460

}

