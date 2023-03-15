variable "location" {
  type    = string
}

variable "postfix" {
  type    = string
}

variable "prefix" {
  type    = string
}

variable "resource_group_name" {
  type    = string
}

variable "address_space" {
    type    =   list
    default =   ["10.0.0.0/24"]
}

variable "tags" {
    type    =   map
    default = {
      env = "dev"
    }
}
