resource "google_compute_instance" "beta-instance" {
  name         = "betainstance01"
  machine_type = "e2-medium"
  zone         = "us-central1-a"
  allow_stopping_for_update = true

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"
  }

}
