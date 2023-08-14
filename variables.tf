variable "ecr_name" {
  description = "The list of ecr names to create"
  type        = list(string)
  default     = null
}

variable "tags" {
  description = "The key-value maps for tagging"
  type        = map(string)
  default     = {}
}

variable "encrypt_type" {
  description = "Provide type of encryption here"
  type        = string
  default     = "AES256"
}

variable "subnet_ids" {
  description = "Subnet Ids"
  type        = list(string)
  default     = null
}

variable "subnet_id_1" {
  type    = string
  default = "subnet-your_first_subnet_id"
}

variable "subnet_id_2" {
  type    = string
  default = "subnet-your_second_subnet_id"
}
