variable "ecr_name" {
    description = "The name of the ECR Registry"
    type = any
    default = null
}

variable "encrypt_type" {
    description = "Provide type of encryption here"
    type = string
    default = "AES256"
}

variable "tags" {
    description = "The key-value maps for tagging"
    type = map(string)
    default = {}
}
