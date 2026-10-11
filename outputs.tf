output "rtce_topics_id" {
  description = "Map of id values across all rtce_topics, keyed the same as var.rtce_topics except keys with no id are omitted"
  value       = { for k, v in confluent_rtce_topic.rtce_topics : k => v.id if v.id != null && length(v.id) > 0 }
}
output "rtce_topics_api_version" {
  description = "Map of api_version values across all rtce_topics, keyed the same as var.rtce_topics except keys with no api_version are omitted"
  value       = { for k, v in confluent_rtce_topic.rtce_topics : k => v.api_version if v.api_version != null && length(v.api_version) > 0 }
}
output "rtce_topics_cloud" {
  description = "Map of cloud values across all rtce_topics, keyed the same as var.rtce_topics except keys with no cloud are omitted"
  value       = { for k, v in confluent_rtce_topic.rtce_topics : k => v.cloud if v.cloud != null && length(v.cloud) > 0 }
}
output "rtce_topics_description" {
  description = "Map of description values across all rtce_topics, keyed the same as var.rtce_topics except keys with no description are omitted"
  value       = { for k, v in confluent_rtce_topic.rtce_topics : k => v.description if v.description != null && length(v.description) > 0 }
}
output "rtce_topics_environment" {
  description = "Map of environment values across all rtce_topics, keyed the same as var.rtce_topics except keys with no environment are omitted"
  value       = { for k, v in confluent_rtce_topic.rtce_topics : k => one(v.environment) if v.environment != null && length(v.environment) > 0 }
}
output "rtce_topics_kafka_cluster" {
  description = "Map of kafka_cluster values across all rtce_topics, keyed the same as var.rtce_topics except keys with no kafka_cluster are omitted"
  value       = { for k, v in confluent_rtce_topic.rtce_topics : k => one(v.kafka_cluster) if v.kafka_cluster != null && length(v.kafka_cluster) > 0 }
}
output "rtce_topics_kind" {
  description = "Map of kind values across all rtce_topics, keyed the same as var.rtce_topics except keys with no kind are omitted"
  value       = { for k, v in confluent_rtce_topic.rtce_topics : k => v.kind if v.kind != null && length(v.kind) > 0 }
}
output "rtce_topics_region" {
  description = "Map of region values across all rtce_topics, keyed the same as var.rtce_topics except keys with no region are omitted"
  value       = { for k, v in confluent_rtce_topic.rtce_topics : k => v.region if v.region != null && length(v.region) > 0 }
}
output "rtce_topics_resource_name" {
  description = "Map of resource_name values across all rtce_topics, keyed the same as var.rtce_topics except keys with no resource_name are omitted"
  value       = { for k, v in confluent_rtce_topic.rtce_topics : k => v.resource_name if v.resource_name != null && length(v.resource_name) > 0 }
}
output "rtce_topics_topic_name" {
  description = "Map of topic_name values across all rtce_topics, keyed the same as var.rtce_topics except keys with no topic_name are omitted"
  value       = { for k, v in confluent_rtce_topic.rtce_topics : k => v.topic_name if v.topic_name != null && length(v.topic_name) > 0 }
}

