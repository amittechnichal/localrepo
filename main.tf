resource "google_compute_instance" "default" {
  name         = "my-instance"
  machine_type = "n1-standard-1"
  zone         = "asia-south2-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }

  network_interface {
    network = "default"
    

    access_config {
      # Creates an external IP
    }
  }
}


