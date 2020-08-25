## =============================================================================
#  Variables - GCP Project ID                                                  #
## =============================================================================
variable "project" {
    type        = "string"
    description = "project ID"
}

## =============================================================================
#  Variables - Configure GCS Bucket                                            #
## =============================================================================
variable "bucket_name" {
    type        = "string"
    description = "unique bucket name"
}

variable "location" {
    type        = "string"
    description = "GCS location"
}

variable "versioning_enabled" {
    type        = "string"
    description = "Supported values include TRUE or FALSE"
}

variable "storage_class" {
    type        = "string"
    description = "Supported values include: STANDARD, MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE"
    default     = "STANDARD"
}

variable "environment" {
    type        = "string"
    description = "Value for environment label"
}

## =============================================================================
#  Variables - Configure Service Account                                       #
## =============================================================================
variable "service_account_name" {
    type        = "string"
    description = "unique service account name for bucket"
}