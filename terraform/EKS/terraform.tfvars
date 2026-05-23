# AWS account config
region = "eu-central-1"

# General for all infrastructure
# This is the name prefix for all infra components
name = "danit"


vpc_id      = "vpc-043c237504133227c"
subnets_ids = ["subnet-080fb1a9cabfa0e19", "subnet-0901f561b589e44f6", "subnet-0cb69760b729ead19"]


tags = {
  Environment = "test"
  TfControl   = "true"
}


zone_name = "sleepfood.pp.ua"
