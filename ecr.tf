module "ecr-repo" {
  source   = "./modules/ecr"
  ecr_name = var.ecr_name
  tags     = var.tags
}
