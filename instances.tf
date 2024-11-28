resource "google_compute_instance" "web" {
  name         = "web-server"
  machine_type = "e2-micro"

  tags = ["http-server"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network    = google_compute_network.default.name
    subnetwork = google_compute_subnetwork.default.name

    access_config {}
  }
}

resource "google_compute_instance" "db" {
  name         = "database-server"
  machine_type = "e2-micro"

  tags = ["allow-db"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network    = google_compute_network.default.name
    subnetwork = google_compute_subnetwork.default.name

    access_config {}
  }
}

resource "google_compute_instance" "lb" {
  name         = var.lb_name
  machine_type = var.lb_spec

  tags = var.lb_tag

  boot_disk {
    initialize_params {
      image = var.default_image
    }
  }
  network_interface {
    network    = google_compute_network.default.name
    subnetwork = google_compute_subnetwork.default.name

    access_config {}
  }
}
