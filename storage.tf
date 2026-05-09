resource "aws_s3_bucket" "frontend" {
  bucket = "${var.project_name}-frontend-prod"
  tags   = { Role = "frontend-static" }
}
resource "aws_s3_bucket_website_configuration" "frontend" {
  bucket = aws_s3_bucket.frontend.id
  index_document { suffix = "index.html" }
  error_document { key    = "error.html"  }
}
