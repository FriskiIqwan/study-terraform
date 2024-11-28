resource "google_compute_network" "default" {
  name                    = "vpc-development"
  description             = "network untuk env development"
  auto_create_subnetworks = false
}
