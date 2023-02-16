# ......................### group 1
resource "aws_security_group" "alb_sg" {
  name        = "alb_sg"
  description = "Allow inbound from everywhere to port 80 and 443, and all outbound"
  vpc_id      = aws_vpc.utc_vpc.id

  ingress {
    description      = "inbound HTTPS"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
    ingress {
    description      = "inbound HTTP"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    env = "${var.env_name}"
    team = "${var.team_name}"
  }
}

resource "aws_security_group" "bastion_host_sg" {
  name        = "bastion_host_sg"
  description = "Allow inbound from any IP to port 22, and all outbound"
  vpc_id      = aws_vpc.utc_vpc.id

  ingress {
    description      = "any IP to ssh 22"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    env = "${var.env_name}"
    team = "${var.team_name}"
  }
}

# ......................### group 3
resource "aws_security_group" "app_server_sg" {
  name        = "app_server_sg"
  description = "Allow inbound from alb_sg to port 80"
  vpc_id      = aws_vpc.utc_vpc.id

  ingress {
    description      = "alb_sg to 80 http"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    security_groups  = ["${aws_security_group.alb_sg.id}"]
  }

    ingress {
    description      = "bastion_host_sg to 22 ssh"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    security_groups  = ["${aws_security_group.bastion_host_sg.id}"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    env = "${var.env_name}"
    team = "${var.team_name}"
  }
}

# ......................### group 4
resource "aws_security_group" "database_sg" {
  name        = "database_sg"
  description = "Allow inbound from app_server_sg to 3306 mysql"
  vpc_id      = aws_vpc.utc_vpc.id

  ingress {
    description      = "app_server_sg to 3306 mysql"
    from_port        = 3306
    to_port          = 3306
    protocol         = "tcp"
    security_groups  = ["${aws_security_group.app_server_sg.id}"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    env = "${var.env_name}"
    team = "${var.team_name}"
  }
}
