provider "random" {}

resource "random_string" "random" {
  length = 16
  special = false
  min_lower = 16
}

resource "aws_s3_bucket" "website_bucket" {
  bucket = "${var.bucket_name_prefix}-${random_string.random.result}"
  acl    = "public-read"

  force_destroy = true

  website {
    index_document = var.index_file_path
    error_document = var.index_file_path
  }
}
