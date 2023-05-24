# Terraform output values allow you to export structured data about your resources.
# You can use this data to configure other parts of your infrastrucutre with automation tools, or as a data source for another Terraform workspace or child module.

output "ecr_repo_name" {
    value = aws_ecr_repository.image_gallery.name
}

