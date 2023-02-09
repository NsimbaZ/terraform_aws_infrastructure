# nat gateway public subnet 1_a
resource "aws_nat_gateway" "nat_gw_1a" {
  allocation_id = aws_eip.eip_1.id
  subnet_id     = aws_subnet.public_subnet_1a.id

  tags = {
    Name = "${var.vpc_azs[0]}_nat_gw"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.igw]
}

# nat gateway public subnet 1_b
resource "aws_nat_gateway" "nat_gw_1b" {
  allocation_id = aws_eip.eip_2.id
  subnet_id     = aws_subnet.public_subnet_1b.id

  tags = {
    Name = "${var.vpc_azs[1]}_nat_gw"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.igw]
}