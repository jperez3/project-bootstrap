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
    datadog = {
      source = "DataDog/datadog"
      version = "~> 3.8.1"
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

provider "datadog" {
  api_key = var.datadog_api_key
  app_key = var.datadog_app_key
}
provider "aws" {
  region = "us-east-1"
}
