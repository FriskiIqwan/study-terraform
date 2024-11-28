resource "google_compute_firewall" "default" {
  name    = "vpc-development-allow-all"
  network = google_compute_network.default.name

  allow {
    protocol = "all"
  }

  target_tags   = ["allow-all"]
  source_ranges = ["0.0.0.0/0"]
}
