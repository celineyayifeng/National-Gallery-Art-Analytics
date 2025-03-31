variable "credentials" {
  description = "My Credentials"
  default     = "./keys/google-cred.json"
}

variable "project" {
  description = "My Project"
  default     = "de-zoomcamp-446715"
}

variable "region" {
  description = "My Region"
  default     = "us-east1"
}

variable "location" {
  description = "My location"
  default     = "US"
}

variable "terraform_service_account_id" {
  description = "Service Account ID for terraform"
  default     = "arts-terraform"
}

variable "vm_instance" {
  description = "Name of VM Instance"
  default     = "national-arts-analytics-vm"
}

variable "machine_type" {
  description = "VM machine type"
  default     = "e2-standard-4"
}
