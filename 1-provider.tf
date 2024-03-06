provider "google" {
  project = "devops-v4"
  region  = "us-central1"
}

terraform {
  backend "gcs" {
    bucket = "jb-tf-state-staging"
    prefix = "terraform/state"
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~4.0"
    }
  }
}