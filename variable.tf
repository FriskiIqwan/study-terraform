variable "lb_name" {
  type        = string
  description = "ini variable lb name"
}

variable "lb_spec" {
  type = string
}

variable "lb_tag" {
  type = list
}

variable "default_image" {
  type    = string
  default = "debian-cloud/debian-11"
}
