# internet gateway resource
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.utc_vpc.id
  # "${module.vpc.vpc_id}"

  tags = {
    Name = "${var.vpc_name}_igw"
  }
}
