resource "google_compute_instance" "profile_vm" {
  name         = "profile-vm"
  machine_type = "e2-micro"
  zone         = "us-central1-a"

  network_interface {
    network = google_compute_network.vpc_network.id
    access_config {}
  }

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      size  = 30
      type  = "pd-standard"
    }
  }

  metadata_startup_script = <<-EOT
    #!/bin/bash
    apt-get update
    apt-get install -y docker.io
    systemctl start docker
    systemctl status docker
  EOT

  service_account {
    scopes = ["cloud-platform"]
  }

  depends_on = [google_compute_firewall.allow_http_ssh]
}