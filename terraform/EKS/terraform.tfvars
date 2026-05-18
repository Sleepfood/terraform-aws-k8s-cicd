# AWS account config
region = "eu-central-1"

# General for all infrastructure
# This is the name prefix for all infra components
name = "danit"


vpc_id = "vpc-0bb5f828fddfbf9e7"
subnets_ids = ["subnet-025cd4585ef90536e", "subnet-04942409f4d92aa7e", "subnet-0c9c5d9a519bd2253"]


tags = {
  Environment = "test"
  TfControl   = "true"
}


zone_name = "devops8.test-danit.com"
