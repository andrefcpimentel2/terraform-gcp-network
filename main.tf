provider "google" {
  project     = var.gcp_project
  region      = var.gcp_region
}

resource "google_compute_network" "mainnetwork" {
    description             = "Main Network"
    name                    = "${var.cust_name}-vpc-network"
    auto_create_subnetworks = "false"
}

resource "google_compute_subnetwork" "subnet" {
    description             = "Main Subnet"
    name                    = "${var.cust_name}-vpc-subnet"
    ip_cidr_range           = var.vpc_cidr_block
    network                 = google_compute_network.mainnetwork.id

}

resource "google_compute_firewall" "default" {
  name                    = "${var.cust_name}-fw"
  network                 = google_compute_network.mainnetwork.id

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
    # ports    = []
  }
}