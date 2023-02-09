# eip for nat gateway 1
resource "aws_eip" "eip_1" {
  #instance = aws_instance.web.id
  vpc      = true
}

# eip for nat gateway 2
resource "aws_eip" "eip_2" {
  #instance = aws_instance.web.id
  vpc      = true
}