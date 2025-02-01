##created by - Prasanth B

module "s3_bucket" {
  source            = "./module/s3"
  bucket_name       = var.bucket_name
  enable_versioning = var.enable_versioning
  sse_algorithm     = var.sse_algorithm
  bucket_policy     = "${data.template_file.bucket_policy.rendered}"

  lifecycle_rules = var.lifecycle_rules

  tags = {
    Environment = "Dev"
    Project     = "MyApp"
  }
}

