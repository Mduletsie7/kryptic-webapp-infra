variable "env" {
  type        = string
  description = "The environment name (e.g., dev, prod)"
}

variable "tags" {
  type = map(string)
  default = {
    "Project"     = "Terraform-CICD-Demo"
    "Environment" = "Dev"
    "Owner"       = "Mdumisi Kelvin Letsie"
  }
  description = "Common tags to apply to all resources"
}