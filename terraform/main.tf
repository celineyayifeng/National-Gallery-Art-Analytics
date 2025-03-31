terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.6.0"
    }
  }
}
provider "google" {
  credentials = file(var.credentials)
  project     = var.project
  region      = var.region
}

resource "google_compute_instance" "national-arts-analytics-vm" {
  name         = var.vm_instance
  machine_type = var.machine_type
  zone         = var.region

  service_account {
    email  = "file(var.terraform_service_account_id)@$file(var.project).iam.gserviceaccount.com"
    scopes = [
      "userinfo-email",
      "compute-ro",
      "storage-full",
      "https://www.googleapis.com/auth/iam",
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2204-lts"  # Ubuntu 22.04 LTS image
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }
  

}