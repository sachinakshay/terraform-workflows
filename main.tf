module "vpc" {
  source               = "./modules/vpc"
  cidr_block           = "172.31.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = "CustomVPC"
  }
}

module "s3" {
  source      = "./modules/s3"
  bucket_name = "unique-bucket-name-123" # Replace with your bucket name
  acl         = "private"
  tags        = {
    Environment = "Production"
  }
}

module "ec2" {
  source         = "./modules/ec2"
  ami_id         = "ami-04dd23e62ed049936"
  instance_type  = "t2.micro"
  subnet_id      = module.vpc.public_subnet_id
  key_name       = "autoscaling"
  tags           = {
    Name = "MyCustomEC2Instance"
  }
}

