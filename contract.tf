terraform {
  required_providers {
    anypoint = {
      source = "mulesoft-anypoint/anypoint"
      version = "1.7.0"
    }
  }
}

provider "anypoint" {

  # username = "Neb_SFG"
  # password = "hiraH123"
 
  client_id = "27058ce4cbc14981b1a40017074f96ad"           # optionally use ANYPOINT_CLIENT_ID env var
   client_secret = "d55E420552344DAd89A16243983371EC"     # optionally use ANYPOINT_CLIENT_SECRET env var

}

resource "anypoint_env" "env" {
  org_id = "9372156a-34ee-468c-ad7e-84f2f66f389b"    # environment related business group
  name = "DEV"                  # environment name
  type = "sandbox"              # environment type : sandbox/production
}
