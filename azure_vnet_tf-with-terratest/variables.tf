variable "location" {
  type    = string
}

/* variable "postfix" {
  type    = string
}

variable "prefix" {
  type    = string
} */

variable "resource_group_name" {
  type    = string
}

variable "resource_name" {
  type    = string
}

variable "address_space" {
  type  = list
}

variable "tags" {
  type  = map
}