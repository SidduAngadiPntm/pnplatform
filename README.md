# PN Platform - Terraform Infrastructure

## Setup & Initial Configuration

### 1. Prerequisites
- Terraform 1.0 or higher
- AWS CLI configured with credentials
- AWS account access

### 2. Create Your Configuration File

Each developer must create their own `terraform.tfvars` file:

```bash
cp terraform.tfvars.example terraform.tfvars
```

Edit the file with your values:
```bash
nano terraform.tfvars
```

Example values:
```terraform
aws_region      = "eu-north-1"  # Your preferred AWS region
environment     = "dev"          # dev, staging, or prod
resource_prefix = "ashutosh"     # Your name or identifier
```

## Running Terraform

### Validate Configuration
```bash
terraform validate
```
Checks for syntax errors without executing anything.

### Check What Will Be Created
```bash
terraform plan -var-file=terraform.tfvars
```
Reviews the changes that will be made (always do this first!).

### Apply the Configuration
```bash
terraform apply -var-file=terraform.tfvars
```
Creates all AWS resources. Type `yes` when prompted to confirm.

### View Outputs
```bash
terraform output
```
Shows VPC IDs, subnet IDs, and other important values.

### Destroy Resources
```bash
terraform destroy -var-file=terraform.tfvars
```
Deletes all created AWS resources. Type `yes` to confirm.

## Notes for Team Collaboration

- **terraform.tfvars** is in `.gitignore` - never commit your personal config
- Each developer has their own `terraform.tfvars` file
- Use different values for `resource_prefix` to avoid resource naming conflicts
- The `terraform.tfvars.example` file is documentation only

## Passing AWS Credentials
