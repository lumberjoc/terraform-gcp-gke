provider "google" {
  project = "kubernetes-cluster-staging"
  region  = "us-central1"
}

terraform {
  backend "gcs" {
    bucket = "jlb-tf-state-staging"
    prefix = "terraform/state"
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~4.0"
    }
  }
}