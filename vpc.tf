resource "aws_vpc" "utc_vpc" {

  cidr_block = var.vpc_cidr_block

  tags = {
    Name = var.vpc_name
    Terraform = "true"
    Environment = var.env_name
    Team = var.team_name
  }
}