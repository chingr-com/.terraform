terraform {
  backend "gcs" {
    bucket  = "chingor-test"
    prefix  = "terraform/state"
  }
}