provider "anypoint" {
 
  client_id = var.client_id             # optionally use ANYPOINT_CLIENT_ID env var
  client_secret = var.client_secret     # optionally use ANYPOINT_CLIENT_SECRET env var

}

resource "anypoint_team" "test_team" {
  org_id = var.root_org
  id     = "TEAM_ID"
}