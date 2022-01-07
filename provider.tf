terraform {
  required_version = ">= 0.13.5" 
  required_providers {
    oci = {
      version = ">= 4.0.0" 
    }
  }
}

# Default Provider
provider "oci" {
  region       = var.region
  tenancy_ocid = var.tenancy_ocid
  
  ### FOR ORM USAGE, COMMENT THE TERRAFORM CLI AND OCI CLOUD SHELL SECTIONS
  
  ### BEGIN UNCOMMENT FOR TERRAFORM CLI (running locally)
  user_ocid = var.user_ocid
  fingerprint = var.api_fingerprint
  private_key_path = var.api_private_key_path
  ### END UNCOMMENT FOR TERRAFORM CLI (running locally)
  
  ### BEGIN UNCOMMENT FOR OCI CLOUD SHELL
  # auth = "InstancePrincipal"
  ### END UNCOMMENT FOR OCI CLOUD SHELL
}

