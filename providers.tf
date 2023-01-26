provider "aws" {
  shared_config_files = ["$HOME/.aws/config"]
  shared_credentials_files = ["$HOME/.aws/credentials"]
  profile = "default"
  default_tags {
    tags = {
        Service = "ec2"
        Repo = "https://github.com/felipelimaa/terraform-ec2"
    }
  }
}