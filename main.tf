#For AWS
resource "aws_instance" "aws_instance" {
  ami           = var.aws_ami_id
  instance_type = var.aws_instance_type
  key_name      = var.key_name

  tags = {
    Name = "AWS-EC2"
  }
}
 
resource "aws_s3_bucket" "aws_bucket" {
  bucket = var.aws_bucket_name.id

  tags = {
    Environment = "MultiCloud"
    ManagedBy   = "Terraform"
  }
}

#For GCP
resource "google_storage_bucket" "gcp_bucket" {
  name          = var.gcp_bucket_name
  location      = var.gcp_region
  storage_class = "STANDARD"

  labels = {
    Environment = "MultiCloud"
    ManagedBy   = "Terraform"
  }
}

resource "google_compute_instance" "gcp_instance" {
  name         = "gcp-instance"
  machine_type = var.gcp_machine_type
  zone         = "${var.gcp_region}-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"

    access_config {
     #public iP
    }
  }

  labels = {
    Environment = "MultiCloud"
    ManagedBy   = "Terraform"
  }
}
