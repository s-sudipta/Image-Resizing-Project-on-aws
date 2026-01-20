resource "aws_s3_bucket" "pre-processed-image-bucket" {
  bucket = local.s3_bucket_lambda_code
  force_destroy = true
  lifecycle {
    prevent_destroy = false
  }
}
resource "aws_s3_bucket" "processed-image-bucket" {
  bucket = local.s3_bucket_dest
  lifecycle {
    prevent_destroy = false
  }

  force_destroy = true
}