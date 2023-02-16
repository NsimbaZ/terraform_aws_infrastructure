# target group in availability zone --> a
resource "aws_lb_target_group" "utc_target_group_az_a" {
  name              = "utc-target-group-az-a"
  port              = 80
  protocol          = "HTTP"
  protocol_version  = "HTTP1" # version HTTP1 is also default version
  vpc_id            = aws_vpc.utc_vpc.id
  target_type       = "instance" # type instance is also default type

  health_check {
    protocol        = "HTTP"
    path            = "/"
    #port = # use traffic-port
    healthy_threshold = 5 # consecutive health checks successes required before considering an unhealthy target healthy
    unhealthy_threshold = 2 # consecutive failed attempts before target considered unhealthy
    timeout = 3 # time in seconds to consider no response failed health check
    interval = 25 # time in seconds between health checks for target
    matcher = "200"  # response code has to be HTTP 200 or fails
  }

    tags = {
    env  = var.env_name
    team = var.team_name
    }
}

# target group in availability zone --> b
resource "aws_lb_target_group" "utc_target_group_az_b" {
  name              = "utc-target-group-az-b"
  port              = 80
  protocol          = "HTTP"
  protocol_version  = "HTTP1" # version HTTP1 is also default version
  vpc_id            = aws_vpc.utc_vpc.id
  target_type       = "instance" # type instance is also default type

  health_check {
    protocol        = "HTTP"
    path            = "/"
    #port = # use traffic-port
    healthy_threshold = 5 # consecutive health checks successes required before considering an unhealthy target healthy
    unhealthy_threshold = 2 # consecutive failed attempts before target considered unhealthy
    timeout = 3 # time in seconds to consider no response failed health check
    interval = 25 # time in seconds between health checks for target
    matcher = "200"  # response code has to be HTTP 200 or fails
  }

    tags = {
    env  = var.env_name
    team = var.team_name
    }
}
