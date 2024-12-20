variable "github_organization" {
  description = "The name of organization to manage"
  default     = "chingr-com"
}

variable "app_id" {
  description = "GitHub App ID used for credentials"
  type        = number
  default     = 1091578
}

variable "app_installation_id" {
  description = "GitHub App Installation ID used for credentials"
  type        = number
  default     = 58573233
}

variable "app_pem_file" {
  description = "Private Key of GitHub App used for credentials"
  default     = ""
}

variable "google_admin_user_id" {
  description = "GitHub User ID of OSPO org admin user"
  type        = number
  default     = 32483 # chingor13
}

variable "token" {
  description = "GitHub token"
  default     = ""
}
