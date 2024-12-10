resource "anypoint_env" "dev_env" {
#   org_id = anypoint_bg.bg.id    # environment related business group
  org_id = var.root_org
  name = "DEV"                  # environment name
  type = "sandbox"              # environment type : sandbox/production
}

resource "anypoint_env" "PROD" {
#   org_id = anypoint_bg.bg.id    # environment related business group
  org_id = var.root_org
  name = "Prod"                  # environment name
  type = "production"              # environment type : sandbox/production
}


resource "anypoint_env" "stg_env" {
#   org_id = anypoint_bg.bg.id    # environment related business group
  org_id = var.root_org
  name = "stg"                  # environment name
  type = "sandbox"              # environment type : sandbox/production
}

