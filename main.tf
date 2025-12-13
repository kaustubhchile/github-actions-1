resource "google_storage_bucket" "my-bucket" {
  name          = "github-actions-demo"
  location      = "asia-south2"
  project       = "parabolic-hook-475020-c0"
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 3
    }
    action {
      type = "Delete"
    }
  }
}
