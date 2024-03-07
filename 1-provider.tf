provider "google" {
  project = "k8s-cluster-primary"
  region  = "us-central1"
}

terraform {
  backend "gcs" {
    bucket = "jbev-tf-state-staging"
    prefix = "terraform/state"
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~>4.0"
    }
  }
}