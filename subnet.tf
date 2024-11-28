resource "google_compute_subnetwork" "default" {
  name          = "subnet-id"
  ip_cidr_range = "192.168.2.0/24"
  region        = "asia-southeast2"
  network       = google_compute_network.default.name

}
