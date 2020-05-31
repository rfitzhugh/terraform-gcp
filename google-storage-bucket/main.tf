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