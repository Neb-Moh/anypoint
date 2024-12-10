terraform {
  required_providers {
    anypoint = {
      source = "mulesoft-anypoint/anypoint"
      version = "1.7.0"
    }
  }
}

provider "anypoint" {

  username = var.username
  password = var.password
 
}

resource "anypoint_env" "env" {
  # org_id = "9372156a-34ee-468c-ad7e-84f2f66f389b"    # environment related business group
  name = "PROD"                  # environment name
  type = "production"              # environment type : sandbox/production
}

