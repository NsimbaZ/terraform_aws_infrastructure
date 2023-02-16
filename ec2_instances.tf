# instance 0.........Bastion host
resource "aws_instance" "bastion_host" {

  ami                    = "ami-0a606d8395a538502"
  instance_type          = "t2.micro"
  key_name               = var.keypair_name
  monitoring             = true
  security_groups        = [aws_security_group.bastion_host_sg.id]
  subnet_id              = aws_subnet.public_subnet_1a.id
  associate_public_ip_address = true

  tags = {
    Name        = "bastion_host"
    Terraform   = "true"
    Environment = var.env_name
    team        = var.team_name
  }
}

# instance 1.............appserver in AZ private 1a
resource "aws_instance" "appserver_1a_0" {

  ami                    = "ami-0a606d8395a538502"
  instance_type          = "t2.micro"
  key_name               = var.keypair_name
  monitoring             = true
  security_groups        = [aws_security_group.app_server_sg.id]
  subnet_id              = aws_subnet.private_subnet_1a_0.id

  user_data     = <<EOF

    #!/bin/bash
    yum update -y
    yum install -y httpd.x86_64
    systemctl start httpd.service
    systemctl enable httpd.service
    echo “Hello World from $(hostname -f)” > /var/www/html/index.html

  EOF 

  tags = {
    Name        = "appserver_1a_0"
    Terraform   = "true"
    Environment = var.env_name
    team        = var.team_name
  }
}

# instance 2.............appserver in AZ private 1a
resource "aws_instance" "appserver_1a_1" {

  ami                    = "ami-0a606d8395a538502"
  instance_type          = "t2.micro"
  key_name               = var.keypair_name
  monitoring             = true
  security_groups        = [aws_security_group.app_server_sg.id]
  subnet_id              = aws_subnet.private_subnet_1a_1.id

  user_data     = <<EOF

    #!/bin/bash
    yum update -y
    yum install -y httpd.x86_64
    systemctl start httpd.service
    systemctl enable httpd.service
    echo “Hello World from $(hostname -f)” > /var/www/html/index.html

  EOF 

  tags = {
    Name        = "appserver_1a_1"
    Terraform   = "true"
    Environment = var.env_name
    team        = var.team_name
  }
}

# instance 3.............appserver in AZ private 1b
resource "aws_instance" "appserver_1b_0" {

  ami                    = "ami-0a606d8395a538502"
  instance_type          = "t2.micro"
  key_name               = var.keypair_name
  monitoring             = true
  security_groups        = [aws_security_group.app_server_sg.id]
  subnet_id              = aws_subnet.private_subnet_1b_0.id

  user_data     = <<EOF

    #!/bin/bash
    yum update -y
    yum install -y httpd.x86_64
    systemctl start httpd.service
    systemctl enable httpd.service
    echo “Hello World from $(hostname -f)” > /var/www/html/index.html

  EOF 

  tags = {
    Name        = "appserver_1b_0"
    Terraform   = "true"
    Environment = var.env_name
    team        = var.team_name
  }
}

# instance 4.............appserver in AZ private 1b
resource "aws_instance" "appserver_1b_1" {

  ami                    = "ami-0a606d8395a538502"
  instance_type          = "t2.micro"
  key_name               = var.keypair_name
  monitoring             = true
  security_groups        = [aws_security_group.app_server_sg.id]
  subnet_id              = aws_subnet.private_subnet_1b_1.id

  user_data     = <<EOF

    #!/bin/bash
    yum update -y
    yum install -y httpd.x86_64
    systemctl start httpd.service
    systemctl enable httpd.service
    echo “Hello World from $(hostname -f)” > /var/www/html/index.html

  EOF 

  tags = {
    Name        = "appserver_1b_1"
    Terraform   = "true"
    Environment = var.env_name
    team        = var.team_name
  }
}
