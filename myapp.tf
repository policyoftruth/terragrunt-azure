module "rg" {
  for_each = toset(["example1", "example2", "example3"])
  source   = "./modules/myapp"
  name     = "rg-${each.key}"
  location = "East US"
}

