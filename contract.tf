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
 
  # client_id = var.client_id          # optionally use ANYPOINT_CLIENT_ID env var
  # client_secret = var.client_secret    # optionally use ANYPOINT_CLIENT_SECRET env var

  # client_id = "ad53e49ba60a45df946b010efa3178df"           # optionally use ANYPOINT_CLIENT_ID env var
  # client_secret = "6ebB3245cA994Dc68F0E9126B5698566"     # optionally use ANYPOINT_CLIENT_SECRET env var

}

resource "anypoint_env" "env" {
  org_id = "9372156a-34ee-468c-ad7e-84f2f66f389b"    # environment related business group
  name = "PROD"                  # environment name
  type = "production"              # environment type : sandbox/production
}

