resource "aws_s3_bucket_object" "object" {
  bucket = aws_s3_bucket.website_bucket.bucket
  key    = var.index_file_path
  source = var.index_file_path
  content_type = "text/html"
}
