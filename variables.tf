variable "compartment_id" {
  description = "OCID of the compartment in which to create the DevOps project."
  type        = string
}

variable "name" {
  description = "Name of the DevOps project (unique within the compartment)."
  type        = string
}

variable "description" {
  description = "Description of the DevOps project."
  type        = string
  default     = null
}

variable "notification_topic_id" {
  description = "OCID of the Notifications (ONS) topic the project publishes events to."
  type        = string
}

variable "freeform_tags" {
  description = "Free-form tags applied to the DevOps project."
  type        = map(string)
  default     = {}
}

variable "defined_tags" {
  description = "Defined tags applied to the DevOps project, keyed as \"namespace.key\"."
  type        = map(string)
  default     = {}
}
