resource "aws_lb_target_group" "utc_target_group" {
  name              = "utc-target-group"
  port              = 80
  protocol          = "HTTP"
  protocol_version  = "HTTP1" # version HTTP1 is also default version
  vpc_id            = aws_vpc.utc_vpc.id
  target_type       = "instance" # type instance is also default type

  tags = {
  env  = var.env_name
  team = var.team_name
}
}
