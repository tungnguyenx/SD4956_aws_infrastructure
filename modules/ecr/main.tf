resource "aws_ecr_repository" "name" {
  for_each = toset(var.ecr_name)
  name = each.key
  encryption_configuration {
    encryption_type = var.encrypt_type
  }
  image_scanning_configuration {
    scan_on_push = false
  }
  tags = var.tags
}
