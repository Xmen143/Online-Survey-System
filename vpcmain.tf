############################## VPC #######################

resource "aws_vpc" "main" {

    count = var.create_vpc == false ? 0 : 1
    cidr_block   = try(var.vpc_cidr, null)
    instance_tenancy   = try(var.instance_tenancy, null)
    ipv4_ipam_pool_id   = try(var.ipv4_ipam_pool_id, null)
    ipv4_netmask_length = try(var.pv4_netmask_length, null)
    ipv6_cidr_block   = try(var.ipv6_cidr_block, null)
    ipv6_ipam_pool_id   = try(var.ipv6_ipam_pool_id, null)
    ipv6_netmask_length   = try(var.ipv6_netmask_length, null)
    ipv6_cidr_block_network_border_group   = try(var.ipv6_cidr_block_network_border_group, null)
    enable_dns_support   = try(var.enable_dns_support, null)
    enable_dns_hostnames   = try(var.enable_dns_hostnames, null)
    #enable_classiclink   = try(var.enable_classiclink, null)
    #enable_classiclink_dns_support   = try(var.enable_classiclink_dns_support, null)
    assign_generated_ipv6_cidr_block   = try(var.assign_generated_ipv6_cidr_block, null)
    tags = try(var.vpc_tags, null)
}

#Variables

################ VPC ######################

variable "create_vpc" {
  type    = bool
  default = false
}

variable "enable_igw" {
  default = false
}
variable "vpc_cidr" {
  type    = any
  default = ""
}
variable "instance_tenancy" {
  type    = any
  default = null
}
variable "ipv4_ipam_pool_id" {
  type    = any
  default = null
}
variable "pv4_netmask_length" {
  type    = any
  default = null
}
variable "ipv6_cidr_block" {
  type    = any
  default = null
}
variable "ipv6_ipam_pool_id" {
  type    = any
  default = null
}
variable "ipv6_netmask_length" {
  type    = any
  default = null
}
variable "ipv6_cidr_block_network_border_group" {
  type    = any
  default = null
}
variable "enable_dns_support" {
  type    = any
  default = false
}
variable "enable_dns_hostnames" {
  type    = any
  default = false
}
variable "enable_classiclink" {
  type    = any
  default = false
}
variable "enable_classiclink_dns_support" {
  type    = any
  default = false
}
variable "assign_generated_ipv6_cidr_block" {
  type    = any
  default = false
}

variable "vpc_tags" {
  type    = any
  default     = {}
}

provider "aws" {
}