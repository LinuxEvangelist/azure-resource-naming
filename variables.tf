variable "name_prefix" {
  description = "Arbitrary string to prefix the output value with. Adding trailing dash/hypen will not give any effect, it will be added by the module automatically."
  type        = string
}

variable "resource_type" {
  description = "Azure Resource type that the name will be generated by this module."
  type        = string
}

variable "keepers" {
  description = "Arbitrary map of values that, when changed, will trigger a new id to be generated."
  type        = map(any)
  default     = {}
}
