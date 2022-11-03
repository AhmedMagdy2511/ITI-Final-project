resource "google_service_account" "manage-sa" {
  account_id   = "manage-sa"
  display_name = "manage Service Account"
}

resource "google_project_iam_binding" "manage-sa-binding" {
  project = "ahmed-magdy-366217"
  role    = "roles/storage.admin"
  members = ["serviceAccount:${google_service_account.manage-sa.email}"]

}

resource "google_project_iam_binding" "manage-sa-bindig-2" {
  project = "ahmed-magdy-366217"
  role    = "roles/container.admin"
  members = ["serviceAccount:${google_service_account.manage-sa.email}"]
}