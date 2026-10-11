variable "rtce_topics" {
  description = <<EOT
Map of rtce_topics, attributes below
Required:
    - cloud
    - description
    - region
    - topic_name
    - environment (block):
        - id (required)
    - kafka_cluster (block):
        - id (required)
Optional:
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    cloud       = string
    description = string
    region      = string
    topic_name  = string
    environment = object({
      id = string
    })
    kafka_cluster = object({
      id = string
    })
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

