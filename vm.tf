resource "google_compute_instance" "private-vm" {
  name         = "private-vm"
  machine_type = "n1-standard-1"
  zone         = "asia-east1-b"

  tags = ["omar"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }

  // Local SSD disk
  scratch_disk {
    interface = "SCSI"
  }
  network_interface {
    network = google_compute_network.vpc_network.name
    # network_ip=google_compute_network.vpc_network
    subnetwork = google_compute_subnetwork.management_subnet.name

  }
   service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    email  = google_service_account.omar_service_account.email
    scopes = ["cloud-platform"]
  }
}