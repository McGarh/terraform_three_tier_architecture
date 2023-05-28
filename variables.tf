variable "region" {
  type    = string
  default = "us-east-1"
}

variable "VPC_cidr_block" {
  type    = string
  default = "10.0.0.0/16"
}

variable "VPC_Name" {
  type    = string
  default = "Demo VPC"
}

variable "Web1_cidr_block" {
  type    = string
  default = "10.0.1.0/24"
}

variable "Web1_availability_zone" {
  type    = string
  default = "us-east-1a"
}

variable "Web1_Name" {
  type    = string
  default = "Web-1a"
}

variable "Web2_cidr_block" {
  type    = string
  default = "10.0.2.0/24"
}

variable "Web2_availability_zone" {
  type    = string
  default = "us-east-1b"
}

variable "Web2_Name" {
  type    = string
  default = "Web-2b"
}

variable "App_public1_cidr_block" {
  type    = string
  default = "10.0.11.0/24"
}

variable "App_public1_availability_zone" {
  type    = string
  default = "us-east-1a"
}

variable "App_public1_Name" {
  type    = string
  default = "Application-1a"
}

variable "App_public2_cidr_block" {
  type    = string
  default = "10.0.12.0/24"
}

variable "App_public2_availability_zone" {
  type    = string
  default = "us-east-1b"
}

variable "App_public2_Name" {
  type    = string
  default = "Application-2b"
}

variable "Database_private1_cidr_block" {
  type    = string
  default = "10.0.21.0/24"
}

variable "Database_private1_availability_zone" {
  type    = string
  default = "us-east-1a"
}

variable "Database_private1_Name" {
  type    = string
  default = "Database-1a"
}

variable "Database_private2_cidr_block" {
  type    = string
  default = "10.0.22.0/24"
}

variable "Database_private2_availability_zone" {
  type    = string
  default = "us-east-1b"
}

variable "Database_private2_Name" {
  type    = string
  default = "Database-2b"
}

variable "Database_private3_cidr_block" {
  type    = string
  default = "10.0.23.0/24"
}

variable "Database_private3_availability_zone" {
  type    = string
  default = "us-east-1c"
}

variable "Database_private3_Name" {
  type    = string
  default = "Database-3c"
}

variable "Database_cidr_block" {
  type    = string
  default = "10.0.3.0/24"
}

variable "Database_availability_zone" {
  type    = string
  default = "us-east-1a"
}

variable "Database_Name" {
  type    = string
  default = "Database"
}

variable "IGW_Name" {
  type    = string
  default = "Demo IGW"
}

variable "WebRT_cidr_block" {
  type    = string
  default = "0.0.0.0/0"
}

variable "WebRT_Name" {
  type    = string
  default = "WebRT"
}

variable "Webserver1_ami" {
  type    = string
  default = "ami-0d5eff06f840b45e9"
}

variable "Webserver1_instance_type" {
  type    = string
  default = "t2.micro"
}

variable "Webserver1_availability_zone" {
  type    = string
  default = "us-east-1a"
}

variable "Webserver1_user_data" {
  type    = string
  default = "install_apache.sh"
}

variable "Webserver1_Name" {
  type    = string
  default = "web server 1"
}

variable "Webserver2_ami" {
  type    = string
  default = "ami-0d5eff06f840b45e9"
}

variable "Webserver2_instance_type" {
  type    = string
  default = "t2.micro"
}

variable "Webserver2_availability_zone" {
  type    = string
  default = "us-east-1b"
}

variable "Webserver2_user_data" {
  type    = string
  default = "install_apache.sh"
}

variable "Webserver2_Name" {
  type    = string
  default = "web server 2"
}

variable "Web_SG_name" {
  type    = string
  default = "Web-SG"
}

variable "Web_SG_Description" {
  type    = string
  default = "Allow HTTP inbound traffic"
}

variable "Web_SG_ing_Description" {
  type    = string
  default = "HTTP from VPC"
}

variable "Web_SG_ing_Protocol" {
  type    = string
  default = "tcp"
}

variable "Web_SG_ing_cidr_blocks" {
  type    = string
  default = "0.0.0.0/0"
}

variable "Web_SG_eg_Protocol" {
  type    = string
  default = "-1"
}

variable "Web_SG_eg_cidr_blocks" {
  type    = string
  default = "0.0.0.0/0"
}

variable "Web_SG_eg_Name" {
  type    = string
  default = "Web-SG"
}

variable "App_SG_name" {
  type    = string
  default = "Webserver-SG"
}

variable "App_SG_Description" {
  type    = string
  default = "Allow inbound traffic from ALB"
}

variable "App_SG_ing_Description" {
  type    = string
  default = "Allow traffic from web layer"
}

variable "App_SG_ing_Protocol" {
  type    = string
  default = "tcp"
}

variable "App_SG_eg_Protocol" {
  type    = string
  default = "-1"
}

variable "App_SG_eg_cidr_blocks" {
  type    = string
  default = "0.0.0.0/0"
}

variable "App_SG_tag_Name" {
  type    = string
  default = "Webserver-SG"
}

variable "DB_SG_name" {
  type    = string
  default = "Database-SG"
}

variable "DB_SG_Description" {
  type    = string
  default = "Allow inbound traffic from application layer"
}

variable "DB_SG_ing_Description" {
  type    = string
  default = "Allow traffic from application layer"
}

variable "DB_SG_ing_Protocol" {
  type    = string
  default = "tcp"
}

variable "DB_SG_eg_Protocol" {
  type    = string
  default = "tcp"
}

variable "DB_SG_eg_cidr_blocks" {
  type    = string
  default = "0.0.0.0/0"
}

variable "DB_SG_tag_Name" {
  type    = string
  default = "Database-SG"
}

variable "External_LB_name" {
  type    = string
  default = "External-LB"
}

variable "External_LB_type" {
  type    = string
  default = "application"
}

variable "ALB_TG_name" {
  type    = string
  default = "ALB-TG"
}

variable "ALB_TG_Protocol" {
  type    = string
  default = "HTTP"
}

variable "LB_Listener_Port" {
  type    = string
  default = "80"
}

variable "LB_Listener_Protocol" {
  type    = string
  default = "HTTP"
}

variable "LB_Listener_Def_Type" {
  type    = string
  default = "forward"
}

variable "DB_Instance_Default_Engine" {
  type    = string
  default = "mysql"
}

variable "DB_Instance_Default_Engine_Version" {
  type    = string
  default = "8.0"
}

variable "DB_Instance_Default_instance_class" {
  type    = string
  default = "db.t2.micro"
}

variable "DB_Instance_Default_name" {
  type    = string
  default = "mydb"
}

variable "DB_Instance_Default_username" {
  type    = string
  default = "username"
}

variable "DB_Instance_Default_password" {
  type    = string
  default = "password"
}

variable "DB_Sub_Default_name" {
  type    = string
  default = "main"
}

variable "DB_Sub_Default_tagname" {
  type    = string
  default = "My DB subnet group"
}
