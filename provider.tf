terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.12.0"
    }
  }
}

provider "google" {
  project     = "terraform-443107"
  region      = "asia-southeast2"
  zone        = "asia-southeast2-a"
  credentials = "google-credentials.json"
}
