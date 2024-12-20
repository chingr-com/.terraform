resource "github_repository" "terraform" {
  name        = ".terraform"
  description = "Repository created via terraform"

  visibility = "internal"

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

resource "github_branch" "terraform_main" {
  repository = github_repository.terraform.name
  branch     = "main"
}

resource "github_branch_default" "terraform_main" {
  repository = github_repository.terraform.name
  branch     = github_branch.terraform_main.branch
}