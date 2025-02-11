terraform {  
  backend "s3" {  
    bucket       = "bucket-for-tf-state"  
    key          = "s3/app1/terraform.tfstate"  
    region       = "us-east-1"  
    encrypt      = true  
    use_lockfile = true  
  }  
}
