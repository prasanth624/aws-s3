############
##S3
############

bucket_name       = "prasanth-testing-bucket"
enable_versioning = "Enabled"
sse_algorithm     = "aws:kms"
lifecycle_rules = [
  {
    id              = "log-transition-rule"
    status          = "Enabled"
    prefix          = ""
    transition_days = 30
    storage_class   = "STANDARD_IA"
    expiration_days = 365
  },
  {
    id              = "backup-archive-rule"
    status          = "Disabled"
    prefix          = "backups/"
    transition_days = 60
    storage_class   = "GLACIER"
    expiration_days = 0
  }
]
