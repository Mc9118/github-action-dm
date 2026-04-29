resource "google_storage_bucket" "my-bucket" {
  name          = "gh-action-demo-001"
  location      = "US"
  force_destroy = true
  project="tt-dev

  lifecycle_rule {
    condition {
      age = 3
    }
    action {
      type = "Delete"
    }
  }
}
