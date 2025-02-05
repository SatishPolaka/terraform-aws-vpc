locals {
  resource = "${var.project_name}-${var.environment}"
  azs_names = slice(data.aws_availability_zones.available.names, 0 ,2)
}