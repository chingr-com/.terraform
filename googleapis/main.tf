resource "github_organization_ruleset" "disallow_main_push" {
  name        = "Disallow main push"
  target      = "branch"
  enforcement = "active"

  conditions {
    ref_name {
      include = ["~DEFAULT_BRANCH"]
      exclude = []
    }
    repository_name {
      include = ["~ALL"]
      exclude = []
    }
  }

  # Org admins need ability to create initial repositories
  bypass_actors {
    actor_id = 1 # hard-coded value for org admins
    actor_type = "OrganizationAdmin"
    bypass_mode = "always"
  }

  rules {
    creation                = true
    update                  = true
    deletion                = true
    required_linear_history = true
  }
}