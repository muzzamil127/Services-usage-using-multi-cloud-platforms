# AWS Outputs
output "aws_s3_bucket_name" {
  description = "The name of the AWS S3 bucket."
  value       = aws_s3_bucket.aws_bucket.id
}

output "aws_instance_id" {
  description = "The ID of the AWS EC2 instance."
  value       = aws_instance.aws_instance.id
}

# GCP Outputs
output "gcp_bucket_name" {
  description = "The name of the GCP Cloud Storage bucket."
  value       = google_storage_bucket.gcp_bucket.id
}

output "gcp_instance_name" {
  description = "The name of the GCP Compute Engine instance."
  value       = google_compute_instance.gcp_instance.name
}

output "gcp_instance_public_ip" {
  description = "The public IP of the GCP Compute Engine instance."
  value       = google_compute_instance.gcp_instance.network_interface.0.access_config.0.nat_ip
}
