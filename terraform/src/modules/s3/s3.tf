resource "aws_s3_bucket" "bucket" {
  bucket = "${var.app_name}-etl-target-bucket"
  acl    = "private"
}
