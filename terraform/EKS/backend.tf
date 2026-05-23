terraform {
  backend "s3" {
    bucket       = "sleepfood-terraform-state"
    key          = "eks/terraform.tfstate"
    encrypt      = true
    use_lockfile = true
    # dynamo key LockID
    # Params tekan from -backend-config when terraform init
    region = "eu-central-1"
    #profile = 
  }
}


