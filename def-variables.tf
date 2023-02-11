# Region variable

variable "region_name" {
  type    = string
  default = "us-east-1"

}

# vpc vars

variable "vpc_name" {
  type    = string
  default = "vpc_dev"

}

variable "vpc_cidr_block" {
  type    = string
  default = "10.0.0.0/16"

}

variable "vpc_azs" {
  type    = list(any)
  default = ["us-east-1a", "us-east-1b"]

}

variable "vpc_private_subnets" {
  type    = list(any)
  default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24", "10.0.4.0/24"]

}

variable "vpc_public_subnets" {
  type    = list(any)
  default = ["10.0.101.0/24", "10.0.102.0/24"]

}

variable "env_name" {
  type    = string
  default = "dev"

}

variable "team_name" {
  type    = string
  default = "config"

}

variable "route" {
  type    = list(any)
  default = ["0.0.0.0/0"]

}

variable "keypair_name" {
  type    = string
  default = "utc_key"
}

