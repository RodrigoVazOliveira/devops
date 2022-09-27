terraform {
  cloud {
    organization = "my-environment-rodrigo"
    hostname = "app.terraform.io" # Optional; defaults to app.terraform.io

    workspaces {
      tags = ["aws-rodrigovazdeveloper"]
    }
  }
}
