locals {
  common_name = "${var.project}-$(var.environment)-${var.sg_name}"
  common_tags = {
    Project = var.project
    environment = var.environment
    Terraform = "true"
    Name = local.common_name
  }
}