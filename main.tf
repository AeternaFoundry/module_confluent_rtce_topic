resource "confluent_rtce_topic" "rtce_topics" {
  for_each = var.rtce_topics

  cloud       = each.value.cloud
  description = each.value.description
  region      = each.value.region
  topic_name  = each.value.topic_name

  environment {
    id = each.value.environment.id
  }

  kafka_cluster {
    id = each.value.kafka_cluster.id
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}

