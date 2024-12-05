# EC2 Module

This module creates an AWS EC2 instance.

## Inputs

| Name         | Description                       | Type   | Default | Required |
|--------------|-----------------------------------|--------|---------|----------|
| `ami_id`     | AMI ID for the EC2 instance       | string | -       | yes      |
| `instance_type` | EC2 instance type             | string | -       | yes      |
| `subnet_id`  | Subnet ID for the EC2 instance    | string | -       | yes      |
| `key_name`   | SSH key pair name                 | string | -       | yes      |
| `tags`       | Tags for the EC2 instance         | map    | `{}`    | no       |

## Outputs

| Name           | Description                |
|----------------|----------------------------|
| `ec2_public_ip` | Public IP of the instance |

## Example Usage

```hcl
module "ec2" {
  source         = "./modules/ec2"
  ami_id         = "ami-12345678"
  instance_type  = "t2.micro"
  subnet_id      = "subnet-12345678"
  key_name       = "my-key"
  tags           = { Name = "MyEC2Instance" }
}
