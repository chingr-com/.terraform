resource "github_repository" "testing" {
  name        = "testing-repository"
  description = "Repository created via terraform"

  visibility = "public"

  has_issues      = true
  has_discussions = false
  has_projects    = false
  has_wiki        = false

  allow_merge_commit          = false
  allow_squash_merge          = true
  allow_rebase_merge          = false
  allow_auto_merge            = true
  squash_merge_commit_title   = "PR_TITLE"
  squash_merge_commit_message = "PR_BODY"
  delete_branch_on_merge      = true
  allow_update_branch         = true
  auto_init                   = true
}

resource "github_branch" "testing_main" {
  repository = github_repository.testing.name
  branch     = "main"
}

resource "github_branch_default" "testing_main" {
  repository = github_repository.testing.name
  branch     = github_branch.testing_main.branch
}
