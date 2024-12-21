variable "aws_region" {
  description = "The AWS region to deploy resources in."
  type        = string
  default     = "us-east-1"
}

variable "gcp_project" {
  description = "The GCP project ID."
  type        = ""
}

variable "gcp_region" {
  description = "The GCP region to deploy resources in."
  type        = string
  default     = "us-east-1"
}

variable "aws_instance_type" {
  description = "The type of AWS EC2 instance to deploy."
  type        = string
  default     = "t2.micro"
}

variable "gcp_machine_type" {
  description = "The type of GCP Compute Engine instance to deploy."
  type        = string
  default     = "f1-micro"
}

variable "aws_ami_id" {
  description = "The ID of the AMI"
  type        = ""
}

variable "key_name" {
  description = "The name of the key pair for SSH access."
  type        = ""
}

variable "gcp_bucket_name" {
  description = "The name of the GCP Cloud Storage bucket."
  type        = ""
}

variable "aws_bucket_name" {
  description = "The name of the AWS S3 bucket."
  type        = ""
}
