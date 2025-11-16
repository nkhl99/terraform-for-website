terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
  backend "gcs" {
    bucket = "terraform-state-nikhil"
    prefix = "prod"
  }
}

provider "google" {
  project = var.projetc_id
}
