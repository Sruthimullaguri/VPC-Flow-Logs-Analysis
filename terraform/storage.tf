resource "aws_s3_bucket" "flow_logs_bucket" {
  bucket = var.flowlogs_bucket_name
  tags = {
    name = "flow_logs_bucket"
  }
}