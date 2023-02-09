region_name = "us-east-2"
vpc_name = "utc_vpc"
vpc_cidr_block = "10.10.0.0/16"
vpc_azs = ["us-east-2a", "us-east-2b", "us-east-2c"]
vpc_private_subnets = ["10.10.1.0/24", "10.10.2.0/24", "10.10.3.0/24", 
"10.10.4.0/24", "10.10.5.0/24", "10.10.6.0/24"]
vpc_public_subnets = ["10.10.151.0/24", "10.10.152.0/24", "10.10.153.0/24"]
env_name = "dev"
team_name = "config management"
route = ["0.0.0.0/0"]
keypair_name = "utc_key"
localhost_IP = ["174.173.62.231/32"] # my localhost IP. ctnd.
## ctnd.. the default is to allow all traffic
