module "mario" {
  source = "git::git@github.com:jperez3/terraform-bootstrap.git//service?ref=main"

  service = "mario"
}
