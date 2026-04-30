resource "aws_athena_database" "flow_logs_database" {
  name = "flow_logs_database"
  bucket = aws_s3_bucket.flow_logs_bucket.bucket
}