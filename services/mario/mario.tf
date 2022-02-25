module "mario" {
#   source = "git::git@github.com:jperez3/terraform-bootstrap.git//service?ref=main"
  source = "/Users/joe/git/jperez3/terraform-bootstrap/service"

  service = "mario"
}

output "ssh_clone_url" {
    value = module.mario.ssh_clone_url
}

output "gha_url" {
    value = module.mario.gha_url
}
