resource "aws_flow_log" "vpc_flow_logs" {
  vpc_id = aws_vpc.main_vpc.id
  traffic_type = "ALL"
  log_destination_type = "s3"
  log_destination = aws_s3_bucket.flow_logs_bucket.arn
  max_aggregation_interval=60
}