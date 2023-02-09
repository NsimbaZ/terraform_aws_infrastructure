#public_subnet_1a
resource "aws_subnet" "public_subnet_1a" {
  vpc_id     = aws_vpc.utc_vpc.id
  cidr_block = var.vpc_public_subnets[0]
  availability_zone = var.vpc_azs[0]

  tags = {
    Name = "${var.vpc_name}_public_subnet_1a"
  }
}

#public_subnet_1b
resource "aws_subnet" "public_subnet_1b" {
  vpc_id     = aws_vpc.utc_vpc.id
  cidr_block = var.vpc_public_subnets[1]
  availability_zone = var.vpc_azs[1]

  tags = {
    Name = "${var.vpc_name}_public_subnet_1b"
  }
}

#public_subnet_1c
resource "aws_subnet" "public_subnet_1c" {
  vpc_id     = aws_vpc.utc_vpc.id
  cidr_block = var.vpc_public_subnets[2]
  availability_zone = var.vpc_azs[2]

  tags = {
    Name = "${var.vpc_name}_public_subnet_1c"
  }
}