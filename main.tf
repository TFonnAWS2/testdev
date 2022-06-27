resource "aws_vpc" "dev_vpc" {
  cidr_block           = var.vpc_name
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = { Name = "DEV VPC"
  Comments = "For Test Purpose" }
}
