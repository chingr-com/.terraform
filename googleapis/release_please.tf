resource "github_app_installation_repositories" "release_please" {
  # The installation id of the app (in the organization).
  installation_id        = "53590190"
  selected_repositories  = [
    "esphome-templates",
  ]
}