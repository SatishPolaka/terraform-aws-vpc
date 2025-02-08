locals {
  resource_name =  "${var.project_name}-${var.environment}"
  azs_names = slice(data.aws_availability_zones.available.names, 0 ,2)
  default_vpc_id = data.aws_vpc.default.id
  default_vpc_cidr = data.aws_vpc.default.cidr_block
}