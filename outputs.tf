output "network_link" {
  value = google_compute_network.mainnetwork.id
}


output "subnet_link" {
  value = google_compute_subnetwork.subnet.id
}