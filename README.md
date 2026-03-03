# AWS-Terrafrom-Template

terraform-network/
  bootstrap/
    main.tf           # creates S3 backend bucket + DynamoDB lock table (run once)
  envs/
    dev/
      main.tf         # uses the module + config
      providers.tf
      backend.tf      # points Terraform to S3 backend
      variables.tf
      outputs.tf
  modules/
    vpc/
      main.tf
      variables.tf
      outputs.tf


Step 1: — Create backend resources (bootstrap once)
cd bootstrap
terraform init
terraform apply

Step2: — Point your env to S3 backend
cd envs/dev
terraform init -migrate-state
(Your state is now in S3, safe to collaborate.)

Step 3 --Convert into a reusable Terraform module modules/vpc
then 
cd envs/dev
terraform init
terraform plan
terraform apply
