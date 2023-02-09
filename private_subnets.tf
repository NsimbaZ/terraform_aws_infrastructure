#private_subnet_1a....................
resource "aws_subnet" "private_subnet_1a_0" {
  vpc_id     = aws_vpc.utc_vpc.id
  cidr_block = var.vpc_private_subnets[0]
  availability_zone = var.vpc_azs[0]

  tags = {
    Name = "${var.vpc_name}_private_subnet_1a_0"
  }
}

resource "aws_subnet" "private_subnet_1a_1" {
  vpc_id     = aws_vpc.utc_vpc.id
  cidr_block = var.vpc_private_subnets[1]
  availability_zone = var.vpc_azs[0]

  tags = {
    Name = "${var.vpc_name}_private_subnet_1a_1"
  }
}


#private_subnet_1b....................
resource "aws_subnet" "private_subnet_1b_0" {
  vpc_id     = aws_vpc.utc_vpc.id
  cidr_block = var.vpc_private_subnets[2]
  availability_zone = var.vpc_azs[1]

  tags = {
    Name = "${var.vpc_name}_private_subnet_1b_0"
  }
}

resource "aws_subnet" "private_subnet_1b_1" {
  vpc_id     = aws_vpc.utc_vpc.id
  cidr_block = var.vpc_private_subnets[3]
  availability_zone = var.vpc_azs[1]

  tags = {
    Name = "${var.vpc_name}_private_subnet_1b_1"
  }
}


#private_subnet_1c...................
resource "aws_subnet" "private_subnet_1c_0" {
  vpc_id     = aws_vpc.utc_vpc.id
  cidr_block = var.vpc_private_subnets[4]
  availability_zone = var.vpc_azs[2]

  tags = {
    Name = "${var.vpc_name}_private_subnet_1c_0"
  }
}

resource "aws_subnet" "private_subnet_1c_1" {
  vpc_id     = aws_vpc.utc_vpc.id
  cidr_block = var.vpc_private_subnets[5]
  availability_zone = var.vpc_azs[2]

  tags = {
    Name = "${var.vpc_name}_private_subnet_1c_1"
  }
}