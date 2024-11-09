provider "google" {
    project = "solar-spot-441118-v2"
}
resource "google_compute_instance" "default" {
  name         = "debian-tftest-1"
  machine_type = "e2-micro"
  zone         = "europe-west2-b"
  tags         = ["ssh"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  metadata_startup_script = "sudo apt-get update;"

  network_interface {
    network = "default"
  }
}