# S3 Backend Module
This module will deploy an S3 remote backend for Terraform

## how to test this module
create a file `s3backend.tf`
add this code:
```hcl-terraform
# you can change the region if you want
provider "aws" {
  region = "us-west-2"
}

module "s3backend" {
  source = "git@github.com:MacFlurry/terraform-aws-s3backend.git"
}

output "s3backend_config" {
  value = module.s3backend.config
}
```
Credit: all this code provided by  `Scott Winkler`. I used it for personal training.
visit his [github](https://github.com/scottwinkler) 