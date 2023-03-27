provider "google" {
  project = "winged-plate-378113"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_storage_bucket_access_control" "public_rule" {
  bucket = google_storage_bucket.jch-dareit-bucket.name
  role   = "READER"
  entity = "allUsers"
}

resource "google_storage_bucket" "jch-dareit-bucket" {
  name     = "jch-dareit-bucket"
  location = "US"
}

resource "google_compute_instance" "jch-vm" {
  name         = "jch-vm-tf"
  machine_type = "e2-medium"
  zone         = "us-central1-a"

  tags = ["dareit"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        managed_by_terraform = "true"
      }
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }
}

resource "google_sql_database" "database" {
  name     = "dareit"
  instance = google_sql_database_instance.instance.name
}

resource "google_sql_database_instance" "instance" {
  name             = "dareit-instance"
  region           = "us-central1"
  database_version = "POSTGRES_14"
  settings {
    tier = "db-f1-micro"
  }

  deletion_protection  = "true"
}

resource "google_sql_user" "users" {
  name     = "dareit_user"
  instance = google_sql_database_instance.instance.name
  password = "manualpassword123"
}
