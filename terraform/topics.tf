provider "google" {
    project = "solar-spot-441118-v2"
}
resource "google_pubsub_topic" "topic-euwest3-1" {
  name = "topic-euwest3-1"
  message_storage_policy {
    allowed_persistence_regions = [
      "europe-west3",
    ]
  }

  message_retention_duration = "86600s"
}

resource "google_pubsub_topic" "topic-euwest2-1" {
  name = "topic-euwest2-1"
  message_storage_policy {
    allowed_persistence_regions = [
      "europe-west2",
    ]
  }

  message_retention_duration = "86600s"
}

resource "google_pubsub_topic" "topic-unrestricted-1" {
  name = "topic-unrestricted-1"

  message_retention_duration = "86600s"
}