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
    email  = "${var.airflow_service_account_id}@${local.envs["GCP_PROJECT_ID"]}.iam.gserviceaccount.com"
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

  metadata = {
    GCP_PROJECT_ID = local.envs["GCP_PROJECT_ID"]
    AIRFLOW_UID = 501
    _PIP_ADDITIONAL_REQUIREMENTS = ""
  }
  
  metadata_startup_script = templatefile("./start_up_script.sh", {
    GCS_BUCKET_SUFFIX            = var.gcs_bucket_class
    AIRFLOW_SERVICE_ACCOUNT_ID   = var.airflow_service_account_id
  })
}