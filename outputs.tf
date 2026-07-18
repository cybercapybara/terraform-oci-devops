output "id" {
  description = "OCID of the DevOps project."
  value       = oci_devops_project.this.id
}

output "name" {
  description = "Name of the DevOps project."
  value       = oci_devops_project.this.name
}

output "namespace" {
  description = "Namespace associated with the DevOps project."
  value       = oci_devops_project.this.namespace
}

output "state" {
  description = "Lifecycle state of the DevOps project."
  value       = oci_devops_project.this.state
}
