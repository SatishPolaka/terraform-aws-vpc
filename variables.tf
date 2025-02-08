variable "project_name" {

}

variable "environment" {
  
}

variable "vpc_cidr" {

}

variable "enable_dns_hostnames" {
  default = true
  
}

variable "common_tags" {
    type = map
}

variable "vpc_tags" {
    type = map
  
}

variable "igw_tags" {
   default = {}
  
}

variable "public_subnet_cidrs" {
    type = list
    validation {
        condition = length(var.public_subnet_cidrs) ==2
        error_message = "Public subnet CIDRs must be 2" 
    }
  
} 

variable "public_subnet_tags" {
  default = {}
  
}

variable "private_subnet_cidrs" {
    type = list
    validation {
        condition = length(var.private_subnet_cidrs) ==2
        error_message = "Private subnet CIDRs must be 2" 
    }
  
} 

variable "private_subnet_tags" {
  default = {}
  
}


variable "database_subnet_cidrs" {
    type = list
    validation {
        condition = length(var.database_subnet_cidrs) ==2
        error_message = "database subnet CIDRs must be 2" 
    }
  
} 

variable "database_subnet_tags" {
  default = {}
  
}

variable "nat_gateway_tags" {
  default = {}
}

variable "public_route_table_tags" {
  default = {}
}

variable "private_route_table_tags" {
  default = {}
}

variable "database_route_table_tags" {
  default = {}
}

variable "is_peering_required" {
    default = false
}

variable "vpc_peering_tags" {
  default = {}
}