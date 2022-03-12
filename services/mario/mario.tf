module "burrito" {
  source = "git::git@github.com:jperez3/terraform-bootstrap.git//?ref=main"

  env     = "prod"
  service = "burrito"
}

output "ssh_clone_url" {
    value = module.burrito.ssh_clone_url
}

output "gha_url" {
    value = module.burrito.gha_url
}
