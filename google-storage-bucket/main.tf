## =============================================================================
#  Google Storage Bucket Configuration                                         #
## =============================================================================
resource "google_storage_bucket" "bucket" {
  name      = var.bucket_name
  location  = var.location
  project   = var.project

  versioning {
    enabled = var.versioning_enabled
  }
  
  labels = {
  "environment"     : var.environment
  }
}

resource "google_storage_bucket_acl" "acl" {
  bucket         = google_storage_bucket.bucket.name
  predefined_acl = "private"
}

## =============================================================================
#  Bucket Service Account                                                      #
## =============================================================================
resource "google_service_account" "svc" {
  account_id   = var.service_account_name
  display_name = var.service_account_name
}

resource "google_project_iam_member" "binding" {
  role   = "roles/storage.admin"
  member = "serviceAccount:${google_service_account.svc.email}"
}

## =============================================================================
#  Output                                                                      #
## =============================================================================
output "service_account_name" {
  value = "${google_service_account.svc.email}"
}