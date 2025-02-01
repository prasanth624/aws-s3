variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "enable_versioning" {
  description = "Enable versioning for the S3 bucket"
  default     = "Disabled"
}

variable "tags" {
  description = "Tags for the S3 bucket"
  type        = map(string)
  default     = {}
}

variable "bucket_policy" {
  description = "Optional JSON-encoded bucket policy"
  default     = ""
}

variable "lifecycle_rules" {
  description = "List of lifecycle rules"
  type = list(object({
    id              = string
    status          = string
    prefix          = string
    transition_days = number
    storage_class   = string
    expiration_days = number
  }))
  default = []
}

variable "kms_id" {
  type    = string
  default = ""
}

variable "sse_algorithm" {
  type    = string
  default = "AES256"
}

