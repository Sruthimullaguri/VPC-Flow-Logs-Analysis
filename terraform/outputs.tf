output "bastion_public_ip" {
  description = "Public IP address of bastion instance"
  value       = aws_instance.bastion_instance.public_ip
}

output "private_instance_ip" {
  description = "Private IP address of private instance"
  value       = aws_instance.private_instance.private_ip
}

output "flowlogs_bucket_name" {
  description = "S3 bucket storing VPC flow logs"
  value       = aws_s3_bucket.flow_logs_bucket.bucket
}

output "vpc_id" {
  description = "VPC ID created for flow logs project"
  value       = aws_vpc.main_vpc.id
}