# eip for nat gateway 1
resource "aws_eip" "nat_gw_1" {
  #instance = aws_instance.web.id
  vpc      = true
}

# eip for nat gateway 2
resource "aws_eip" "nat_gw_2" {
  #instance = aws_instance.web.id
  vpc      = true
}

# eip for ALB
resource "aws_eip" "lb" {
  #instance = aws_instance.web.id
  vpc      = true
}