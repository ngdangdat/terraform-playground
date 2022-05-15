provider "google" {
  project     = var.project_id
  region      = "asia-southeast1"
  zone        = "asia-southeast1-a"
  credentials = var.credentials_path
}