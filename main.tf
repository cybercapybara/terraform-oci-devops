resource "oci_devops_project" "this" {
  compartment_id = var.compartment_id
  name           = var.name
  description    = var.description

  notification_config {
    topic_id = var.notification_topic_id
  }

  freeform_tags = var.freeform_tags
  defined_tags  = var.defined_tags
}
