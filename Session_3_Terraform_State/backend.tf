terraform {
  backend "s3" {
    bucket = "jarh-iac-lab-tfstate"
    key    = "eu-west-1/iac-lab/terraform.tfstate"
    region = "eu-west-1"

    dynamodb_table = "jarh-iac-lab-tfstate-locks" 
    encrypt        = true
  }
}
