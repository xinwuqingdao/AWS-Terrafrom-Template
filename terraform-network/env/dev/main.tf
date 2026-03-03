module "network" {
  source = "../../modules/vpc"

  name                = "dev-network"
  vpc_cidr            = "10.0.0.0/16"
  azs                 = ["us-east-1a", "us-east-1b"]
  public_subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnet_cidrs = ["10.0.11.0/24", "10.0.12.0/24"]

  ssh_cidr  = "98.214.33.10/32"
  key_name  = "asg-lab-keys"

  create_ec2         = true
  create_nat_gateway = true
}

output "ec2_public_ip" {
  value = module.network.ec2_public_ip
}