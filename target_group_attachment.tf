# target in AZ-a -->1
resource "aws_lb_target_group_attachment" "target_az_a0" {
  target_group_arn = aws_lb_target_group.utc_target_group_az_a.arn
  target_id        = aws_instance.appserver_1a_0.id
  port             = 80
}

# target in AZ-a -->2
resource "aws_lb_target_group_attachment" "target_az_a1" {
  target_group_arn = aws_lb_target_group.utc_target_group_az_a.arn
  target_id        = aws_instance.appserver_1a_1.id
  port             = 80
}

# target in AZ-b -->1
resource "aws_lb_target_group_attachment" "target_az_b0" {
  target_group_arn = aws_lb_target_group.utc_target_group_az_b.arn
  target_id        = aws_instance.appserver_1b_0.id
  port             = 80
}

# target in AZ-b -->2
resource "aws_lb_target_group_attachment" "target_az_b1" {
  target_group_arn = aws_lb_target_group.utc_target_group_az_b.arn
  target_id        = aws_instance.appserver_1b_1.id
  port             = 80
}