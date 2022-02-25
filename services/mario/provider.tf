terraform {
  backend "remote" {
    organization = "ordisius"

    workspaces {
      name = "project-bootstrap-service-mario"
    }
  }
}


terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.2.0"
    }
    github = {
      source  = "integrations/github"
      version = "~> 4.20.0"
    }
  }
}


provider "github" {
  token = var.github_token
}

provider "aws" {
  region = "us-east-1"
}
