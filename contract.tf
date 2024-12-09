terraform {
  required_providers {
    anypoint = {
      source = "mulesoft-anypoint/anypoint"
      version = "1.7.0"
    }
  }
}

provider "anypoint" {
 
  client_id = "27058ce4cbc14981b1a40017074f96ad"           # optionally use ANYPOINT_CLIENT_ID env var
  client_secret = "d55E420552344DAd89A16243983371EC"     # optionally use ANYPOINT_CLIENT_SECRET env var

}

resource "anypoint_team" "test_team" {
  org_id = var.root_org
  id     = "TEAM_ID"
}