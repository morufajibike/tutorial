## Overview

This is a sample repository for getting started with terraform.

### Prerequisites
To use this demo terraform project, you will need the following:
- Download and install the [Terraform binary](https://www.terraform.io/downloads) for your operating system.
- Download and install the [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html).
- An [AWS account](https://aws.amazon.com/free) and [associated credentials](https://docs.aws.amazon.com/general/latest/gr/aws-sec-cred-types.html) with permissions to create resources.

### AWS Credentials
To use your IAM credentials to authenticate the Terraform AWS provider, you can either export your access keys as environment variables or configure and use a named AWS profile.
- To export your access keys as environment variables:
     ```
     export AWS_ACCESS_KEY_ID="<YOUR_AWS_ACCESS_KEY_ID"
     export AWS_SECRET_ACCESS_KEY="<AWS_SECRET_ACCESS_KEY"
     export AWS_DEFAULT_REGION="<AWS_DEFAULT_REGION"
     ```
- To use a named profile, export the profile name as an evironment variable. If no named profile is specified, the `default` profile is used.
`export AWS_PROFILE=<profile-name>`

### Build Demo Infrastructure
- Initialize the terraform configuration with `terraform init`.

- Format and validate the configuration with the following commands:
```
terraform fmt - formats terraform code and automatically updates configurations for readability and consistency.

terraform validate - checks terraform code is syntactically valid and internally consistent.
```

- Execute a dry-run/preview of your terraform code to see what changes will be eventually applied with `terraform plan`.

- Apply the terraform configuration with `terraform apply`. Respond to the confirmation prompt with a `yes`.

### Update Infrastructure
Update the sample bucket tags in `main.tf` and run the following commands as before to apply your changes:
```
terraform plan
terraform apply
```

### Clean up Demo Infrastructure
Make sure to to clean up the resources you created with the `terraform destroy`. This is to ensure you are not billed for unused resources by AWS. When prompted, remember to confirm with a `yes`.

