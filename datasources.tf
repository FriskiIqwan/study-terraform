data "google_compute_network" "vpc-default" {
  name = "default"
}

resource "google_compute_instance" "api" {
  name         = "api-gateway"
  machine_type = "e2-micro"

  tags = ["allow-all","http-server"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network    = data.google_compute_network.vpc-default.self_link


    access_config {}
  }
}
