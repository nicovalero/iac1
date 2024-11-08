resource "google_compute_instance" "vm_instance" {
  name         = "debian-tftest-1"
  machine_type = "e2-micro"
  zone         = "europe-west2-b"
  tags         = ["ssh"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }
}