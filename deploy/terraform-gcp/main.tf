terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.71.0"
    }
  }
}

provider "google" {
  project = var.project_name
  region  = var.region
  zone    = "${var.region}-${var.zone}"
}