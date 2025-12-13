terraform {
  backend "gcs" {
    bucket = "terraform-backend-storage-1"  # Bucket name from output
    prefix = "terraform/state"
  }
}
