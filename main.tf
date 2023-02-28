module "rg" {
  for_each = toset(["assets", "media"])
  source   = "./modules/rg"
  name     = "${each.key}_group"
  location = "East US"
}
