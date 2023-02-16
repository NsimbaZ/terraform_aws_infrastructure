# public route table
resource "aws_route_table" "public" {
  vpc_id = aws_vpc.utc_vpc.id # vpc_id is the output id of the vpc after terraform apply

  route {
    cidr_block = var.route[0] # destination of traffic
    gateway_id = aws_internet_gateway.igw.id # target or where traffic goes through
  }

  tags = {
    Name = "${var.vpc_name}_public"
}
}

# private route table 1
resource "aws_route_table" "private_1" {
  vpc_id = aws_vpc.utc_vpc.id # vpc_id is the output id of the vpc after terraform apply

  route {
    cidr_block = var.route[0] # destination of traffic
    gateway_id = aws_nat_gateway.nat_gw_1a.id # target or where traffic goes through
  }

  tags = {
    Name = "${var.vpc_name}_private_1"
}
}

# private route table 2
resource "aws_route_table" "private_2" {
  vpc_id = aws_vpc.utc_vpc.id # vpc_id is the output id of the vpc after terraform apply

  route {
    cidr_block = var.route[0] # destination of traffic
    gateway_id = aws_nat_gateway.nat_gw_1b.id # target or where traffic goes through
  }

  tags = {
    Name = "${var.vpc_name}_private_2"
}
}