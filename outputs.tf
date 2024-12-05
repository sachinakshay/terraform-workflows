output "vpc_id" {
  description = "VPC ID created by the VPC module"
  value       = module.vpc.vpc_id
}

output "s3_bucket_name" {
  description = "S3 bucket name created by the S3 module"
  value       = module.s3.bucket_name
}

output "ec2_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = module.ec2.ec2_public_ip
}
