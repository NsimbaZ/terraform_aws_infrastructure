# association for all public subnets
# public 1
resource "aws_route_table_association" "pubsn_1a" {
  subnet_id      = aws_subnet.public_subnet_1a.id
  route_table_id = aws_route_table.public.id
}

# public 2
resource "aws_route_table_association" "pubsn_1b" {
  subnet_id      = aws_subnet.public_subnet_1b.id
  route_table_id = aws_route_table.public.id
}

# public 3
resource "aws_route_table_association" "pubsn_1c" {
  subnet_id      = aws_subnet.public_subnet_1c.id
  route_table_id = aws_route_table.public.id
}

# association for all private subnets
# private 1
resource "aws_route_table_association" "privsn_1a_0" {
  subnet_id      = aws_subnet.private_subnet_1a_0.id
  route_table_id = aws_route_table.private_1.id
}

# private 2
resource "aws_route_table_association" "privsn_1a_1" {
  subnet_id      = aws_subnet.private_subnet_1a_1.id
  route_table_id = aws_route_table.private_1.id
}

# private 3
resource "aws_route_table_association" "privsn_1b_0" {
  subnet_id      = aws_subnet.private_subnet_1b_0.id
  route_table_id = aws_route_table.private_2.id
}

# private 4
resource "aws_route_table_association" "privsn_1b_1" {
  subnet_id      = aws_subnet.private_subnet_1b_1.id
  route_table_id = aws_route_table.private_2.id
}

# private 5
resource "aws_route_table_association" "privsn_1c_0" {
  subnet_id      = aws_subnet.private_subnet_1c_0.id
  route_table_id = aws_route_table.private_1.id
}

# private 6
resource "aws_route_table_association" "privsn_1c_1" {
  subnet_id      = aws_subnet.private_subnet_1c_1.id
  route_table_id = aws_route_table.private_2.id
}