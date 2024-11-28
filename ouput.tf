output "web_network_ip" {
  value = google_compute_instance.web.network_interface[0].network_ip
}

output "db_network_ip" {
  value = google_compute_instance.db.network_interface[0].network_ip

}
