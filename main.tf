resource "google_storage_bucket" "my-bucket-using-github-runner" {
  name          = "github-actions-using-github-runner"
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
